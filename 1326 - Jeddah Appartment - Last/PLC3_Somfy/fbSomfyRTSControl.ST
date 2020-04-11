VAR_GLOBAL CONSTANT
   BUFFER_SIZE : UINT := 5;
END_VAR

TYPE
   TSomfyRTSPacket : Struct
         packet : Array[0..15] of USINT;
         length : UINT;
   End_Struct;

   TSomfyRTSPacketBuff : Array[1..BUFFER_SIZE] of TSomfyRTSPacket;

   TVendorID       : Array[1..3] of USINT;
   TSomfyCtrl      : struct
        UP, DW, favPos, stop , setChannel : Bool;
        openProg : BOOL;
        set_IP : BOOL;
   End_struct;
END_TYPE


//==========================================================================

FUNCTION somfyBuffer_Push : BOOL
  VAR_INPUT
  newPacket  : TSomfyRTSPacket;
  END_VAR

  VAR_IN_OUT
  buffer : TSomfyRTSPacketBuff;
  index  : UINT;
  END_VAR
  VAR

  END_VAR

  VAR_TEMP
  emptyPacket : TSomfyRTSPacket;
  END_VAR

  if index < BUFFER_SIZE then
     if newPacket <> emptyPacket then
       index := index + 1;
       buffer[index] := newPacket;
       somfyBuffer_Push := 1;
     else
       somfyBuffer_Push := 0;
     end_if;
  else
     somfyBuffer_Push := 0;
  end_if;

END_FUNCTION


//===========================================================================

FUNCTION somfyBuffer_Pop : TSomfyRTSPacket
  VAR_IN_OUT
  buffer : TSomfyRTSPacketBuff;
  index  : UINT;
  END_VAR

  VAR_TEMP
  i : UINT;
  popedPacket : TSomfyRTSPacket;
  END_VAR

  if index > 0 then
     popedPacket := buffer[1];
     for i := 1 to BUFFER_SIZE-1 do
         buffer[i] :=  buffer[i+1];
     end_for;
     index := index - 1;
  end_if;
  somfyBuffer_Pop := popedPacket;

END_FUNCTION

//===========================================================================

FUNCTION fbSomfyRTS_Cmnd : BOOL
  // Push new RTS control packet to the buffer according to the action input
  // the buffer should be passed to fbSomfyRTSCtrl function block to execute its commands
  VAR_INPUT
  ChNum         : USINT;
  HostID        : TVendorID;    // 3 hex bytes address set for PLC as non Somfy host
  TransmitterID : TVendorID;    // ID of Transmitter written on the product
  
  UP, DW, favPos, stop , setChannel : Bool;
  openProg : BOOL;
  set_IP : BOOL;
  END_VAR
  
  VAR_IN_OUT
  //somfyCtrl     : TSomfyCtrl;
  packetsBuffer :  TSomfyRTSPacketBuff;
  buffIndex     : UINT;
  END_VAR
  
  VAR
  packet      : TSomfyRTSPacket;
  END_VAR
  
  VAR_TEMP
  length      : UINT := 2;
  i           : usint;
  frameChksum : USINT;
  END_VAR

  packet.packet[2] := 16#FA;
  
  if UP or DW or favPos or stop then
     packet.packet[0] := 16#7f;
     packet.packet[1] := 16#72;
     packet.packet[11] := 16#06;
     length := 13;
  elsif setChannel then
     packet.packet[0] := 16#68;
     packet.packet[1] := 16#73;
     packet.packet[10] := 16#05;
     length := 12;
     //setChannel := 0;
  elsif openProg then
     packet.packet[0] := 16#67;
     packet.packet[1] := 16#73;
     packet.packet[10] := 16#05;
     length := 12;
     //openProg := 0;
  elsif set_IP then
     packet.packet[0] := 16#65;
     packet.packet[1] := 16#73;
     packet.packet[10] := 16#05;
     length := 12;
     //set_IP := 0;
  end_if;
  
  if UP then
     packet.packet[10] := 16#FE;
     //UP := 0;
  elsif DW then
     packet.packet[10] := 16#FD;
     //DW := 0;
  elsif stop then
     packet.packet[10] := 16#FC;
  elsif favPos then
     packet.packet[10] := 16#FB;
     //favPos := 0;
  end_if;


  
  packet.packet[9] :=  255 -  ChNum;
  
  for i := 3 to 5  do
      packet.packet[i] := 255 - HostID[i-2];
  end_for;
  for i := 6 to 8  do
      packet.packet[i] := 255 - TransmitterID[i-5];
  end_for;

  frameChksum := CheckSum(ptr := adr(packet) , length := length-2);
  packet.packet[length-1] := frameChksum;
  packet.length := length;
  
  if up or DW or openProg or setChannel or set_IP or stop or favPos then
     if somfyBuffer_Push(newPacket := packet, buffer := packetsBuffer, index := buffIndex) then
       fbSomfyRTS_Cmnd := 1;
     else
       fbSomfyRTS_Cmnd := 0;
     end_if;
  else
     fbSomfyRTS_Cmnd := 0;
  end_if;
  


END_FUNCTION


//========================================================================================

FUNCTION_BLOCK fbSomfyRTSCtrl
  VAR_INPUT
  En      : BOOL;
  CH_ID   : UINT;
  END_VAR

  VAR_OUTPUT
  Err : USINT;
  ErrText : String;
  END_VAR

  VAR_IN_OUT
  packetsBuffer :  TSomfyRTSPacketBuff;
  buffIndex     : UINT;
  END_VAR

  VAR
  packet      : TSomfyRTSPacket;
  RQ          : BOOL;

  sendTimer   : fbTick;
  send        : fbSendTo;
  
  END_VAR

  VAR_TEMP
  emptyPacket : TSomfyRTSPacket;
  END_VAR
  
  sendTimer(IN := En and (buffIndex > 0) , PT := T#500ms);

  if sendTimer.Q then
     packet := somfyBuffer_Pop(buffer := packetsBuffer, index := buffIndex);
     if packet <> emptyPacket then
        RQ := 1;
     end_if;
  end_if;

  send(rq := En and RQ, chanCode := CH_ID, lenTx := packet.length, data := void(packet.packet), error => Err);
  if send.mesSent or Err > 0 then
     RQ := 0;
  end_if;

  if En then
      Err := send.error;
  else
      Err := 0;
  end_if;
  
  ErrText := GetLastComErrTxt(errCode := Err);

END_FUNCTION_BLOCK
