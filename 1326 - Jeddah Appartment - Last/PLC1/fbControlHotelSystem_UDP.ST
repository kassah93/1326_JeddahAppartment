TYPE
  THotelPacket_Head : STRUCT
    frameHeader : WORD := 16#55AA;
    frameLength : UINT;
    SystemID    : DWORD := 16#41533354;
    cmdType     : Byte := 16#0F;
    frameNo     : WORD := 16#003A;
    nBuild      : BYTE := 16#FF;
    nUnit       : BYTE := 16#FF;
    nFloor      : BYTE := 16#FF;
    nRoom       : BYTE := 16#FF;
  END_STRUCT;
  TDevTypes :  (strongRelay := 1 , weakInput := 2 , weakOutput := 3 , serviceInfo := 4, curtainNode := 5,
              RS485Switch := 6, AirCond1 := 7, AirCond2 := 8, AirCond3 := 9, RS485Card := 10, RS485Heater := 11, EX_Relay := 14,
              IR := 15, EX_LED := 16, EX_Triac := 17, EX_RGB := 18, coreCtrl := 19, WeChatLock := 20, backMusic := 21,
              roomStateDimm := 22 , PMW_OUT := 23) ;



  TCtrlType : (open := 1, close := 2);

  TDevice : STRUCT
    DevType : TDevTypes;
    DevAddress : USINT ;
    loopAddress: UINT ;
    CtrlType   : TCtrlType := open;
    CtrlContent: USINT; (*from 0 to 100*)
  END_STRUCT;

  TDevCtrl : STRUCT
    NumOfDev : USINT := 1;
    DevArr : ARRAY [1..185] OF TDevice;
  END_STRUCT;

  THotelPacket : STRUCT
    Header : THotelPacket_Head;
    Data   : TDevCtrl;
    CRC    : UINT;
  END_STRUCT;

  TServerPacket : Struct
    userCode : Array[1..4] of byte := [0,0,0,0]; // keep zeros
    heartBeat: byte := 1;    // keep 1
    IP   :  TIPadr;
    port : UINT := 61000;
  END_Struct;

  TIamServerPacket : Struct
    Header         : THotelPacket_Head := (cmdType := 1 , frameNo := 16#000E);
    serverSettings : TServerPacket;
    CRC            : UINT;
  End_Struct;
  
  TAllStatusPacket : struct
    Header         : THotelPacket_Head;
    CRC            : UINT;
  End_struct;
END_TYPE

TYPE
   TDeviceStatus : STRUCT
    DevType : USINT;
    DevAddress : USINT ;
    loopAddress: UINT ;
    CtrlType   : BOOL;
    CtrlContent: USINT; (*from 0 to 100*)
  END_STRUCT;
END_TYPE


Type
    TBufferIn : Array[0..1349] of usint;
END_TYPE

FUNCTION_BLOCK fbControlHotelSystem_UDP
  VAR_INPUT
  
  RQ : BOOL;
  sendIamServer : BOOL R_EDGE;
  getAllStatus   : BOOL R_EDGE;
  ChanCode :  UINT;
  serverSettings : TServerPacket;


  END_VAR
  VAR_IN_OUT
  packet : THotelPacket;
  CH_IN : TBufferIn;
  END_vAR
  
  VAR_OUTPUT

  DevicesStatus : array[1..185] of TDeviceStatus;
  SysLock , cardType , Door : BOOl;
  numOfStatusDevs : uint;
  msgSent : BOOL;
  errCode : USINT;
  errText : STRING[100];
  END_VAR
  VAR
  IamServerPacket : TIamServerPacket;
  allStatusPacket : TAllStatusPacket;
  i : uint;
  index : uint;
  startIndex : UINT := 23;
  send_UDP : fbSendTO;
  CRC {Hidden} : PTR_TO UINT;
  END_VAR
  // OLD **** max controlled devices is 185 but the channel size must be max =  1350
  // In this project the channel length is modified in order to be able to create 7 channels
  // because when we crete 7 channels with 1350 bytes then the compiler reported allocation confilct error
  if not sendIamServer and not getAllStatus then
    if packet.Data.NumOfDev <= 0 then
       errCode := 65;
       errText := 'The number of devices is zero';
    elsif packet.Data.NumOfDev > 185 then
       errCode := 66;
       errText := 'The max number of devices is exceeded';
    else
      packet.Header.frameLength := SIZEOF(packet.Header) + 3 + (usint_to_uint(packet.Data.NumOfDev) * 6);
     // Length := packet.Header.frameLength;
      if packet.Header.frameLength <> 0 then
         if packet.Data.NumOfDev < 185  then
            CRC := adr(packet.Data.DevArr[packet.data.NumOfDev+1]);
            CRC^ := CheckCRC_16(ptr := adr(packet), length := packet.Header.frameLength - 2) ;
            packet.CRC := CRC^;
         elsif packet.Data.NumOfDev = 185 then
            packet.CRC := CheckCRC_16(ptr := adr(packet), length := packet.Header.frameLength - 2);
         end_if;
      end_if;
      send_UDP(rq := RQ, chanCode := ChanCode, lenTx := packet.Header.frameLength, data := void(packet) , mesSent => msgSent , error => errCode);
      errText := GetLastComErrTxt(errCode := errCode);
    end_if;
  elsif sendIamServer then
    IamServerPacket.Header.frameLength := SIZEOF(IamServerPacket) ;
    IamServerPacket.serverSettings := serverSettings;
    IamServerPacket.CRC := CheckCRC_16(ptr := adr(IamServerPacket), length := IamServerPacket.Header.frameLength - 2);
    
    send_UDP(rq := true, chanCode := ChanCode, lenTx := IamServerPacket.Header.frameLength, data := void(IamServerPacket) , mesSent => msgSent , error => errCode);
    errText := GetLastComErrTxt(errCode := errCode);
  elsif getAllStatus then
    allStatusPacket.Header.cmdType := 16#0E;
    allStatusPacket.Header.frameNo := 16#0001;
    allStatusPacket.Header.frameLength := SIZEOF(allStatusPacket);
    allStatusPacket.CRC := CheckCRC_16(ptr := adr(allStatusPacket), length := allStatusPacket.Header.frameLength - 2);
    
    send_UDP(rq := true, chanCode := ChanCode, lenTx := allStatusPacket.Header.frameLength, data := void(allStatusPacket) , mesSent => msgSent , error => errCode);
    errText := GetLastComErrTxt(errCode := errCode);
  end_if;
    
    
  // Read Status
  startIndex := 23;
  
  if CH_IN[8] = 14 then
    numOfStatusDevs := usint_to_uint(CH_IN[22]);
    for i := 1 to numOfStatusDevs  do
       index := startIndex + (i-1) * 6;
       DevicesStatus[i].DevType := CH_IN[index];
       DevicesStatus[i].DevAddress := CH_IN[index+1];
       DevicesStatus[i].loopAddress := USINT_TO_UINT(CH_IN[index+2]);
       if CH_IN[index+4] = 1 then
          DevicesStatus[i].CtrlType := true;
       elsif CH_IN[index+4] = 2 then
          DevicesStatus[i].CtrlType := false;
       end_if;
       DevicesStatus[i].CtrlContent := CH_IN[index+5];
    End_For;
    SysLock := usint_to_bool(CH_IN[15]);
    cardType := usint_to_bool(CH_IN[16]);
    Door  := usint_to_bool(CH_IN[17]);

  End_if;
  
END_FUNCTION_BLOCK

