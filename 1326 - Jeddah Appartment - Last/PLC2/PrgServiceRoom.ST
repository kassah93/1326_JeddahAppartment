VAR_GLOBAL CONSTANT
   NumOfLightServiceRoom      : USINT := 3;
   NumOfOutletServiceRoom     : USINT := 5;
   NumOfCurtainServiceRoom    : USINT := 0;
   NumOfMotionSensServiceRoom : USINT := 1;
   NumOfFCUsServiceRoom       : USINT := 0;
   NumOfHMIsServiceRoom       : USINT := 1;
END_VAR

VAR_GLOBAL RETAIN
   lightsStatusServiceRoom  {PUBLIC_API} : TLightsStatus;
   outletsStatusServiceRoom {PUBLIC_API} : TOutletsStatus;
 (*  setTempFCU_ServiceRoom  : Array[1..NumOfFCUsServiceRoom] of REAL := [20];
   *)

END_VAR


PROGRAM PrgServiceRoom

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
                                                   (DevAddress := 1 , loopAddress := 3)];

  outletOutputDevs     : ToutletOutputDevs     := [(DevAddress := 1 , loopAddress := 4),(DevAddress := 1 , loopAddress := 5),
                                                   (DevAddress := 1 , loopAddress := 6),(DevAddress := 1 , loopAddress := 7), (DevAddress := 1 , loopAddress := 8)];

  (*curtainsUpOutputDevs : TcurtainsUpOutputDevs := [(DevAddress := 1 , loopAddress := 8)];
  curtainsDwOutputDevs : TcurtainsDwOutputDevs := [(DevAddress := 1 , loopAddress := 9)];*)

  motionSensOutputDevs : TMotionSensOutputDevs := [(DevAddress := 1 , loopAddress := 1)];


  EnLights                            : TEnLights     ;
  EnLightsAN       {PUBLIC_API}       : TEnLightsAN   ;
  EnOutlets                           : TEnOutlets    ;
  EnOutletsAN      {PUBLIC_API}       : TEnOutletsAN  ;
  EnCurtainsUp     {PUBLIC_API}       : TEnCurtainsUp ;
  EnCurtainsDw     {PUBLIC_API}       : TEnCurtainsDW ;
   //EnLightsServiceRoomAN1  {PUBLIC_API}      : TEnLightsAN1    ;
   //stLightsServiceRoomAN  {PUBLIC_API}       : BOOL     ;
  //curtainsFB       : TCurtainsFB;
  //CurtainPositWm   : TCurtainPositWm;


  //
  enLights_RT  : Array[1..NumOfHMIsServiceRoom,1..NumOfLightServiceRoom] of R_TRIG;
  enLights_FT  : Array[1..NumOfHMIsServiceRoom,1..NumOfLightServiceRoom] of F_TRIG;

  enOutlets_RT : Array[1..NumOfHMIsServiceRoom,1..NumOfOutletServiceRoom] of R_TRIG;
  enOutlets_FT : Array[1..NumOfHMIsServiceRoom,1..NumOfOutletServiceRoom] of F_TRIG;
  (*
  enCurtainsUP_RT : Array[1..NumOfHMIsServiceRoom,1..NumOfCurtainServiceRoom] of R_TRIG;
  enCurtainsUP_FT : Array[1..NumOfHMIsServiceRoom,1..NumOfCurtainServiceRoom] of F_TRIG;

  enCurtainsDW_RT : Array[1..NumOfHMIsServiceRoom,1..NumOfCurtainServiceRoom] of R_TRIG;
  enCurtainsDW_FT : Array[1..NumOfHMIsServiceRoom,1..NumOfCurtainServiceRoom] of F_TRIG; *)



  //
  i , j : USINT;
  afterRestart_TP : TP;
  afterRestart_TP_FT : F_TRIG;

  //
  motionSensStatus                : TMotionSensStatus;
  CurtainsUpStatus   {PUBLIC_API} : TCurtainsUpStatus;
  CurtainsDwStatus   {PUBLIC_API} : TCurtainsDwStatus;

  // FCU VARS
  (*FCU          : Array[1..NumOfFCUsServiceRoom] of fbControlFCU;
  enableFCU    : Array[1..NumOfFCUsServiceRoom] of BOOL;
  settingsFCU  : Array[1..NumOfFCUsServiceRoom] of TFCU_Settings;

  //modeFCU      : Array[1..NumOfFCUsServiceRoom] of TFCU_Mode;
  //fanSpeedFCU  : Array[1..NumOfFCUsServiceRoom] of TFCU_FanSpeed;

  enFCUs_FT    : Array[1..NumOfHMIsServiceRoom,1..NumOfFCUsServiceRoom] of F_TRIG;
  enFCUs_RT    : Array[1..NumOfHMIsServiceRoom,1..NumOfFCUsServiceRoom] of R_TRIG;

  enFanHigh_RT : Array[1..NumOfHMIsServiceRoom,1..NumOfFCUsServiceRoom] of R_TRIG;
  enFanMed_RT  : Array[1..NumOfHMIsServiceRoom,1..NumOfFCUsServiceRoom] of R_TRIG;
  enFanLow_RT  : Array[1..NumOfHMIsServiceRoom,1..NumOfFCUsServiceRoom] of R_TRIG;
  enFanAuto_RT : Array[1..NumOfHMIsServiceRoom,1..NumOfFCUsServiceRoom] of R_TRIG;

  enFCUCool_RT    : Array[1..NumOfHMIsServiceRoom,1..NumOfFCUsServiceRoom] of R_TRIG;
  enFCUFanOnly_RT : Array[1..NumOfHMIsServiceRoom,1..NumOfFCUsServiceRoom] of R_TRIG;

  enSetTempIncr_RT : Array[1..NumOfHMIsServiceRoom,1..NumOfFCUsServiceRoom] of R_TRIG;
  enSetTempIncr_FT : Array[1..NumOfHMIsServiceRoom,1..NumOfFCUsServiceRoom] of F_TRIG;

  enSetTempDecr_RT : Array[1..NumOfHMIsServiceRoom,1..NumOfFCUsServiceRoom] of R_TRIG;
  enSetTempDecr_FT : Array[1..NumOfHMIsServiceRoom,1..NumOfFCUsServiceRoom] of F_TRIG;  *)

  //HMIs[1..num
  HMI_Index : USINT;
  RCU_Index : USINT;
  HMI_Addresses : Array[1..NumOfHMIsServiceRoom] of USINT := [8];

  END_VAR


  if navSelect = 0 then
     lightsSelect   := 1;
     socketsSelect  := 0;

  elsif navSelect = 1 then
     lightsSelect   := 0;
     socketsSelect  := 1;
  end_if;

  HMI_Index := 7;
  RCU_Index := 5;

  if GetRemoteIPaddress(chanCode := Eth1_uni4, ethAdr := RCU_ethAdr) then
     RCUs_IPs[RCU_Index] := RCU_ethAdr.remoteIP;
  end_if;



  HMIs_Info[HMI_Index].SNo := HMI_Addresses[1];
  HMIs_Info[HMI_Index].readStAdd  := 651;
  HMIs_Info[HMI_Index].writeStAdd := 711;
  HMIs_Info[HMI_Index].readNoPoint  := SIZEOF(HMIs_DataRead[HMI_Index]) / 2;
  HMIs_Info[HMI_Index].writeNoPoint := SIZEOF(HMIs_DataWrite[HMI_Index]) / 2;

  for i := 1 to NumOfHMIsServiceRoom-1 do
    HMIs_Info[HMI_Index+i] := HMIs_Info[HMI_Index];
    HMIs_Info[HMI_Index+i].SNo := HMI_Addresses[i+1];
  end_for;


  afterRestart_TP(IN := IS_COLD_RESTART_PLC or IS_HOT_RESTART_PLC, PT := T#2s );
  afterRestart_TP_FT(CLK := afterRestart_TP.Q);

  if afterRestart_TP_FT.Q then
     SendIamServer := 1;
  end_if;

  controlRoom(RCU_ChCode := ETH1_uni4 , RCU_PingDone := RCUs_PingDone[RCU_Index],
              numOfLights := NumOfLightServiceRoom , numOfOutlets := NumOfOutletServiceRoom , numOfCurtains := 0, numOfMotionSens := NumOfMotionSensServiceRoom,
              lightsOutputDevs := lightsOutputDevs , outletOutputDevs := outletOutputDevs ,
              RCU_CH_IN := void(ETH1_uni4_IN) , LightsStatus := lightsStatusServiceRoom ,OutletsStatus := outletsStatusServiceRoom, MotionSenStatus := motionSensStatus,
              EnLights := EnLights , EnLightsAN := EnLightsAN , EnOutlets := EnOutlets ,EnOutletsAN :=EnOutletsAN ,
              SendIamServer := SendIamServer , GetAllStatus := GetAllStatus);

              //stLightsServiceRoomAN := lightsStatusServiceRoom[1];




   for i := 1 to NumOfLightServiceRoom do
       HMIs_DataWrite[HMI_Index].lightsStatus[i] := BOOL_TO_WORD(lightsStatusServiceRoom[i]);
   end_for;

   for i := 1 to NumOfOutletServiceRoom do
       HMIs_DataWrite[HMI_Index].outletsStatus[i] := BOOL_TO_WORD(outletsStatusServiceRoom[i]);
   end_for;

   for i := 1 to NumOfMotionSensServiceRoom do
       HMIs_DataWrite[HMI_Index].motionSensStatus[i] := BOOL_TO_WORD(motionSensStatus[i]);
   end_for;

   for j := 1 to NumOfHMIsServiceRoom do
     for i := 1 to NumOfLightServiceRoom do

         enLights_RT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enLights[i]);

         enLights_FT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enLights[i]);

         if enLights_RT[j,i].Q or enLights_FT[j,i].Q then
            EnLights[i] := 1;
         end_if;
     end_for;
   end_for;

   for j := 1 to NumOfHMIsServiceRoom do
     for i := 1 to NumOfOutletServiceRoom do

         enOutlets_RT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enOutlets[i]);

         enOutlets_FT[j,i](CLK := HMIs_DataRead[HMI_Index + j - 1].enOutlets[i]);

         if enOutlets_RT[j,i].Q or enOutlets_FT[j,i].Q then
            EnOutlets[i] := 1;
         end_if;
     end_for;
   end_for;


END_PROGRAM


