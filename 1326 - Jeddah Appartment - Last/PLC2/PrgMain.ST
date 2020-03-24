Var_Global Constant
   numOfRCUS : INT := 7;
End_Var

Var_Global Retain
   RCUs_IPs : Array[1..numOfRCUS] of TIPAdr := [[192,168,0,23],
                                                [192,168,0,15],
                                                [192,168,0,17],
                                                [192,168,0,109],
                                                [192,168,0,110]];
End_Var

Var_Global
   RCUs_PingDone : array[1..numOfRCUS] of BOOL;
End_Var

PROGRAM prgMain
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
  // Check RCUs connection
  ping     : fbPingIP ;
  pingInfo : T_PING_INFO;
  tick     : fbTick;
  pingSwitch : INT;
  IP        : TIPadr;
  
  //
  currentDT : DT;

  END_VAR

  // check the connection of all RCUs

  tick(IN := 1, PT :=T#1.2s );
  if tick.Q then
     pingSwitch :=  pingSwitch + 1;
  end_if;

  if pingSwitch = numOfRCUS then
     pingSwitch := 0;
  end_if;

  if pingSwitch >= 0 and pingSwitch < numOfRCUS then
     IP := RCUs_IPs[pingSwitch + 1];
  end_if;

  ping(rqPing := tick.Q , hostIP := IP , ttl := 255 , timeLimit :=T#1s ,  pingInfo := pingInfo );

  if pingSwitch >= 0 and pingSwitch < numOfRCUS then
    IF ping.done THEN
       RCUs_PingDone[pingSwitch + 1] :=1;
    END_IF;
    IF ping.busy or ping.err THEN
       RCUs_PingDone[pingSwitch + 1] :=0;
    END_IF;
  end_if;

  currentDT := GetDateTime();

END_PROGRAM

