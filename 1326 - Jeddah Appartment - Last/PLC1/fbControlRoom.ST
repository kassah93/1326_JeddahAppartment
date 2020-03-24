


Type
   TOutDev : struct
     DevAddress : USINT ;
     loopAddress: UINT ;
   End_Struct
End_Type

Type
  TLightsStatus         : Array[1..17] of BOOL ;
  TOutletsStatus        : Array[1..8]  of BOOL;
  TCurtainsUpStatus     : Array[1..6]  of BOOL;
  TCurtainsDwStatus     : Array[1..6]  of BOOL;
  TCurtainsFB           : Array[1..6]  of fb_iJalousie;
  TCurtainPositWm       : Array[1..6]  OF USINT;
  TMotionSensStatus     : Array[1..4]  of BOOL;
  TSwitchStatus         : Array[1..6]  of BOOL;

  TEnLights             : Array[1..17] of BOOL ;
  TEnLightsAN           : Array[1..17] of USINT; // 1:open  2:close 0:None
  //TEnLightsAN1          : USINT;
  TEnOutlets            : Array[1..8]  of BOOL;
  TEnOutletsAN          : Array[1..8]  of USINT; // 1:open  2:close 0:None
  TEnCurtainsUp         : Array[1..6]  of BOOL;
  TEnCurtainsDW         : Array[1..6]  of BOOL;
  
  TlightsOutputDevs     : Array[1..17] of TOutDev;
  ToutletOutputDevs     : Array[1..8]  of TOutDev;
  TcurtainsUpOutputDevs : Array[1..6]  of TOutDev;
  TcurtainsDwOutputDevs : Array[1..6]  of TOutDev;
  TMotionSensOutputDevs : Array[1..4]  of TOutDev;
  TExRelayAdd           : ARRAY[1..2]  OF USINT;

End_Type






FUNCTION_BLOCK fbControlRoom
(*function block that send the command to RCU to control
the lights, curtains, and outlets
*)
  VAR_INPUT
    RCU_ChCode       : UINT;
   // RCU_ethAdrToSet  : TRemoteEthAdr;

   // RCU_IP_toSet     : TIPadr;

    
    numOfLights      : USINT;
    numOfOutlets     : USINT;
    numOfCurtains    : USINT;
    numOfMotionSens  : USINT;
    RCU_PingDone     : BOOL;
    
    lightsOutputDevs      : TlightsOutputDevs;
    outletOutputDevs      : ToutletOutputDevs;
    curtainsUpOutputDevs  : TcurtainsUpOutputDevs;
    curtainsDwOutputDevs  : TcurtainsDwOutputDevs;
    MotionSensOutputDevs  : TMotionSensOutputDevs;

  END_VAR
  VAR_OUTPUT
  //    CurtainPositWm   : TCurtainPositWm;
      
      ExRelay1_LVO : array[1..24] of TDeviceStatus;
      ExRelay2_LVO : array[1..24] of TDeviceStatus;

      SwitchUPStatus  : TSwitchStatus;
      SwitchDWStatus  : TSwitchStatus;
  END_VAR
  VAR_IN_OUT
    RCU_CH_IN     : TBufferIn;
 //   Set_IP           : BOOL;
    
    LightsStatus     : TLightsStatus;
    OutletsStatus    : TOutletsStatus;
  //  CurtainsUpStatus : TCurtainsUpStatus;
  //  CurtainsDwStatus : TCurtainsDwStatus;
  //  CurtainsFB       : TCurtainsFB;
    MotionSenStatus  : TMotionSensStatus;
    
    
    EnLights       : TEnLights     ;
    EnLightsAN     : TEnLightsAN   ;
   // EnLightsAN1  : TEnLightsAN1;
    EnOutlets      : TEnOutlets    ;
    EnOutletsAN    : TEnOutletsAN   ;
  //  EnCurtainsUp   : TEnCurtainsUp ;
  //  EnCurtainsDw   : TEnCurtainsDW ;

    SendIamServer : BOOL;
    GetAllStatus  : BOOL;
    

  END_VAR
  VAR
    RCU           : fbControlHotelSystem_UDP;
    RCU_RQ        : BOOL;
    Server_settings  : TServerPacket := (IP := [192,168,0,16])  ;
    sentPacket       : THotelPacket;
    K : USINT;
    i : UINT;
    cmd_CtrlType     : TCtrlType  ;
    cmd_CtrlContent  : USINT;
    cmd_CtrlType1    : TCtrlType  ;
    cmd_CtrlContent1 : USINT;
    
    TonCurtainsWait : Array[1..5]  of TON ;
    EnCurtainsWait  : Array[1..5]  of BOOL ;
    //TpCurtains      : Array[1..5]  of TPR;
    EnCurtains      : Array[1..5]  of BOOL ;
    //ReCurtainsTp    : Array[1..5]  of BOOL ;
    RTCurtains      : Array[1..5]  of R_TRIG;
    FTCurtains      : Array[1..5]  of F_TRIG;
    Up              : Array[1..5]  of BOOL ;
    Dw              : Array[1..5]  of BOOL ;
    NumOfCmd        : USINT := 1;
    RCU_Connected   : BOOL;

    RCU_Connected_RT : R_TRIG;
    RCU_Connection_TOF : TOF;
    restorStatusDone      : BOOL;
    test                  : USINT;
    PlcEthAdr             : TlocalEthAdr ;
    RCU_ChAdr             : TRemoteEthAdr;
    
    

  END_VAR
  

//  IF Set_IP THEN
//     SetRemoteIPaddress(rq := True , chanCode :=RCU_ChCode , ethAdr :=RCU_ethAdrToSet ) ;
//     Set_IP := 0 ;
//  END_IF;


   for i := 1 to RCU.numOfStatusDevs do

      if RCU.DevicesStatus[i].DevType = 6 and RCU.DevicesStatus[i].DevAddress = 1 then
        ExRelay1_LVO[RCU.DevicesStatus[i].loopAddress] := RCU.DevicesStatus[i];

      elsif RCU.DevicesStatus[i].DevType = 6 and RCU.DevicesStatus[i].DevAddress = 2 then
        ExRelay2_LVO[RCU.DevicesStatus[i].loopAddress] := RCU.DevicesStatus[i];
      end_if;
      
   End_for;
   
   
   
  if GetIPaddress(ethChan := ETH1 , ethAdr := PlcEthAdr) then
     Server_settings.IP := PlcEthAdr.IP ;
  end_if;
  
  if GetRemoteIPaddress(chanCode := RCU_ChCode, ethAdr := RCU_ChAdr) then
     Server_settings.port := RCU_ChAdr.localPort ;
  end_if;
  
  RCU(RQ := RCU_RQ , sendIamServer :=SendIamServer , getAllStatus := GetAllStatus , ChanCode := RCU_ChCode , serverSettings := Server_settings , packet := sentPacket, CH_IN := RCU_CH_IN);
  
  IF RCU.msgSent THEN
    RCU_RQ := 0 ;
    SendIamServer := 0 ;
    GetAllStatus  := 0 ;
    NumOfCmd := 1 ;
    restorStatusDone :=0;
  END_IF;
  

  RCU_Connection_TOF(IN := RCU_PingDone , PT :=T#1s , Q => RCU_Connected );
  RCU_Connected_RT(CLK := RCU_Connected );
  
  IF RCU_Connected_RT.Q THEN
    restorStatusDone :=1;
  END_IF;
  IF IS_COLD_RESTART_PLC OR IS_HOT_RESTART_PLC THEN
     GetAllStatus :=1;
  END_IF;
  IF restorStatusDone THEN
     if numOfLights > 0 then
       FOR K := 1 TO numOfLights DO
          IF LightsStatus[K] THEN
            cmd_CtrlType := open ;
            cmd_CtrlContent := 100 ;
          ELSE
            cmd_CtrlType := close ;
            cmd_CtrlContent := 0 ;
          END_IF;
          sentPacket.Data.DevArr[NumOfCmd].DevType     := EX_Relay ;
          sentPacket.Data.DevArr[NumOfCmd].DevAddress  := lightsOutputDevs[K].DevAddress;
          sentPacket.Data.DevArr[NumOfCmd].loopAddress := lightsOutputDevs[K].loopAddress ;
          sentPacket.Data.DevArr[NumOfCmd].CtrlType    := cmd_CtrlType ;
          sentPacket.Data.DevArr[NumOfCmd].CtrlContent := cmd_CtrlContent ;
          NumOfCmd := NumOfCmd + 1 ;
          test := test + 1 ;
       END_FOR;
     end_if;
     
     if numOfOutlets > 0 then
       FOR K := 1 TO numOfOutlets DO
          IF OutletsStatus[K] THEN
            cmd_CtrlType := open ;
            cmd_CtrlContent := 100 ;
          ELSE
            cmd_CtrlType := close ;
            cmd_CtrlContent := 0 ;
          END_IF;
          sentPacket.Data.DevArr[NumOfCmd].DevType     := EX_Relay ;
          sentPacket.Data.DevArr[NumOfCmd].DevAddress  := outletOutputDevs[K].DevAddress;
          sentPacket.Data.DevArr[NumOfCmd].loopAddress := outletOutputDevs[K].loopAddress ;
          sentPacket.Data.DevArr[NumOfCmd].CtrlType    := cmd_CtrlType ;
          sentPacket.Data.DevArr[NumOfCmd].CtrlContent := cmd_CtrlContent ;
          NumOfCmd := NumOfCmd + 1 ;
       END_FOR;
     end_if;
     sentPacket.Data.NumOfDev := NumOfCmd ;
     RCU_RQ := 1 ;
     restorStatusDone := 0;
    // GetAllStatus := 1;
  ELSE
    FOR i := 1 to RCU.numOfStatusDevs DO
       IF RCU.DevicesStatus[i].DevType = 14 THEN
         if numOfLights > 0 then
           FOR K := 1 TO numOfLights DO
             IF RCU.DevicesStatus[i].loopAddress = lightsOutputDevs[K].loopAddress AND RCU.DevicesStatus[i].DevAddress = lightsOutputDevs[K].DevAddress THEN
                lightsStatus[K] := RCU.DevicesStatus[i].CtrlType;
             END_IF;
           END_FOR;
         end_if;

         if numOfOutlets > 0 then
           FOR K := 1 TO numOfOutlets DO
             IF RCU.DevicesStatus[i].loopAddress = outletOutputDevs[K].loopAddress AND RCU.DevicesStatus[i].DevAddress = outletOutputDevs[k].DevAddress THEN
                outletsStatus[K] := RCU.DevicesStatus[i].CtrlType;
             END_IF;
           END_FOR;
         end_if;
        (* FOR K := 1 TO numOfCurtains DO
           IF RCU.DevicesStatus[i].loopAddress = curtainsUpOutputDevs[K].loopAddress AND RCU.DevicesStatus[i].DevAddress = curtainsUpOutputDevs[K].DevAddress  THEN
              CurtainsUpStatus[K] := RCU.DevicesStatus[i].CtrlType;
           END_IF;
         END_FOR;
         FOR K := 1 TO numOfCurtains DO
           IF RCU.DevicesStatus[i].loopAddress = curtainsDwOutputDevs[K].loopAddress AND RCU.DevicesStatus[i].DevAddress = curtainsDwOutputDevs[K].DevAddress THEN
              CurtainsDwStatus[K] := RCU.DevicesStatus[i].CtrlType;
           END_IF;
         END_FOR; *)

       ELSIF RCU.DevicesStatus[i].DevType = 6 THEN

         // get the status of motion sensors
         if numOfMotionSens > 0 then
           FOR K := 1 TO numOfMotionSens  DO
             IF RCU.DevicesStatus[i].loopAddress = MotionSensOutputDevs[K].loopAddress AND RCU.DevicesStatus[i].DevAddress = MotionSensOutputDevs[K].DevAddress THEN
                MotionSenStatus[K] := RCU.DevicesStatus[i].CtrlType;
             END_IF;
           END_FOR;
         end_if;
         
         // Get the status of switch keys from the RCU
         if numOfCurtains > 0 then
           FOR K := 1 TO numOfCurtains  DO
             IF RCU.DevicesStatus[i].loopAddress = curtainsUpOutputDevs[K].loopAddress AND RCU.DevicesStatus[i].DevAddress = curtainsUpOutputDevs[K].DevAddress THEN
                SwitchUPStatus[K] := RCU.DevicesStatus[i].CtrlType;
             END_IF;

             IF RCU.DevicesStatus[i].loopAddress = curtainsDwOutputDevs[K].loopAddress AND RCU.DevicesStatus[i].DevAddress = curtainsDwOutputDevs[K].DevAddress THEN
                SwitchDWStatus[K] := RCU.DevicesStatus[i].CtrlType;
             END_IF;
           END_FOR;
         end_if;
         
       END_IF;
    END_FOR;
  END_IF;
  
  //FOR test
  (*IF (EnLightsAN1 = 1 AND LightsStatus[1] = false) OR (EnLightsAN1 = 2 AND LightsStatus[1] = true) THEN
      EnLights[1]   := 1;
      EnLightsAN1 := 0;
  ELSE
      EnLightsAN1 :=0;
  END_IF;*)
  
  if numOfLights > 0 then
    FOR K := 1 TO numOfLights DO
       IF (EnLightsAN[K] = 1 AND LightsStatus[K] = false) OR (EnLightsAN[K] = 2 AND LightsStatus[K] = true) THEN
          EnLights[K]   := 1;
          EnLightsAN[K] := 0;
       ELSE
          EnLightsAN[K] :=0;
       END_IF;

       IF EnLights[K] THEN
         EnLights[K] := 0 ;
         IF lightsStatus[K] THEN
            cmd_CtrlType     := close ;
            cmd_CtrlContent  := 0 ;
         ELSE
            cmd_CtrlType     := open ;
            cmd_CtrlContent  := 100 ;
         END_IF;
         sentPacket.Data.NumOfDev := 1 ;
         sentPacket.Data.DevArr[1].DevType := EX_Relay ;
         sentPacket.Data.DevArr[1].DevAddress := lightsOutputDevs[K].DevAddress;
         sentPacket.Data.DevArr[1].loopAddress := lightsOutputDevs[K].loopAddress ;
         sentPacket.Data.DevArr[1].CtrlType := cmd_CtrlType ;
         sentPacket.Data.DevArr[1].CtrlContent := cmd_CtrlContent ;
         RCU_RQ :=1;
       END_IF;
    END_FOR;
  end_if;
  
  if numOfOutlets > 0 then
    FOR K := 1 TO numOfOutlets DO
       IF (EnOutletsAN[K] = 1 AND OutletsStatus[K] = false) OR (EnOutletsAN[K] = 2 AND OutletsStatus[K] = true) THEN
          EnOutlets[K]   := 1;
          EnOutletsAN[K] := 0;
       ELSE
          EnOutletsAN[K] := 0;
       END_IF;

       IF EnOutlets[K] THEN
         EnOutlets[K] := 0 ;
         IF outletsStatus[K] THEN
            cmd_CtrlType     := close ;
            cmd_CtrlContent  := 0 ;
         ELSE
            cmd_CtrlType     := open ;
            cmd_CtrlContent  := 100 ;
         END_IF;
         sentPacket.Data.NumOfDev := 1 ;
         sentPacket.Data.DevArr[1].DevType := EX_Relay ;
         sentPacket.Data.DevArr[1].DevAddress := outletOutputDevs[K].DevAddress;
         sentPacket.Data.DevArr[1].loopAddress := outletOutputDevs[K].loopAddress ;
         sentPacket.Data.DevArr[1].CtrlType := cmd_CtrlType ;
         sentPacket.Data.DevArr[1].CtrlContent := cmd_CtrlContent ;
         RCU_RQ :=1;
       END_IF;
    END_FOR;
  end_if;
  

   (*
   FOR K := 1 TO numOfCurtains DO
      IF ((EnCurtainsUp[K] AND Dw[K]) OR (EnCurtainsDw[K] AND Up[K])) THEN
       EnCurtains[K] := 0;
       curtainsFB[k](stop := 1  , upDwTime :=T#20s );

       sentPacket.Data.NumOfDev := 2 ;
       sentPacket.Data.DevArr[1].DevType := EX_Relay ;
       sentPacket.Data.DevArr[1].DevAddress := curtainsUpOutputDevs[K].DevAddress;
       sentPacket.Data.DevArr[1].loopAddress := curtainsUpOutputDevs[K].loopAddress ;
       sentPacket.Data.DevArr[1].CtrlType := close ;
       sentPacket.Data.DevArr[1].CtrlContent := 0 ;

       sentPacket.Data.DevArr[2].DevType := EX_Relay ;
       sentPacket.Data.DevArr[2].DevAddress := curtainsDwOutputDevs[K].DevAddress;
       sentPacket.Data.DevArr[2].loopAddress := curtainsDwOutputDevs[K].loopAddress ;
       sentPacket.Data.DevArr[2].CtrlType := close ;
       sentPacket.Data.DevArr[2].CtrlContent := 0 ;
       RCU_RQ :=1;
       
       Up[K] := EnCurtainsUp[K] ;
       Dw[K] := EnCurtainsDw[K] ;
       EnCurtainsUp[K] := 0;
       EnCurtainsDw[K] := 0;
       EnCurtainsWait[K] := 1;
    ELSIF (EnCurtainsUp[K] AND Dw[K] = false ) OR (EnCurtainsDw[K] AND Up[K] = false ) THEN
     //  IF curtainsFB[K].posit > 0 THEN
          Up[K] := EnCurtainsUp[K] ;
          EnCurtains[K]   := 1;
     //  ELSIF curtainsFB[K].posit < 100 THEN
          Dw[K] := EnCurtainsDw[K] ;
       //   EnCurtains[K]   := 1;
    //   END_IF;
       EnCurtainsUp[K] := 0;
       EnCurtainsDw[K] := 0;

    END_IF;
    
    TonCurtainsWait[K](IN := EnCurtainsWait[K] , PT := T#1s );
     IF TonCurtainsWait[K].Q THEN
       EnCurtainsWait[K] := 0;
       EnCurtains[K] := 1;
     END_IF;
     
     IF EnCurtains[K] THEN
        curtainsFB[K](up := CurtainsUpStatus[K] , dw := CurtainsDwStatus[K]  , upDwTime :=T#20s );
     END_IF;
     
     IF (curtainsFB[K].posit = 0 and curtainsFB[K].outUp) OR (curtainsFB[K].posit = 100 and curtainsFB[K].outDw) THEN
        EnCurtains[K] := 0;
        Up[K] := 0;
        Dw[K] := 0;
        curtainsFB[K](stop := 1  , upDwTime :=T#20s );
     END_IF;
     
     IF CurtainsFB[K].posit = 0 THEN
        CurtainPositWm[k] := 0;
     ELSIF CurtainsFB[K].posit > 0 AND CurtainsFB[K].posit < 30 THEN
        CurtainPositWm[K] := 1;
     ELSIF CurtainsFB[K].posit >= 30 AND CurtainsFB[K].posit < 60 THEN
        CurtainPositWm[K] := 2;
     ELSIF CurtainsFB[K].posit >= 60 AND CurtainsFB[K].posit < 90  THEN
        CurtainPositWm[K] := 3;
     ELSIF CurtainsFB[K].posit >= 100 THEN
        CurtainPositWm[K] := 4;
     END_IF;
     IF Up[K] THEN
        cmd_CtrlType    := open;
        cmd_CtrlContent := 100;
     ELSE
        cmd_CtrlType    := close;
        cmd_CtrlContent := 0;
     END_IF;
     IF Dw[K] THEN
        cmd_CtrlType1    := open;
        cmd_CtrlContent1 := 100;
     ELSE
        cmd_CtrlType1    := close;
        cmd_CtrlContent1 := 0;
     END_IF;
     RTCurtains[K](CLK := EnCurtains[K] ) ;
     FTCurtains[K](CLK := EnCurtains[K] ) ;
     IF RTCurtains[K].Q OR FTCurtains[K].Q THEN
       sentPacket.Data.NumOfDev := 2 ;
       sentPacket.Data.DevArr[1].DevType     := EX_Relay ;
       sentPacket.Data.DevArr[1].DevAddress  := curtainsUpOutputDevs[K].DevAddress;
       sentPacket.Data.DevArr[1].loopAddress := curtainsUpOutputDevs[K].loopAddress ;
       sentPacket.Data.DevArr[1].CtrlType    := cmd_CtrlType ;
       sentPacket.Data.DevArr[1].CtrlContent := cmd_CtrlContent ;

       sentPacket.Data.DevArr[2].DevType     := EX_Relay ;
       sentPacket.Data.DevArr[2].DevAddress  := curtainsDwOutputDevs[K].DevAddress;
       sentPacket.Data.DevArr[2].loopAddress := curtainsDwOutputDevs[K].loopAddress ;
       sentPacket.Data.DevArr[2].CtrlType    := cmd_CtrlType1 ;
       sentPacket.Data.DevArr[2].CtrlContent := cmd_CtrlContent1 ;
       RCU_RQ :=1;
     END_IF;
   END_FOR;  *)
   

END_FUNCTION_BLOCK

