VAR_GLOBAL CONSTANT
   NumOfLightDiningRoom      : USINT := 5;
   NumOfOutletDiningRoom     : USINT := 2;
   NumOfCurtainDiningRoom    : USINT := 0;
   NumOfMotionSensDiningRoom : USINT := 1;
   NumOfFCUsDiningRoom       : USINT := 1;
   NumOfHMIsDiningRoom       : USINT := 2;
END_VAR

VAR_GLOBAL RETAIN
   lightsStatusDiningRoom  {PUBLIC_API} : TLightsStatus;
   outletsStatusDiningRoom {PUBLIC_API} : TOutletsStatus;
   setTempFCU_DiningRoom  : Array[1..NumOfFCUsDiningRoom] of REAL := [20];

END_VAR


PROGRAM PrgDiningRoom

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

  outletOutputDevs     : ToutletOutputDevs     := [(DevAddress := 1 , loopAddress := 6),(DevAddress := 1 , loopAddress := 7)];

  (*curtainsUpOutputDevs : TcurtainsUpOutputDevs := [(DevAddress := 1 , loopAddress := 8)];
  curtainsDwOutputDevs : TcurtainsDwOutputDevs := [(DevAddress := 1 , loopAddress := 9)]; *)

  motionSensOutputDevs : TMotionSensOutputDevs := [(DevAddress := 1 , loopAddress := 1)];


  EnLights                            : TEnLights     ;
  EnLightsAN       {PUBLIC_API}       : TEnLightsAN   ;
  EnOutlets                           : TEnOutlets    ;
  EnOutletsAN      {PUBLIC_API}       : TEnOutletsAN  ;
  EnCurtainsUp     {PUBLIC_API}       : TEnCurtainsUp ;
  EnCurtainsDw     {PUBLIC_API}       : TEnCurtainsDW ;
   //EnLightsDiningRoomAN1  {PUBLIC_API}      : TEnLightsAN1    ;
   //stLightsDiningRoomAN  {PUBLIC_API}       : BOOL     ;
  //curtainsFB       : TCurtainsFB;
  //CurtainPositWm   : TCurtainPositWm;


  //
  enLights_RT  : Array[1..NumOfHMIsDiningRoom,1..NumOfLightDiningRoom] of R_TRIG;
  enLights_FT  : Array[1..NumOfHMIsDiningRoom,1..NumOfLightDiningRoom] of F_TRIG;

  enOutlets_RT : Array[1..NumOfHMIsDiningRoom,1..NumOfOutletDiningRoom] of R_TRIG;
  enOutlets_FT : Array[1..NumOfHMIsDiningRoom,1..NumOfOutletDiningRoom] of F_TRIG;

  (*
  enCurtainsUP_RT : Array[1..NumOfHMIsDiningRoom,1..NumOfCurtainDiningRoom] of R_TRIG;
  enCurtainsUP_FT : Array[1..NumOfHMIsDiningRoom,1..NumOfCurtainDiningRoom] of F_TRIG;

  enCurtainsDW_RT : Array[1..NumOfHMIsDiningRoom,1..NumOfCurtainDiningRoom] of R_TRIG;
  enCurtainsDW_FT : Array[1..NumOfHMIsDiningRoom,1..NumOfCurtainDiningRoom] of F_TRIG;
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
  FCU          : Array[1..NumOfFCUsDiningRoom] of fbControlFCU;
  enableFCU    : Array[1..NumOfFCUsDiningRoom] of BOOL;
  settingsFCU  : Array[1..NumOfFCUsDiningRoom] of TFCU_Settings;

  //modeFCU      : Array[1..NumOfFCUsDiningRoom] of TFCU_Mode;
  //fanSpeedFCU  : Array[1..NumOfFCUsDiningRoom] of TFCU_FanSpeed;

  enFCUs_FT    : Array[1..NumOfHMIsDiningRoom,1..NumOfFCUsDiningRoom] of F_TRIG;
  enFCUs_RT    : Array[1..NumOfHMIsDiningRoom,1..NumOfFCUsDiningRoom] of R_TRIG;

  enFanHigh_RT : Array[1..NumOfHMIsDiningRoom,1..NumOfFCUsDiningRoom] of R_TRIG;
  enFanMed_RT  : Array[1..NumOfHMIsDiningRoom,1..NumOfFCUsDiningRoom] of R_TRIG;
  enFanLow_RT  : Array[1..NumOfHMIsDiningRoom,1..NumOfFCUsDiningRoom] of R_TRIG;
  enFanAuto_RT : Array[1..NumOfHMIsDiningRoom,1..NumOfFCUsDiningRoom] of R_TRIG;

  enFCUCool_RT    : Array[1..NumOfHMIsDiningRoom,1..NumOfFCUsDiningRoom] of R_TRIG;
  enFCUFanOnly_RT : Array[1..NumOfHMIsDiningRoom,1..NumOfFCUsDiningRoom] of R_TRIG;

  enSetTempIncr_RT : Array[1..NumOfHMIsDiningRoom,1..NumOfFCUsDiningRoom] of R_TRIG;
  enSetTempIncr_FT : Array[1..NumOfHMIsDiningRoom,1..NumOfFCUsDiningRoom] of F_TRIG;

  enSetTempDecr_RT : Array[1..NumOfHMIsDiningRoom,1..NumOfFCUsDiningRoom] of R_TRIG;
  enSetTempDecr_FT : Array[1..NumOfHMIsDiningRoom,1..NumOfFCUsDiningRoom] of F_TRIG;

  //HMIs[1..num
  HMI_Index : USINT;
  RCU_Index : USINT;
  HMI_Addresses : Array[1..NumOfHMIsDiningRoom] of USINT := [2, 10];

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


  HMI_Index := 2;
  RCU_Index := 2;

  if GetRemoteIPaddress(chanCode := Eth1_uni1, ethAdr := RCU_ethAdr) then
     RCUs_IPs[RCU_Index] := RCU_ethAdr.remoteIP;
  end_if;



  HMIs_Info[HMI_Index].SNo := HMI_Addresses[1];
  HMIs_Info[HMI_Index].readStAdd  := 261;
  HMIs_Info[HMI_Index].writeStAdd := 321;
  HMIs_Info[HMI_Index].readNoPoint  := SIZEOF(HMIs_DataRead[HMI_Index]) / 2;
  HMIs_Info[HMI_Index].writeNoPoint := SIZEOF(HMIs_DataWrite[HMI_Index]) / 2;

  for i := 1 to NumOfHMIsDiningRoom-1 do
    HMIs_Info[HMI_Index+i] := HMIs_Info[HMI_Index];
    HMIs_Info[HMI_Index+i].SNo := HMI_Addresses[i+1];
  end_for;


  afterRestart_TP(IN := IS_COLD_RESTART_PLC or IS_HOT_RESTART_PLC, PT := T#2s );
  afterRestart_TP_FT(CLK := afterRestart_TP.Q);

  if afterRestart_TP_FT.Q then
     SendIamServer := 1;
  end_if;

  controlRoom(RCU_ChCode := ETH1_uni1 , RCU_PingDone := RCUs_PingDone[RCU_Index],
              numOfLights := NumOfLightDiningRoom , numOfOutlets := NumOfOutletDiningRoom , numOfCurtains := NumOfCurtainDiningRoom, numOfMotionSens := NumOfMotionSensDiningRoom,
              lightsOutputDevs := lightsOutputDevs , outletOutputDevs := outletOutputDevs ,
              RCU_CH_IN := void(ETH1_uni1_IN) , LightsStatus := lightsStatusDiningRoom ,OutletsStatus := outletsStatusDiningRoom, MotionSenStatus := motionSensStatus,
              EnLights := EnLights , EnLightsAN := EnLightsAN , EnOutlets := EnOutlets ,EnOutletsAN :=EnOutletsAN ,
              SendIamServer := SendIamServer , GetAllStatus := GetAllStatus);

              //stLightsDiningRoomAN := lightsStatusDiningRoom[1];


   FCU[1](enable := enableFCU[1], mode := settingsFCU[1].FCU_Mode, fanSpeed := settingsFCU[1].FCU_FanSpeed, setTemp := setTempFCU_DiningRoom[1], temp := FCU_Temp_DiningRoom, valve := FCU_valve_DiningRoom, fanLow := FCU_fanLow_DiningRoom,
                 fanMed := FCU_fanMed_DiningRoom, fanHigh := FCU_fanHigh_DiningRoom);




   for i := 1 to NumOfLightDiningRoom do
       HMIs_DataWrite[HMI_Index].lightsStatus[i] := BOOL_TO_WORD(lightsStatusDiningRoom[i]);
   end_for;

   for i := 1 to NumOfOutletDiningRoom do
       HMIs_DataWrite[HMI_Index].outletsStatus[i] := BOOL_TO_WORD(outletsStatusDiningRoom[i]);
   end_for;

   for i := 1 to NumOfMotionSensDiningRoom do
       HMIs_DataWrite[HMI_Index].motionSensStatus[i] := BOOL_TO_WORD(motionSensStatus[i]);
   end_for;

   for i := 1 to NumOfFCUsDiningRoom do
      HMIs_DataWrite[HMI_Index].FCUs_Status[i] := FCU[i].FCU_Status;
   end_for;

   for i := 1 to NumOfHMIsDiningRoom-1 do
     HMIs_DataWrite[HMI_Index+i] := HMIs_DataWrite[HMI_Index];
   end_for;


   for j := 1 to NumOfHMIsDiningRoom do
     for i := 1 to NumOfLightDiningRoom do

         enLights_RT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enLights[i]);

         enLights_FT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enLights[i]);

         if enLights_RT[j,i].Q or enLights_FT[j,i].Q then
            EnLights[i] := 1;
         end_if;
     end_for;
   end_for;

   for j := 1 to NumOfHMIsDiningRoom do
     for i := 1 to NumOfOutletDiningRoom do

         enOutlets_RT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enOutlets[i]);

         enOutlets_FT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enOutlets[i]);

         if enOutlets_RT[j,i].Q or enOutlets_FT[j,i].Q then
            EnOutlets[i] := 1;
         end_if;
     end_for;
   end_for;

  (*
   for j := 1 to NumOfHMIsDiningRoom do
     for i := 1 to NumOfCurtainDiningRoom do

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

   for j := 1 to NumOfHMIsDiningRoom do
      for i := 1 to NumOfFCUsDiningRoom do
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
             setTempFCU_DiningRoom[j] := setTempFCU_DiningRoom[j] + 0.5;
          end_if;

          enSetTempDecr_RT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enFCUs[i].SetTempCtrl.1);
          enSetTempDecr_FT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enFCUs[i].SetTempCtrl.1);

          if enSetTempDecr_RT[j,i].Q or enSetTempDecr_FT[j,i].Q then
             setTempFCU_DiningRoom[j] := setTempFCU_DiningRoom[j] - 0.5;
          end_if;

      end_for;
   end_for;

END_PROGRAM


