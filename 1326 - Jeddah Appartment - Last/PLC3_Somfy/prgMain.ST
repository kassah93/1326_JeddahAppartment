VAR_GLOBAL RETAIN
   curtainsFB    : Array[1..numOfCurtains] of fb_iJalousie;
   packetsBuffer : TSomfyRTSPacketBuff;
   buffIndex     : UINT;
END_VAR

TYPE
   TEnCurtainRT : Struct
     UP   : R_TRIG;
     DW   : R_TRIG;
     STOP : R_TRIG;
   End_Struct;
END_TYPE

PROGRAM prgMain
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
  EnCurtains    : Array[1..numOfCurtains] of TEnCurtain;
  EnCurtains_RT : Array[1..numOfCurtains] of TEnCurtainRT;
  
  i : USINT;
  curIndex : USINT;
  
  Transmitter1_ID ,Transmitter2_ID : TVendorID;
  HostID : TVendorID;
  
  somfyRTSCtrl_Master : fbSomfyRTSCtrl;
  
  // for test
  test, up, dw, stop, block : BOOl;
  up_RT , dw_RT : R_TRIG;
  favPos, setChan, openProg, set_IP : BOOl;
  chNum : USINT;
  transmitter_ID : TVendorID;
  selectTrans : BOOL;
  
  END_VAR
  VAR_TEMP
  END_VAR

  for i := 1 to numOfCurtains do
      if i <= numOfCurtains_PLC1 then
         EnCurtains[i] := PLC1_EnCurtains[i];
      else
         EnCurtains[i] := PLC2_EnCurtains[i - numOfCurtains_PLC1];
      end_if;
      
      EnCurtains_RT[i].UP(CLK := EnCurtains[i].UP);
      EnCurtains_RT[i].DW(CLK := EnCurtains[i].DW);
      EnCurtains_RT[i].STOP(CLK := EnCurtains[i].STOP);
      
      
      // Generate RTS control packets
      
      // need to check each motor which transmitter is belong to
      if EnCurtains_RT[i].UP.Q then
         fbSomfyRTS_Cmnd(ChNum := i, HostID := HostID, TransmitterID := Transmitter1_ID, UP := 1,  packetsBuffer := packetsBuffer, buffIndex := buffIndex);
      end_if;
      
       if EnCurtains_RT[i].DW.Q then
         fbSomfyRTS_Cmnd(ChNum := i, HostID := HostID, TransmitterID := Transmitter1_ID, DW := 1,  packetsBuffer := packetsBuffer, buffIndex := buffIndex);
      end_if;
      
       if EnCurtains_RT[i].STOP.Q then
         fbSomfyRTS_Cmnd(ChNum := i, HostID := HostID, TransmitterID := Transmitter1_ID, stop := 1,  packetsBuffer := packetsBuffer, buffIndex := buffIndex);
      end_if;


      // handle curtains status
      if (EnCurtains_RT[i].UP.Q and curtainsFB[i].outDw) or (EnCurtains_RT[i].DW.Q and curtainsFB[i].outUp) then
         curtainsFB[i].up := 0;
         curtainsFB[i].dw := 0;
         curtainsFB[i](stop := 1, upDwTime := curtUpDwTime) ;
      else
         curtainsFB[i](up := EnCurtains[i].UP, dw := EnCurtains[i].DW, stop := EnCurtains[i].STOP, upDwTime := curtUpDwTime) ;
      end_if;
      
      curtainsStatus[i].outUP   := curtainsFB[i].outUp;
      curtainsStatus[i].outDW   := curtainsFB[i].outDw;
      curtainsStatus[i].pos     := 100 - curtainsFB[i].posit;
      curtainsStatus[i].normPos := curtainsStatus[i].pos / 25;
      
  end_for;
  

  // Programming
  if selectTrans then
     transmitter_ID := Transmitter1_ID;
  else
     transmitter_ID := Transmitter2_ID;
  end_if;
  
  fbSomfyRTS_Cmnd(ChNum := chNum, HostID := HostID, TransmitterID := transmitter_ID, UP := up, DW := dw, favPos := favPos,
                 stop := stop, setChannel := setChan, openProg := openProg, set_IP := set_IP, packetsBuffer := packetsBuffer, buffIndex := buffIndex);
                  


  up := 0; dw := 0; favPos := 0; stop := 0; setChan := 0; openProg := 0; set_IP := 0;

  somfyRTSCtrl_Master(En := true, CH_ID := CH2_UNI, packetsBuffer := packetsBuffer, buffIndex := buffIndex);

 (*
  up_RT(CLK := up);
  dw_RT(CLK := dw);

  if (up_RT.Q and curtainsFB[1].outDw) or (dw_RT.Q and curtainsFB[1].outUp) then
     curtainsFB[1].up := 0;
     curtainsFB[1].dw := 0;
     curtainsFB[1](stop := 1, upDwTime := curtUpDwTime) ;
     test := 1;
  else
     curtainsFB[1](up := up, dw := dw, stop := STOP, upDwTime := curtUpDwTime) ;
     up   := 0;
     dw   := 0;
     stop := 0;
  end_if;  *)

END_PROGRAM

