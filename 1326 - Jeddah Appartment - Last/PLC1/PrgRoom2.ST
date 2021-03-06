VAR_GLOBAL CONSTANT
   NumOfLightRoom2      : USINT := 5;
   NumOfOutletRoom2     : USINT := 1;
   NumOfCurtainRoom2    : USINT := 1;
   NumOfMotionSensRoom2 : USINT := 2;
   NumOfFCUsRoom2       : USINT := 1;
   NumOfHMIsRoom2       : USINT := 2;
END_VAR

VAR_GLOBAL RETAIN
   lightsStatusRoom2  {PUBLIC_API} : TLightsStatus;
   outletsStatusRoom2 {PUBLIC_API} : TOutletsStatus;
   setTempFCU_Room2  : Array[1..NumOfFCUsRoom2] of REAL := [20];

END_VAR


PROGRAM PrgRoom2

  VAR
  //WebMaker
  lightsSelect   : BOOL;
  socketsSelect  : BOOL;
  shuttersSelect : BOOL;
  AC_Select      : BOOL;
  navSelect      : usint;

  //RCU
  RCU_ethAdr   : TRemoteEthAdr;
  RCU_IP : TIPadr := [192, 168, 0, 23];
  RCU_Ch_localPort : UINT;
  Set_IP           : BOOL;
  GetAllStatus  : BOOL;
  SendIamServer : BOOL;

  //controlRoom
  controlRoom   : fbControlRoom ;
  lightsOutputDevs     : TlightsOutputDevs     := [(DevAddress := 1 , loopAddress := 1),(DevAddress := 1 , loopAddress := 2),
                                                   (DevAddress := 1 , loopAddress := 3),(DevAddress := 1 , loopAddress := 4),
                                                   (DevAddress := 1 , loopAddress := 5)];

  outletOutputDevs     : ToutletOutputDevs     := [(DevAddress := 1 , loopAddress := 6)];

  curtainsUpOutputDevs : TcurtainsUpOutputDevs := [(DevAddress := 1 , loopAddress := 8)];
  curtainsDwOutputDevs : TcurtainsDwOutputDevs := [(DevAddress := 1 , loopAddress := 9)];

  motionSensOutputDevs : TMotionSensOutputDevs := [(DevAddress := 1 , loopAddress := 1),(DevAddress := 1 , loopAddress := 2)];


  EnLights                            : TEnLights     ;
  EnLightsAN       {PUBLIC_API}       : TEnLightsAN   ;
  EnOutlets                           : TEnOutlets    ;
  EnOutletsAN      {PUBLIC_API}       : TEnOutletsAN  ;
  EnCurtainsUp     {PUBLIC_API}       : TEnCurtainsUp ;
  EnCurtainsDw     {PUBLIC_API}       : TEnCurtainsDW ;



  //
  enLights_RT  : Array[1..NumOfHMIsRoom2,1..NumOfLightRoom2] of R_TRIG;
  enLights_FT  : Array[1..NumOfHMIsRoom2,1..NumOfLightRoom2] of F_TRIG;

  enOutlets_RT : Array[1..NumOfHMIsRoom2,1..NumOfOutletRoom2] of R_TRIG;
  enOutlets_FT : Array[1..NumOfHMIsRoom2,1..NumOfOutletRoom2] of F_TRIG;


  // HMIs
  enCurtainsUP_RT : Array[1..NumOfHMIsRoom2,1..NumOfCurtainRoom2] of R_TRIG;
  enCurtainsUP_FT : Array[1..NumOfHMIsRoom2,1..NumOfCurtainRoom2] of F_TRIG;

  enCurtainsDW_RT : Array[1..NumOfHMIsRoom2,1..NumOfCurtainRoom2] of R_TRIG;
  enCurtainsDW_FT : Array[1..NumOfHMIsRoom2,1..NumOfCurtainRoom2] of F_TRIG;


  // RCU Switches
  enCurtainsUP_SW_RT : Array[1..NumOfCurtainRoom2] of R_TRIG;
  enCurtainsUP_SW_FT : Array[1..NumOfCurtainRoom2] of F_TRIG;

  enCurtainsDW_SW_RT : Array[1..NumOfCurtainRoom2] of R_TRIG;
  enCurtainsDW_SW_FT : Array[1..NumOfCurtainRoom2] of F_TRIG;

  // GUI
  enCurtainsUP_GUI : Array[1..NumOfCurtainRoom2] of BOOL;
  enCurtainsDW_GUI : Array[1..NumOfCurtainRoom2] of BOOL;

  CurtStatus_Index : USINT;
  CurtEn_Index     : USINT;



  //
  i , j : USINT;
  afterRestart_TP : TP;
  afterRestart_TP_FT : F_TRIG;

  //
  motionSensStatus                : TMotionSensStatus;
  CurtainsUpStatus   {PUBLIC_API} : TCurtainsUpStatus;
  CurtainsDwStatus   {PUBLIC_API} : TCurtainsDwStatus;

  // FCU VARS
  FCU          : Array[1..NumOfFCUsRoom2] of fbControlFCU;
  enableFCU    : Array[1..NumOfFCUsRoom2] of BOOL;
  settingsFCU  : Array[1..NumOfFCUsRoom2] of TFCU_Settings;

  //modeFCU      : Array[1..NumOfFCUsRoom2] of TFCU_Mode;
  //fanSpeedFCU  : Array[1..NumOfFCUsRoom2] of TFCU_FanSpeed;

  enFCUs_FT    : Array[1..NumOfHMIsRoom2,1..NumOfFCUsRoom2] of F_TRIG;
  enFCUs_RT    : Array[1..NumOfHMIsRoom2,1..NumOfFCUsRoom2] of R_TRIG;

  enFanHigh_RT : Array[1..NumOfHMIsRoom2,1..NumOfFCUsRoom2] of R_TRIG;
  enFanMed_RT  : Array[1..NumOfHMIsRoom2,1..NumOfFCUsRoom2] of R_TRIG;
  enFanLow_RT  : Array[1..NumOfHMIsRoom2,1..NumOfFCUsRoom2] of R_TRIG;
  enFanAuto_RT : Array[1..NumOfHMIsRoom2,1..NumOfFCUsRoom2] of R_TRIG;

  enFCUCool_RT    : Array[1..NumOfHMIsRoom2,1..NumOfFCUsRoom2] of R_TRIG;
  enFCUFanOnly_RT : Array[1..NumOfHMIsRoom2,1..NumOfFCUsRoom2] of R_TRIG;

  enSetTempIncr_RT : Array[1..NumOfHMIsRoom2,1..NumOfFCUsRoom2] of R_TRIG;
  enSetTempIncr_FT : Array[1..NumOfHMIsRoom2,1..NumOfFCUsRoom2] of F_TRIG;

  enSetTempDecr_RT : Array[1..NumOfHMIsRoom2,1..NumOfFCUsRoom2] of R_TRIG;
  enSetTempDecr_FT : Array[1..NumOfHMIsRoom2,1..NumOfFCUsRoom2] of F_TRIG;

  //HMIs[1..num
  HMI_Index : USINT;
  RCU_Index : USINT;
  HMI_Addresses : Array[1..NumOfHMIsRoom2] of USINT := [18, 19];

  END_VAR

   if navSelect = 0 then
     lightsSelect   := 1;
     socketsSelect  := 0;
     shuttersSelect := 0;
     AC_Select      := 0;
  elsif navSelect = 1 then
     lightsSelect   := 0;
     socketsSelect  := 1;
     shuttersSelect := 0;
     AC_Select      := 0;
  elsif navSelect = 2 then
     lightsSelect   := 0;
     socketsSelect  := 0;
     shuttersSelect := 1;
     AC_Select      := 0;
  elsif navSelect = 3 then
     lightsSelect   := 0;
     socketsSelect  := 0;
     shuttersSelect := 0;
     AC_Select      := 1;
  end_if;

  HMI_Index := 7;
  RCU_Index := 4;
  CurtStatus_Index := 7;
  CurtEn_Index  := 7;
  
  
  if GetRemoteIPaddress(chanCode := Eth1_uni3, ethAdr := RCU_ethAdr) then
     RCUs_IPs[RCU_Index] := RCU_ethAdr.remoteIP;
  end_if;



  HMIs_Info[HMI_Index].SNo := HMI_Addresses[1];
  HMIs_Info[HMI_Index].readStAdd  := 1041;
  HMIs_Info[HMI_Index].writeStAdd := 1101;
  HMIs_Info[HMI_Index].readNoPoint  := SIZEOF(HMIs_DataRead[HMI_Index]) / 2;
  HMIs_Info[HMI_Index].writeNoPoint := SIZEOF(HMIs_DataWrite[HMI_Index]) / 2;

  for i := 1 to NumOfHMIsRoom2-1 do
    HMIs_Info[HMI_Index+i] := HMIs_Info[HMI_Index];
    HMIs_Info[HMI_Index+i].SNo := HMI_Addresses[i+1];
  end_for;


  afterRestart_TP(IN := IS_COLD_RESTART_PLC or IS_HOT_RESTART_PLC, PT := T#2s );
  afterRestart_TP_FT(CLK := afterRestart_TP.Q);

  if afterRestart_TP_FT.Q then
     SendIamServer := 1;
  end_if;

  controlRoom(RCU_ChCode := ETH1_uni3 , RCU_PingDone := RCUs_PingDone[RCU_Index],
              numOfLights := NumOfLightRoom2 , numOfOutlets := NumOfOutletRoom2 , numOfCurtains := NumOfCurtainRoom2, numOfMotionSens := NumOfMotionSensRoom2,
              lightsOutputDevs := lightsOutputDevs , outletOutputDevs := outletOutputDevs ,
              curtainsUpOutputDevs := curtainsUpOutputDevs , curtainsDwOutputDevs := curtainsDwOutputDevs,
              RCU_CH_IN := void(ETH1_uni3_IN) , LightsStatus := lightsStatusRoom2 ,OutletsStatus := outletsStatusRoom2, MotionSenStatus := motionSensStatus,
              EnLights := EnLights , EnLightsAN := EnLightsAN , EnOutlets := EnOutlets ,EnOutletsAN :=EnOutletsAN ,
              SendIamServer := SendIamServer , GetAllStatus := GetAllStatus);

              //stLightsRoom2AN := lightsStatusRoom2[1];


   FCU[1](enable := enableFCU[1], mode := settingsFCU[1].FCU_Mode, fanSpeed := settingsFCU[1].FCU_FanSpeed, setTemp := setTempFCU_Room2[1], temp := FCU_Temp_Room2, valve := FCU_valve_Room2, fanLow := FCU_fanLow_Room2,
                 fanMed := FCU_fanMed_Room2, fanHigh := FCU_fanHigh_Room2);




   for i := 1 to NumOfLightRoom2 do
       HMIs_DataWrite[HMI_Index].lightsStatus[i] := BOOL_TO_WORD(lightsStatusRoom2[i]);
   end_for;

   for i := 1 to NumOfOutletRoom2 do
       HMIs_DataWrite[HMI_Index].outletsStatus[i] := BOOL_TO_WORD(outletsStatusRoom2[i]);
   end_for;

   for i := 1 to NumOfMotionSensRoom2 do
       HMIs_DataWrite[HMI_Index].motionSensStatus[i] := BOOL_TO_WORD(motionSensStatus[i]);
   end_for;

   for i := 1 to NumOfFCUsRoom2 do
      HMIs_DataWrite[HMI_Index].FCUs_Status[i] := FCU[i].FCU_Status;
   end_for;
   
    if NumOfCurtainRoom2 > 0 then
      for i := 1 to NumOfCurtainRoom2 do
          HMIs_DataWrite[HMI_Index].shuttersStatus[i].UP.0 := curtainsStatus[CurtStatus_Index - 1 + i].outUP;
          HMIs_DataWrite[HMI_Index].shuttersStatus[i].Dw.0 := curtainsStatus[CurtStatus_Index - 1 + i].outDW;
          HMIs_DataWrite[HMI_Index].shuttersStatus[i].pos  := USINT_TO_WORD(curtainsStatus[CurtStatus_Index - 1 + i].normPos);
      end_for;
   end_if;

   for i := 1 to NumOfHMIsRoom2-1 do
     HMIs_DataWrite[HMI_Index+i] := HMIs_DataWrite[HMI_Index];
   end_for;


   for j := 1 to NumOfHMIsRoom2 do
     for i := 1 to NumOfLightRoom2 do

         enLights_RT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enLights[i]);

         enLights_FT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enLights[i]);

         if enLights_RT[j,i].Q or enLights_FT[j,i].Q then
            EnLights[i] := 1;
         end_if;
     end_for;
   end_for;

   for j := 1 to NumOfHMIsRoom2 do
     for i := 1 to NumOfOutletRoom2 do

         enOutlets_RT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enOutlets[i]);

         enOutlets_FT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enOutlets[i]);

         if enOutlets_RT[j,i].Q or enOutlets_FT[j,i].Q then
            EnOutlets[i] := 1;
         end_if;
     end_for;
   end_for;
   
   for j := 1 to NumOfHMIsRoom2 do
     for i := 1 to NumOfCurtainRoom2 do

         enCurtainsUP_RT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enShutters[i].UP.0);

         enCurtainsUP_FT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enShutters[i].UP.0);

         enCurtainsDW_RT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enShutters[i].Dw.0);

         enCurtainsDW_FT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enShutters[i].Dw.0);

         //
         enCurtainsUP_SW_RT[i](CLK := controlRoom.SwitchUPStatus[i]);
         enCurtainsUP_SW_FT[i](CLK := controlRoom.SwitchUPStatus[i]);

         enCurtainsDW_SW_RT[i](CLK := controlRoom.SwitchDWStatus[i]);
         enCurtainsDW_SW_FT[i](CLK := controlRoom.SwitchDWStatus[i]);

          if  enCurtainsUP_RT[j,i].Q  or enCurtainsUP_FT[j,i].Q or enCurtainsUP_SW_RT[i].Q or enCurtainsUP_SW_FT[i].Q then
             enCurtainsUP_GUI[i] := 1;
         end_if;

         if  enCurtainsDW_RT[j,i].Q  or enCurtainsDW_FT[j,i].Q or enCurtainsDW_SW_RT[i].Q or enCurtainsDW_SW_FT[i].Q then
             enCurtainsDW_GUI[i] := 1;
         end_if;

         // if up button is pressed and the curtain is not moving up

         if enCurtainsUP_GUI[i] and not curtainsStatus[CurtStatus_Index - 1 + i].outUP then
             PLC1_EnCurtains[CurtEn_Index - 1 + i].UP   := 1;
             PLC1_EnCurtains[CurtEn_Index - 1 + i].DW   := 0;
             PLC1_EnCurtains[CurtEn_Index - 1 + i].STOP := 0;

             enCurtainsUP_GUI[i] := 0;
         end_if;

         // if up button is pressed and the curtain is moving up

         if enCurtainsUP_GUI[i] and curtainsStatus[CurtStatus_Index - 1 + i].outUP then
             PLC1_EnCurtains[CurtEn_Index - 1 + i].UP   := 0;
             PLC1_EnCurtains[CurtEn_Index - 1 + i].DW   := 0;
             PLC1_EnCurtains[CurtEn_Index - 1 + i].STOP := 1;

             enCurtainsUP_GUI[i] := 0;
         end_if;


          // if down button is pressed and the curtain is not moving down

         if enCurtainsDW_GUI[i] and not curtainsStatus[CurtStatus_Index - 1 + i].outDW then
             PLC1_EnCurtains[CurtEn_Index - 1 + i].UP   := 0;
             PLC1_EnCurtains[CurtEn_Index - 1 + i].DW   := 1;
             PLC1_EnCurtains[CurtEn_Index - 1 + i].STOP := 0;

             enCurtainsDW_GUI[i] := 0;
         end_if;

         // if down button is pressed and the curtain is moving down

         if enCurtainsDW_GUI[i] and curtainsStatus[CurtStatus_Index - 1 + i].outDW then
             PLC1_EnCurtains[CurtEn_Index - 1 + i].UP   := 0;
             PLC1_EnCurtains[CurtEn_Index - 1 + i].DW   := 0;
             PLC1_EnCurtains[CurtEn_Index - 1 + i].STOP := 1;

             enCurtainsDW_GUI[i] := 0;
         end_if;

     end_for;
   end_for;
   

   for j := 1 to NumOfHMIsRoom2 do
      for i := 1 to NumOfFCUsRoom2 do
          enFCUs_FT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enFCUs[i].onOff);
          enFCUs_RT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enFCUs[i].onOff);

          if enFCUs_FT[j,i].Q then
             enableFCU[i] := 0;
          end_if;
          if enFCUs_RT[j,i].Q then
             enableFCU[i] := 1;
          end_if;

          enFanAuto_RT[j,i](CLK := (HMIs_DataRead[HMI_Index + j - 1].enFCUs[i].fanSpeed = 8));
          enFanLow_RT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enFCUs[i].fanSpeed.0);
          enFanMed_RT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enFCUs[i].fanSpeed.1);
          enFanHigh_RT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enFCUs[i].fanSpeed.2);

          if enFanAuto_RT[j,i].Q then
             settingsFCU[i].FCU_FanSpeed := auto;
          end_if;
          if enFanLow_RT[j,i].Q then
             settingsFCU[i].FCU_FanSpeed := low;
          end_if;
          if enFanMed_RT[j,i].Q then
             settingsFCU[i].FCU_FanSpeed := med;
          end_if;
          if enFanHigh_RT[j,i].Q then
             settingsFCU[i].FCU_FanSpeed := high;
          end_if;

          enFCUCool_RT[j,i](CLK := (HMIs_DataRead[HMI_Index + j - 1].enFCUs[i].mode = 0));
          enFCUFanOnly_RT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enFCUs[i].mode.0);

          if enFCUCool_RT[j,i].Q then
             settingsFCU[i].FCU_Mode := cooling;
          end_if;
          if enFCUFanOnly_RT[j,i].Q then
             settingsFCU[i].FCU_Mode := fanOnly;
          end_if;

          enSetTempIncr_RT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enFCUs[i].SetTempCtrl.0);
          enSetTempIncr_FT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enFCUs[i].SetTempCtrl.0);

          if enSetTempIncr_RT[j,i].Q or enSetTempIncr_FT[j,i].Q then
             setTempFCU_Room2[j] := setTempFCU_Room2[j] + 0.5;
          end_if;

          enSetTempDecr_RT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enFCUs[i].SetTempCtrl.1);
          enSetTempDecr_FT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enFCUs[i].SetTempCtrl.1);

          if enSetTempDecr_RT[j,i].Q or enSetTempDecr_FT[j,i].Q then
             setTempFCU_Room2[j] := setTempFCU_Room2[j] - 0.5;
          end_if;

      end_for;
   end_for;

END_PROGRAM


