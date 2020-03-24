Type
  T_HMI_Info : struct
     SNo          : USINT;
     readStAdd    : UINT;
     writeStAdd   : UINT;
     readNoPoint  : UINT;
     writeNoPoint : UINT;
  End_Struct;
  
  
  //================= Read from HMI =================

  TShutterControl : struct
     Dw : WORD;
     UP : WORD;
  End_Struct;
  
  TFCU_Control : struct
     onOff       : WORD;
     SetTempCtrl : WORD; //  bit 0 for increment, bit 1 for decrement
     setTemp     : INT;
     fanSpeed    : WORD;
     mode        : WORD;
  End_Struct;

  T_HMI_DataRead : struct
     enLights   : Array[1..17] of WORD;
     enOutlets  : Array[1..8] of WORD;
     enShutters : Array[1..6] of TShutterControl;
     enFCUs     : Array[1..3] of TFCU_Control;
  End_Struct;
  
  //================= Write To HMI ==================
  
  
  TShutterStatus : struct
     Dw  : WORD;
     UP  : WORD;
     pos : WORD;
  End_Struct;
  
  TFCU_Status  : Struct
     onOffStatus    : WORD;
     setTemp        : INT;
     roomTemp       : INT;
     fanSpeed       : WORD;
     mode           : WORD;
     valve          : WORD;
     fanSpeedCtrl   : WORD;
     fanRotationVar : WORD;   // var for rotating the fan GIF in the HMI according to the current fan speed
  End_Struct;
  
  T_HMI_DataWrite : struct
     lightsStatus     : Array[1..17] of WORD;
     outletsStatus    : Array[1..8]  of WORD;
     motionSensStatus : Array[1..4]  of WORD;
     shuttersStatus   : Array[1..6]  of TShutterStatus;
     FCUs_Status      : Array[1..3]  of TFCU_Status;
  End_Struct;
  

End_Type


Var_Global Constant
   numOfHMIs : INT := 10;
   //HMIs_Info : Array[1..numOfHMIs] of T_HMI_Info := [()];
End_Var

Var_Global Retain
   HMIs_DataRead  : Array[1..numOfHMIs] of T_HMI_DataRead;     // Data is read from HMI
   HMIs_DataWrite : Array[1..numOfHMIs] of T_HMI_DataWrite;    // Data is written to HMI
   
   HMIs_Info : Array[1..numOfHMIs] of T_HMI_Info := [()];
End_Var

Var_Global
  cmdArr : Array[1..numOfHMIs * 2] of TCmdStruct;
  GrSel  : USINT ;
End_Var

PROGRAM PrgConnectHMIs
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
  master : fbModbusRTUmas2;
  //cmdArr : Array[1..numOfHMIs * 2] of TCmdStruct;
  
  i      : INT ;
  maxCmd : USINT;
  
  END_VAR
  VAR_TEMP
  END_VAR
  
  if IS_COLD_RESTART_PLC or IS_HOT_RESTART_PLC then
     GrSel := 2;
  end_if;
  
  for i := 1 to numOfHMIs do
      ModbusCmd(Gr := 2, SNo := HMIs_Info[i].SNo, FNC := 3,  StAdr := HMIs_Info[i].readStAdd,   NoPoint := HMIs_Info[i].readNoPoint, PtrData := adr(HMIs_DataRead[i]), Cmd := cmdArr[i*2-1]) ;

      ModbusCmd(Gr := 2, SNo := HMIs_Info[i].SNo, FNC := 16, StAdr := HMIs_Info[i].writeStAdd , NoPoint := HMIs_Info[i].writeNoPoint, PtrData := adr(HMIs_DataWrite[i]), Cmd := cmdArr[i*2]) ;
  end_for;
  
  //maxCmd := INT_TO_USINT(numOfHMIs * 2);
  
  maxCmd := 2;
  master(EN := true, GrSel := GrSel,  MaxCmd := maxCmd , chanCode := CH2_uni , Delay := T#0.2s, Commands := cmdArr[9], MBtimeOut := T#0.5s);



  

END_PROGRAM

