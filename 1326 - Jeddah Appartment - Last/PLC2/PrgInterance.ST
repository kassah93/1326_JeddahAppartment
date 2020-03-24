VAR_GLOBAL CONSTANT
   NumOfLightInter    :USINT := 6;
   NumOfOutletInter   :USINT := 1;
   NumOfCurtainInter  :USINT := 0;
END_VAR

VAR_GLOBAL RETAIN
   lightsStatusInter  : TLightsStatus;
   outletsStatusInter : TOutletsStatus;
END_VAR

PROGRAM PrgInterance
  
  VAR
  //WebMaker
  lightsSelect   : BOOL;
  socketsSelect  : BOOL;
  navSelect      : usint;
  
  //RCU
  RCU_ethAdrToSet   : TRemoteEthAdr;
  RCU_IP : TIPadr := [192, 168, 0, 24];
  RCU_Ch_localPort : UINT;
  Set_IP           : BOOL;
  GetAllStatus  : BOOL;
  SendIamServer : BOOL;

  //controlRoom
 // controlRoom   : fbControlRoom ;
  lightsOutputDevs     : TlightsOutputDevs     := [(DevAddress := 1 , loopAddress := 1),(DevAddress := 1 , loopAddress := 2),
                                                   (DevAddress := 1 , loopAddress := 3),(DevAddress := 1 , loopAddress := 4),
                                                   (DevAddress := 1 , loopAddress := 5),(DevAddress := 1 , loopAddress := 6)];
  outletOutputDevs     : ToutletOutputDevs     := [(DevAddress := 1 , loopAddress := 7)];
  
  EnLights         : TEnLights     ;
  EnOutlets        : TEnOutlets    ;
  EnCurtainsUp     : TEnCurtainsUp ;
  EnCurtainsDw     : TEnCurtainsDW ;
  curtainsFB       : TCurtainsFB;
  CurtainsUpStatus : TCurtainsUpStatus;
  CurtainsDwStatus : TCurtainsDwStatus;
  END_VAR

  
  if navSelect = 0 then
     lightsSelect   := 1;
     socketsSelect  := 0;
     
  elsif navSelect = 1 then
     lightsSelect   := 0;
     socketsSelect  := 1;
  end_if;

  RCU_Ch_localPort := 61000;
  RCU_ethAdrToSet.remotePort := 3341;
  RCU_ethAdrToSet.localPort  := RCU_Ch_localPort;
  RCU_ethAdrToSet.remoteIP   := RCU_IP;
  
 (* controlRoom(RCU_ChCode := ETH1_uni0 , RCU_IP_toSet := RCU_IP, RCU_ethAdrToSet := RCU_ethAdrToSet ,
              numOfLights := NumOfLightInter , numOfOutlets := NumOfOutletInter , numOfCurtains := NumOfCurtainInter,
              lightsOutputDevs := lightsOutputDevs , outletOutputDevs := outletOutputDevs ,
              RCU_CH_IN := void(ETH1_uni0_IN) , LightsStatus := lightsStatusInter , OutletsStatus := outletsStatusInter,
              CurtainsUpStatus :=CurtainsUpStatus ,CurtainsDwStatus := CurtainsDwStatus ,CurtainsFB :=curtainsFB ,
              EnLights := EnLights , EnOutlets := EnOutlets ,EnCurtainsUp := EnCurtainsUp ,EnCurtainsDw :=EnCurtainsDw,
              SendIamServer := SendIamServer , GetAllStatus := GetAllStatus); *)
END_PROGRAM

