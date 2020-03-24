Type
  TFCU_Mode      : (cooling, fanOnly);
  TFCU_FanSpeed  : (auto, low, med, high);
  
  TFCU_Settings  : Struct
     FCU_Mode     : TFCU_Mode;
     FCU_FanSpeed : TFCU_FanSpeed;
  End_Struct
End_Type

FUNCTION_BLOCK fbControlFCU
  VAR_INPUT
  enable   : BOOL;
  mode     : TFCU_Mode;      // 0  is cooling, 1 is fan only
  fanSpeed : TFCU_FanSpeed;  // 0 auto, 1 low, 2 med, 3 high
  setTemp  : REAL;
  temp     : REAL;
  END_VAR
  
  VAR_OUTPUT
  FCU_Status : TFCU_Status;
  END_VAR
  
  VAR_IN_OUT
  valve   : BOOL;
  fanLow  : BOOL;
  fanMed  : BOOl;
  fanHigh : BOOL;
  END_VAR
  
  VAR
  tempDiff : REAL;
  fanRotation_tick : fbTick;
  rotationTime : Time;
  END_VAR

  tempDiff := ABS(temp - setTemp);
  
  if not enable then
     valve := 0;
     FCU_Status.fanSpeed := 0;
  else
     if temp >= setTemp then
        if mode = cooling then
           valve := 1;
        else
           valve := 0;
        end_if;
        
        if fanSpeed <> auto then
           if fanSpeed = low then
              FCU_Status.fanSpeed := 1;
           elsif fanSpeed = med then
              FCU_Status.fanSpeed := 2;
           elsif fanSpeed = high then
              FCU_Status.fanSpeed := 4;
           end_if;
        else
           if tempDiff <= 2 then
              FCU_Status.fanSpeed := 1;
           elsif tempDiff >= 2.5 and tempDiff <= 4 then
              FCU_Status.fanSpeed := 2;
           elsif tempDiff >= 4.5 then
              FCU_Status.fanSpeed := 4;
           end_if;
        end_if;
        
        
     elsif temp < setTemp - 1 then
        valve := 0;
        if mode = fanOnly and fanSpeed <> auto then
           if fanSpeed = low then
              FCU_Status.fanSpeed := 1;
           elsif fanSpeed = med then
              FCU_Status.fanSpeed := 2;
           elsif fanSpeed = high then
              FCU_Status.fanSpeed := 4;
           end_if;
        else
           FCU_Status.fanSpeed := 0;
        end_if;
     end_if;
  end_if;
  
  fanLow  := FCU_Status.fanSpeed.0;
  fanMed  := FCU_Status.fanSpeed.1;
  fanHigh := FCU_Status.fanSpeed.2;
  
  FCU_Status.onOffStatus.0 := enable;
  FCU_Status.setTemp       := REAL_TO_INT(setTemp * 100);
  FCU_Status.roomTemp      := REAL_TO_INT(temp * 100);
  FCU_Status.valve.0       := valve;
  
  if mode = cooling then
     FCU_Status.mode := 0;
  elsif mode = fanOnly then
     FCU_Status.mode := 1;
  end_if;
  
  if fanSpeed = auto then
     FCU_Status.fanSpeedCtrl := 8;
  elsif fanSpeed = low then
     FCU_Status.fanSpeedCtrl := 1;
  elsif fanSpeed = med then
     FCU_Status.fanSpeedCtrl := 2;
  elsif fanSpeed = high then
     FCU_Status.fanSpeedCtrl := 4;
  end_if;
  
  
  if FCU_Status.fanSpeed = 0 then
     FCU_Status.fanRotationVar := 0;
  elsif FCU_Status.fanSpeed = 1 then
     rotationTime := T#0.5s;
  elsif FCU_Status.fanSpeed = 2 then
     rotationTime := T#0.25s;
  elsif FCU_Status.fanSpeed = 4 then
     rotationTime := T#0.1s;
  end_if;
  
  fanRotation_tick(IN := FCU_Status.fanSpeed <> 0, PT := rotationTime);
  
  if fanRotation_tick.Q then
     FCU_Status.fanRotationVar := UINT_TO_WORD(WORD_TO_UINT(FCU_Status.fanRotationVar) + 1);
  end_if;
  
  if FCU_Status.fanRotationVar = 6 then
     FCU_Status.fanRotationVar := 0;
  end_if;
  

END_FUNCTION_BLOCK

