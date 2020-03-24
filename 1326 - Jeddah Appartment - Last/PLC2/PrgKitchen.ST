VAR_GLOBAL CONSTANT
   NumOfLightKitchen      : USINT := 4;
   NumOfOutletKitchen     : USINT := 5;
   NumOfCurtainKitchen    : USINT := 0;
   NumOfMotionSensKitchen : USINT := 1;
   NumOfFCUsKitchen       : USINT := 1;
   NumOfHMIsKitchen       : USINT := 1;
END_VAR

VAR_GLOBAL RETAIN
   lightsStatusKitchen  {PUBLIC_API} : TLightsStatus;
   outletsStatusKitchen {PUBLIC_API} : TOutletsStatus;
   setTempFCU_Kitchen  : Array[1..NumOfFCUsKitchen] of REAL := [20];

END_VAR


PROGRAM PrgKitchen

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
                                                   (DevAddress := 1 , loopAddress := 3),(DevAddress := 1 , loopAddress := 4)];

  outletOutputDevs     : ToutletOutputDevs     := [(DevAddress := 1 , loopAddress := 5),(DevAddress := 1 , loopAddress := 6),
                                                   (DevAddress := 1 , loopAddress := 7),(DevAddress := 1 , loopAddress := 8),(DevAddress := 1 , loopAddress := 9)];

  (*curtainsUpOutputDevs : TcurtainsUpOutputDevs := [(DevAddress := 1 , loopAddress := 8)];
  curtainsDwOutputDevs : TcurtainsDwOutputDevs := [(DevAddress := 1 , loopAddress := 9)]; *)

  motionSensOutputDevs : TMotionSensOutputDevs := [(DevAddress := 1 , loopAddress := 1)];


  EnLights                            : TEnLights     ;
  EnLightsAN       {PUBLIC_API}       : TEnLightsAN   ;
  EnOutlets                           : TEnOutlets    ;
  EnOutletsAN      {PUBLIC_API}       : TEnOutletsAN  ;
  EnCurtainsUp     {PUBLIC_API}       : TEnCurtainsUp ;
  EnCurtainsDw     {PUBLIC_API}       : TEnCurtainsDW ;
   //EnLightsKitchenAN1  {PUBLIC_API}      : TEnLightsAN1    ;
   //stLightsKitchenAN  {PUBLIC_API}       : BOOL     ;
  //curtainsFB       : TCurtainsFB;
  //CurtainPositWm   : TCurtainPositWm;


  //
  enLights_RT  : Array[1..NumOfHMIsKitchen,1..NumOfLightKitchen] of R_TRIG;
  enLights_FT  : Array[1..NumOfHMIsKitchen,1..NumOfLightKitchen] of F_TRIG;

  enOutlets_RT : Array[1..NumOfHMIsKitchen,1..NumOfOutletKitchen] of R_TRIG;
  enOutlets_FT : Array[1..NumOfHMIsKitchen,1..NumOfOutletKitchen] of F_TRIG;

  (*
  enCurtainsUP_RT : Array[1..NumOfHMIsKitchen,1..NumOfCurtainKitchen] of R_TRIG;
  enCurtainsUP_FT : Array[1..NumOfHMIsKitchen,1..NumOfCurtainKitchen] of F_TRIG;

  enCurtainsDW_RT : Array[1..NumOfHMIsKitchen,1..NumOfCurtainKitchen] of R_TRIG;
  enCurtainsDW_FT : Array[1..NumOfHMIsKitchen,1..NumOfCurtainKitchen] of F_TRIG;
  *)


  //
  i , j : USINT;
  afterRestart_TP : TP;
  afterRestart_TP_FT : F_TRIG;

  //
  motionSensStatus                : TMotionSensStatus;
  CurtainsUpStatus   {PUBLIC_API} : TCurtainsUpStatus;
  CurtainsDwStatus   {PUBLIC_API} : TCurtainsDwStatus;

  // FCU VARS
  FCU          : Array[1..NumOfFCUsKitchen] of fbControlFCU;
  enableFCU    : Array[1..NumOfFCUsKitchen] of BOOL;
  settingsFCU  : Array[1..NumOfFCUsKitchen] of TFCU_Settings;

  //modeFCU      : Array[1..NumOfFCUsKitchen] of TFCU_Mode;
  //fanSpeedFCU  : Array[1..NumOfFCUsKitchen] of TFCU_FanSpeed;

  enFCUs_FT    : Array[1..NumOfHMIsKitchen,1..NumOfFCUsKitchen] of F_TRIG;
  enFCUs_RT    : Array[1..NumOfHMIsKitchen,1..NumOfFCUsKitchen] of R_TRIG;

  enFanHigh_RT : Array[1..NumOfHMIsKitchen,1..NumOfFCUsKitchen] of R_TRIG;
  enFanMed_RT  : Array[1..NumOfHMIsKitchen,1..NumOfFCUsKitchen] of R_TRIG;
  enFanLow_RT  : Array[1..NumOfHMIsKitchen,1..NumOfFCUsKitchen] of R_TRIG;
  enFanAuto_RT : Array[1..NumOfHMIsKitchen,1..NumOfFCUsKitchen] of R_TRIG;

  enFCUCool_RT    : Array[1..NumOfHMIsKitchen,1..NumOfFCUsKitchen] of R_TRIG;
  enFCUFanOnly_RT : Array[1..NumOfHMIsKitchen,1..NumOfFCUsKitchen] of R_TRIG;

  enSetTempIncr_RT : Array[1..NumOfHMIsKitchen,1..NumOfFCUsKitchen] of R_TRIG;
  enSetTempIncr_FT : Array[1..NumOfHMIsKitchen,1..NumOfFCUsKitchen] of F_TRIG;

  enSetTempDecr_RT : Array[1..NumOfHMIsKitchen,1..NumOfFCUsKitchen] of R_TRIG;
  enSetTempDecr_FT : Array[1..NumOfHMIsKitchen,1..NumOfFCUsKitchen] of F_TRIG;

  //HMIs[1..num
  HMI_Index : USINT;
  RCU_Index : USINT;
  HMI_Addresses : Array[1..NumOfHMIsKitchen] of USINT := [7];

  END_VAR

     if navSelect = 0 then
     lightsSelect   := 1;
     socketsSelect  := 0;
     AC_Select      := 0;
  elsif navSelect = 1 then
     lightsSelect   := 0;
     socketsSelect  := 1;
     AC_Select      := 0;
  elsif navSelect = 2 then
     lightsSelect   := 0;
     socketsSelect  := 0;
     AC_Select      := 1;
  end_if;


  HMI_Index := 6;
  RCU_Index := 4;

  if GetRemoteIPaddress(chanCode := Eth1_uni3, ethAdr := RCU_ethAdr) then
     RCUs_IPs[RCU_Index] := RCU_ethAdr.remoteIP;
  end_if;



  HMIs_Info[HMI_Index].SNo := HMI_Addresses[1];
  HMIs_Info[HMI_Index].readStAdd  := 521;
  HMIs_Info[HMI_Index].writeStAdd := 581;
  HMIs_Info[HMI_Index].readNoPoint  := SIZEOF(HMIs_DataRead[HMI_Index]) / 2;
  HMIs_Info[HMI_Index].writeNoPoint := SIZEOF(HMIs_DataWrite[HMI_Index]) / 2;

  for i := 1 to NumOfHMIsKitchen-1 do
    HMIs_Info[HMI_Index+i] := HMIs_Info[HMI_Index];
    HMIs_Info[HMI_Index+i].SNo := HMI_Addresses[i+1];
  end_for;


  afterRestart_TP(IN := IS_COLD_RESTART_PLC or IS_HOT_RESTART_PLC, PT := T#2s );
  afterRestart_TP_FT(CLK := afterRestart_TP.Q);

  if afterRestart_TP_FT.Q then
     SendIamServer := 1;
  end_if;

  controlRoom(RCU_ChCode := ETH1_uni3 , RCU_PingDone := RCUs_PingDone[RCU_Index],
              numOfLights := NumOfLightKitchen , numOfOutlets := NumOfOutletKitchen , numOfCurtains := NumOfCurtainKitchen, numOfMotionSens := NumOfMotionSensKitchen,
              lightsOutputDevs := lightsOutputDevs , outletOutputDevs := outletOutputDevs ,
              RCU_CH_IN := void(ETH1_uni3_IN) , LightsStatus := lightsStatusKitchen ,OutletsStatus := outletsStatusKitchen, MotionSenStatus := motionSensStatus,
              EnLights := EnLights , EnLightsAN := EnLightsAN , EnOutlets := EnOutlets ,EnOutletsAN :=EnOutletsAN ,
              SendIamServer := SendIamServer , GetAllStatus := GetAllStatus);

              //stLightsKitchenAN := lightsStatusKitchen[1];


   FCU[1](enable := enableFCU[1], mode := settingsFCU[1].FCU_Mode, fanSpeed := settingsFCU[1].FCU_FanSpeed, setTemp := setTempFCU_Kitchen[1], temp := FCU_Temp_Kitchen, valve := FCU_valve_Kitchen, fanLow := FCU_fanLow_Kitchen,
                 fanMed := FCU_fanMed_Kitchen, fanHigh := FCU_fanHigh_Kitchen);




   for i := 1 to NumOfLightKitchen do
       HMIs_DataWrite[HMI_Index].lightsStatus[i] := BOOL_TO_WORD(lightsStatusKitchen[i]);
   end_for;

   for i := 1 to NumOfOutletKitchen do
       HMIs_DataWrite[HMI_Index].outletsStatus[i] := BOOL_TO_WORD(outletsStatusKitchen[i]);
   end_for;

   for i := 1 to NumOfMotionSensKitchen do
       HMIs_DataWrite[HMI_Index].motionSensStatus[i] := BOOL_TO_WORD(motionSensStatus[i]);
   end_for;

   for i := 1 to NumOfFCUsKitchen do
      HMIs_DataWrite[HMI_Index].FCUs_Status[i] := FCU[i].FCU_Status;
   end_for;

   for i := 1 to NumOfHMIsKitchen-1 do
     HMIs_DataWrite[HMI_Index+i] := HMIs_DataWrite[HMI_Index];
   end_for;


   for j := 1 to NumOfHMIsKitchen do
     for i := 1 to NumOfLightKitchen do

         enLights_RT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enLights[i]);

         enLights_FT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enLights[i]);

         if enLights_RT[j,i].Q or enLights_FT[j,i].Q then
            EnLights[i] := 1;
         end_if;
     end_for;
   end_for;

   for j := 1 to NumOfHMIsKitchen do
     for i := 1 to NumOfOutletKitchen do

         enOutlets_RT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enOutlets[i]);

         enOutlets_FT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enOutlets[i]);

         if enOutlets_RT[j,i].Q or enOutlets_FT[j,i].Q then
            EnOutlets[i] := 1;
         end_if;
     end_for;
   end_for;

  (*
   for j := 1 to NumOfHMIsKitchen do
     for i := 1 to NumOfCurtainKitchen do

         enCurtainsUP_RT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enShutters[i].UP.0);

         enCurtainsUP_FT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enShutters[i].UP.0);

         if enCurtainsUP_RT[j,i].Q or enCurtainsUP_FT[j,i].Q then
            EnCurtainsUp[i] := 1;
         end_if;


         enCurtainsDW_RT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enShutters[i].Dw.0);

         enCurtainsDW_FT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enShutters[i].Dw.0);

         if enCurtainsDW_RT[j,i].Q or enCurtainsDW_FT[j,i].Q then
            EnCurtainsDw[i] := 1;
         end_if;

     end_for;
   end_for;*)

   for j := 1 to NumOfHMIsKitchen do
      for i := 1 to NumOfFCUsKitchen do
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
             setTempFCU_Kitchen[j] := setTempFCU_Kitchen[j] + 0.5;
          end_if;

          enSetTempDecr_RT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enFCUs[i].SetTempCtrl.1);
          enSetTempDecr_FT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enFCUs[i].SetTempCtrl.1);

          if enSetTempDecr_RT[j,i].Q or enSetTempDecr_FT[j,i].Q then
             setTempFCU_Kitchen[j] := setTempFCU_Kitchen[j] - 0.5;
          end_if;

      end_for;
   end_for;

END_PROGRAM


