(* Warning *)
(* The file is automatically generated and all manual modifications will be lost. *)

VAR_GLOBAL CONSTANT
   CPU_TYPE : USINT := 76; (* CPU type *)
   CPU_CODE : UINT := 1001; (* CPU code *)
END_VAR

TYPE

   TCHStatistic : STRUCT
      STAT : USINT;
      ERR : USINT;
      trueMes : UDINT;
      falseMes : UDINT;
   END_STRUCT;

   TCIB_STAT_ARRAY : ARRAY[0..31] OF BYTE;

   TCIB_CHM0308_STAT : STRUCT
      OUF1 : BOOL;
      VLD1 : BOOL;
      OUF2 : BOOL;
      VLD2 : BOOL;
      OUF3 : BOOL;
      VLD3 : BOOL;
      ManMode : BOOL;
      PowerErr : BOOL;
   END_STRUCT;

   TCIB_AI3 : STRUCT
      AI1 : REAL;
      AI2 : REAL;
      AI3 : REAL;
   END_STRUCT;

   TCIB_DI3 : STRUCT
      DI1 : BOOL;
      DI2 : BOOL;
      DI3 : BOOL;
      dummy3 {HIDDEN} : BOOL;
      dummy4 {HIDDEN} : BOOL;
      dummy5 {HIDDEN} : BOOL;
      dummy6 {HIDDEN} : BOOL;
      dummy7 {HIDDEN} : BOOL;
   END_STRUCT;

   TCIB_C_HM_0308M_IN : STRUCT
      STAT : TCIB_CHM0308_STAT;
      AI : TCIB_AI3;
      DI : TCIB_DI3;
   END_STRUCT;

   TCIB_CIT0200_STAT : STRUCT
      iOUF : BOOL;
      iVLD : BOOL;
      eOUF : BOOL;
      eVLD : BOOL;
      dummy4 {HIDDEN} : BOOL;
      dummy5 {HIDDEN} : BOOL;
      dummy6 {HIDDEN} : BOOL;
      dummy7 {HIDDEN} : BOOL;
   END_STRUCT;

   TCIB_C_IT_0200R_IN : STRUCT
      STAT : TCIB_CIT0200_STAT;
      iTHERM : REAL;
      eTHERM : REAL;
   END_STRUCT;

   r0_p2_TCIB_IN : STRUCT
      intgr : REAL;
      r8_p0_IN {HIDDEN} : TCIB_C_HM_0308M_IN;
      r8_p1_IN {HIDDEN} : TCIB_C_HM_0308M_IN;
      r8_p2_IN {HIDDEN} : TCIB_C_IT_0200R_IN;
      r8_p3_IN {HIDDEN} : TCIB_C_IT_0200R_IN;
   END_STRUCT;

   TCHControl : STRUCT
      CONTROL : UINT;
   END_STRUCT;

   TCIB_AO2 : STRUCT
      AO1 : REAL;
      AO2 : REAL;
   END_STRUCT;

   TCIB_DO6 : STRUCT
      DO1 : BOOL;
      DO2 : BOOL;
      DO3 : BOOL;
      DO4 : BOOL;
      DO5 : BOOL;
      DO6 : BOOL;
      dummy6 {HIDDEN} : BOOL;
      dummy7 {HIDDEN} : BOOL;
   END_STRUCT;

   TCIB_C_HM_0308M_OUT : STRUCT
      AO : TCIB_AO2;
      DOs : TCIB_DO6;
   END_STRUCT;

   r0_p2_TCIB_OUT : STRUCT
      r8_p0_OUT {HIDDEN} : TCIB_C_HM_0308M_OUT;
      r8_p1_OUT {HIDDEN} : TCIB_C_HM_0308M_OUT;
   END_STRUCT;

   r0_p3_TCIB_IN : STRUCT
      intgr : REAL;
      r9_p0_IN {HIDDEN} : TCIB_C_HM_0308M_IN;
      r9_p1_IN {HIDDEN} : TCIB_C_HM_0308M_IN;
      r9_p2_IN {HIDDEN} : TCIB_C_IT_0200R_IN;
      r9_p3_IN {HIDDEN} : TCIB_C_IT_0200R_IN;
   END_STRUCT;

   r0_p3_TCIB_OUT : STRUCT
      r9_p0_OUT {HIDDEN} : TCIB_C_HM_0308M_OUT;
      r9_p1_OUT {HIDDEN} : TCIB_C_HM_0308M_OUT;
   END_STRUCT;

   TBIN_6DIM : STRUCT
      DI0 : BOOL;
      DI1 : BOOL;
      DI2 : BOOL;
      DI3 : BOOL;
      IN230 : BOOL;
      HDO : BOOL;
      dummy6 {HIDDEN} : BOOL;
      dummy7 {HIDDEN} : BOOL;
   END_STRUCT;

   TSTPW : STRUCT
      WCIB1 : BOOL;
      ECIB1 : BOOL;
      WCIB2 : BOOL;
      ECIB2 : BOOL;
      WSRC : BOOL;
      ESRC : BOOL;
      WACU : BOOL;
      EACU : BOOL;
   END_STRUCT;

   TAIStat : STRUCT
      UNF : BOOL;
      UNR : BOOL;
      OVR : BOOL;
      OVF : BOOL;
      FLS : BOOL;
      CJC : BOOL;
      dummy6 {HIDDEN} : BOOL;
      dummy7 {HIDDEN} : BOOL;
      CHC : BOOL;
      dummy9 {HIDDEN} : BOOL;
      dummy10 {HIDDEN} : BOOL;
      dummy11 {HIDDEN} : BOOL;
      dummy12 {HIDDEN} : BOOL;
      dummy13 {HIDDEN} : BOOL;
      dummy14 {HIDDEN} : BOOL;
      dummy15 {HIDDEN} : BOOL;
   END_STRUCT;

   TAI : STRUCT
      STAT : TAIStat;
      FS : INT;
      ENG : REAL;
      PCT : REAL;
   END_STRUCT;

   TAIPW : STRUCT
      UCIB1 : REAL;
      UCIB2 : REAL;
      USRC : REAL;
      UACU : REAL;
   END_STRUCT;

   TBIN_2DO : STRUCT
      DO0 : BOOL;
      DO1 : BOOL;
      dummy2 {HIDDEN} : BOOL;
      dummy3 {HIDDEN} : BOOL;
      dummy4 {HIDDEN} : BOOL;
      dummy5 {HIDDEN} : BOOL;
      dummy6 {HIDDEN} : BOOL;
      dummy7 {HIDDEN} : BOOL;
   END_STRUCT;

   TUniStat : STRUCT
      DSR : BOOL;
      CTS : BOOL;
      dummy2 {HIDDEN} : BOOL;
      TRO : BOOL;
      RCF : BOOL;
      ROV : BOOL;
      TRF : BOOL;
      ARC : BOOL;
   END_STRUCT;

   TZONE_ARRAY_CH2_RX : ARRAY[0..255] OF USINT;

   TUNI_CH2_IN : STRUCT
      STAT : TUniStat;
      ERR : USINT;
      NUMR : UINT;
      DATA : TZONE_ARRAY_CH2_RX;
   END_STRUCT;

   TUniCont : STRUCT
      dummy0 {HIDDEN} : BOOL;
      dummy1 {HIDDEN} : BOOL;
      dummy2 {HIDDEN} : BOOL;
      dummy3 {HIDDEN} : BOOL;
      dummy4 {HIDDEN} : BOOL;
      TRG : BOOL;
      CLR : BOOL;
      ACN : BOOL;
   END_STRUCT;

   TUniSign : STRUCT
      DTR : BOOL;
      RTS : BOOL;
      dummy2 {HIDDEN} : BOOL;
      dummy3 {HIDDEN} : BOOL;
      dummy4 {HIDDEN} : BOOL;
      dummy5 {HIDDEN} : BOOL;
      dummy6 {HIDDEN} : BOOL;
      dummy7 {HIDDEN} : BOOL;
   END_STRUCT;

   TZONE_ARRAY_CH2_TX : ARRAY[0..255] OF USINT;

   TUNI_CH2_OUT : STRUCT
      CONT : TUniCont;
      SIGN : TUniSign;
      NUMT : UINT;
      DATA : TZONE_ARRAY_CH2_TX;
   END_STRUCT;

   TZONE_ARRAY_ETH1_UNI0_RX : ARRAY[0..799] OF USINT;

   TUNI_ETH1_UNI0_IN : STRUCT
      STAT : TUniStat;
      ERR : USINT;
      NUMR : UINT;
      DATA : TZONE_ARRAY_ETH1_UNI0_RX;
   END_STRUCT;

   TZONE_ARRAY_ETH1_UNI0_TX : ARRAY[0..511] OF USINT;

   TUNI_ETH1_UNI0_OUT : STRUCT
      CONT : TUniCont;
      SIGN : TUniSign;
      NUMT : UINT;
      DATA : TZONE_ARRAY_ETH1_UNI0_TX;
   END_STRUCT;

   TZONE_ARRAY_ETH1_UNI1_RX : ARRAY[0..799] OF USINT;

   TUNI_ETH1_UNI1_IN : STRUCT
      STAT : TUniStat;
      ERR : USINT;
      NUMR : UINT;
      DATA : TZONE_ARRAY_ETH1_UNI1_RX;
   END_STRUCT;

   TZONE_ARRAY_ETH1_UNI1_TX : ARRAY[0..511] OF USINT;

   TUNI_ETH1_UNI1_OUT : STRUCT
      CONT : TUniCont;
      SIGN : TUniSign;
      NUMT : UINT;
      DATA : TZONE_ARRAY_ETH1_UNI1_TX;
   END_STRUCT;

   TZONE_ARRAY_ETH1_UNI2_RX : ARRAY[0..799] OF USINT;

   TUNI_ETH1_UNI2_IN : STRUCT
      STAT : TUniStat;
      ERR : USINT;
      NUMR : UINT;
      DATA : TZONE_ARRAY_ETH1_UNI2_RX;
   END_STRUCT;

   TZONE_ARRAY_ETH1_UNI2_TX : ARRAY[0..511] OF USINT;

   TUNI_ETH1_UNI2_OUT : STRUCT
      CONT : TUniCont;
      SIGN : TUniSign;
      NUMT : UINT;
      DATA : TZONE_ARRAY_ETH1_UNI2_TX;
   END_STRUCT;

   TZONE_ARRAY_ETH1_UNI3_RX : ARRAY[0..1349] OF USINT;

   TUNI_ETH1_UNI3_IN : STRUCT
      STAT : TUniStat;
      ERR : USINT;
      NUMR : UINT;
      DATA : TZONE_ARRAY_ETH1_UNI3_RX;
   END_STRUCT;

   TZONE_ARRAY_ETH1_UNI3_TX : ARRAY[0..1349] OF USINT;

   TUNI_ETH1_UNI3_OUT : STRUCT
      CONT : TUniCont;
      SIGN : TUniSign;
      NUMT : UINT;
      DATA : TZONE_ARRAY_ETH1_UNI3_TX;
   END_STRUCT;

   TZONE_ARRAY_ETH1_UNI4_RX : ARRAY[0..799] OF USINT;

   TUNI_ETH1_UNI4_IN : STRUCT
      STAT : TUniStat;
      ERR : USINT;
      NUMR : UINT;
      DATA : TZONE_ARRAY_ETH1_UNI4_RX;
   END_STRUCT;

   TZONE_ARRAY_ETH1_UNI4_TX : ARRAY[0..511] OF USINT;

   TUNI_ETH1_UNI4_OUT : STRUCT
      CONT : TUniCont;
      SIGN : TUniSign;
      NUMT : UINT;
      DATA : TZONE_ARRAY_ETH1_UNI4_TX;
   END_STRUCT;

   TZONE_ARRAY_ETH1_UNI5_RX : ARRAY[0..799] OF USINT;

   TUNI_ETH1_UNI5_IN : STRUCT
      STAT : TUniStat;
      ERR : USINT;
      NUMR : UINT;
      DATA : TZONE_ARRAY_ETH1_UNI5_RX;
   END_STRUCT;

   TZONE_ARRAY_ETH1_UNI5_TX : ARRAY[0..511] OF USINT;

   TUNI_ETH1_UNI5_OUT : STRUCT
      CONT : TUniCont;
      SIGN : TUniSign;
      NUMT : UINT;
      DATA : TZONE_ARRAY_ETH1_UNI5_TX;
   END_STRUCT;

   TZONE_ARRAY_ETH1_UNI6_RX : ARRAY[0..799] OF USINT;

   TUNI_ETH1_UNI6_IN : STRUCT
      STAT : TUniStat;
      ERR : USINT;
      NUMR : UINT;
      DATA : TZONE_ARRAY_ETH1_UNI6_RX;
   END_STRUCT;

   TZONE_ARRAY_ETH1_UNI6_TX : ARRAY[0..511] OF USINT;

   TUNI_ETH1_UNI6_OUT : STRUCT
      CONT : TUniCont;
      SIGN : TUniSign;
      NUMT : UINT;
      DATA : TZONE_ARRAY_ETH1_UNI6_TX;
   END_STRUCT;

END_TYPE

VAR_GLOBAL_INPUT
(* CF-1140 *)
   r0_p2_CIB_Statistic : TCHStatistic;
   r0_p2_CIB_STAT : TCIB_STAT_ARRAY;
   r0_p2_CIB_ERR : TCIB_STAT_ARRAY;
   r0_p2_CIB_IN : r0_p2_TCIB_IN;
(* C-HM-0308M *)
   r8_p0_IN AT r0_p2_CIB_IN.r8_p0_IN : TCIB_C_HM_0308M_IN;
(* C-HM-0308M *)
   r8_p1_IN AT r0_p2_CIB_IN.r8_p1_IN : TCIB_C_HM_0308M_IN;
(* C-IT-0200R *)
   r8_p2_IN AT r0_p2_CIB_IN.r8_p2_IN : TCIB_C_IT_0200R_IN;
(* C-IT-0200R *)
   r8_p3_IN AT r0_p2_CIB_IN.r8_p3_IN : TCIB_C_IT_0200R_IN;
(* CF-1140 *)
   r0_p3_CIB_Statistic : TCHStatistic;
   r0_p3_CIB_STAT : TCIB_STAT_ARRAY;
   r0_p3_CIB_ERR : TCIB_STAT_ARRAY;
   r0_p3_CIB_IN : r0_p3_TCIB_IN;
(* C-HM-0308M *)
   r9_p0_IN AT r0_p3_CIB_IN.r9_p0_IN : TCIB_C_HM_0308M_IN;
(* C-HM-0308M *)
   r9_p1_IN AT r0_p3_CIB_IN.r9_p1_IN : TCIB_C_HM_0308M_IN;
(* C-IT-0200R *)
   r9_p2_IN AT r0_p3_CIB_IN.r9_p2_IN : TCIB_C_IT_0200R_IN;
(* C-IT-0200R *)
   r9_p3_IN AT r0_p3_CIB_IN.r9_p3_IN : TCIB_C_IT_0200R_IN;
(* IR-1061 *)
   r0_p5_DI : TBIN_6DIM;
   r0_p5_STPW : TSTPW;
   r0_p5_AI0 : TAI;
   r0_p5_AI1 : TAI;
   r0_p5_AI2 : TAI;
   r0_p5_AI3 : TAI;
   r0_p5_AIPW : TAIPW := (UCIB1 := 1, UCIB2 := 1, USRC := 1, UACU := 1);
(* CH2 *)
   r0_p0_Statistic_CH2 : TCHStatistic;
   r0_p0_UNI_CH2_IN : TUNI_CH2_IN;
   (* Aliases *)
   CH2_IN AT r0_p0_UNI_CH2_IN.DATA;
(* ETH1_UNI0 *)
   r0_p0_Statistic_ETH1_UNI0 : TCHStatistic;
   UNI_ETH1_UNI0_IN : TUNI_ETH1_UNI0_IN;
   (* Aliases *)
   Interance_Statistic_ETH1_UNI0 AT r0_p0_Statistic_ETH1_UNI0;
   Interance_UNI_ETH1_UNI0_IN AT UNI_ETH1_UNI0_IN;
   ETH1_UNI0_IN AT UNI_ETH1_UNI0_IN.DATA;
(* ETH1_UNI1 *)
   r0_p0_Statistic_ETH1_UNI1 : TCHStatistic;
   UNI_ETH1_UNI1_IN : TUNI_ETH1_UNI1_IN;
   (* Aliases *)
   DiningRoom_Statistic_ETH1_UNI1 AT r0_p0_Statistic_ETH1_UNI1;
   DiningRoom_UNI_ETH1_UNI1_IN AT UNI_ETH1_UNI1_IN;
   ETH1_UNI1_IN AT UNI_ETH1_UNI1_IN.DATA;
(* ETH1_UNI2 *)
   r0_p0_Statistic_ETH1_UNI2 : TCHStatistic;
   UNI_ETH1_UNI2_IN : TUNI_ETH1_UNI2_IN;
   (* Aliases *)
   LivingRoom_Statistic_ETH1_UNI2 AT r0_p0_Statistic_ETH1_UNI2;
   LivingRoom_UNI_ETH1_UNI2_IN AT UNI_ETH1_UNI2_IN;
   ETH1_UNI2_IN AT UNI_ETH1_UNI2_IN.DATA;
(* ETH1_UNI3 *)
   r0_p0_Statistic_ETH1_UNI3 : TCHStatistic;
   UNI_ETH1_UNI3_IN : TUNI_ETH1_UNI3_IN;
   (* Aliases *)
   Kitchen_Statistic_ETH1_UNI3 AT r0_p0_Statistic_ETH1_UNI3;
   Kitchen_UNI_ETH1_UNI3_IN AT UNI_ETH1_UNI3_IN;
   ETH1_UNI3_IN AT UNI_ETH1_UNI3_IN.DATA;
(* ETH1_UNI4 *)
   r0_p0_Statistic_ETH1_UNI4 : TCHStatistic;
   UNI_ETH1_UNI4_IN : TUNI_ETH1_UNI4_IN;
   (* Aliases *)
   ServiceRoom_Statistic_ETH1_UNI4 AT r0_p0_Statistic_ETH1_UNI4;
   ServiceRoom_UNI_ETH1_UNI4_IN AT UNI_ETH1_UNI4_IN;
   ETH1_uni4_IN AT UNI_ETH1_UNI4_IN.DATA;
(* ETH1_UNI5 *)
   r0_p0_Statistic_ETH1_UNI5 : TCHStatistic;
   UNI_ETH1_UNI5_IN : TUNI_ETH1_UNI5_IN;
   (* Aliases *)
   MasterRoom_Statistic_ETH1_UNI5 AT r0_p0_Statistic_ETH1_UNI5;
   MasterRoom_UNI_ETH1_UNI5_IN AT UNI_ETH1_UNI5_IN;
   ETH1_UNI5_IN AT UNI_ETH1_UNI5_IN.DATA;
(* ETH1_UNI6 *)
   r0_p0_Statistic_ETH1_UNI6 : TCHStatistic;
   UNI_ETH1_UNI6_IN : TUNI_ETH1_UNI6_IN;
   (* Aliases *)
   Room4_Statistic_ETH1_UNI6 AT r0_p0_Statistic_ETH1_UNI6;
   Room4_UNI_ETH1_UNI6_IN AT UNI_ETH1_UNI6_IN;
   ETH1_UNI6_IN AT UNI_ETH1_UNI6_IN.DATA;
END_VAR

VAR_GLOBAL_OUTPUT
(* CF-1140 *)
   r0_p2_CIB_Control : TCHControl;
   r0_p2_CIB_OUT : r0_p2_TCIB_OUT;
(* C-HM-0308M *)
   r8_p0_OUT AT r0_p2_CIB_OUT.r8_p0_OUT : TCIB_C_HM_0308M_OUT;
(* C-HM-0308M *)
   r8_p1_OUT AT r0_p2_CIB_OUT.r8_p1_OUT : TCIB_C_HM_0308M_OUT;
(* CF-1140 *)
   r0_p3_CIB_Control : TCHControl;
   r0_p3_CIB_OUT : r0_p3_TCIB_OUT;
(* C-HM-0308M *)
   r9_p0_OUT AT r0_p3_CIB_OUT.r9_p0_OUT : TCIB_C_HM_0308M_OUT;
(* C-HM-0308M *)
   r9_p1_OUT AT r0_p3_CIB_OUT.r9_p1_OUT : TCIB_C_HM_0308M_OUT;
(* IR-1061 *)
   r0_p5_DO : TBIN_2DO;
(* CH2 *)
   r0_p0_Control_CH2 : TCHControl;
   r0_p0_UNI_CH2_OUT : TUNI_CH2_OUT;
   (* Aliases *)
   CH2_OUT AT r0_p0_UNI_CH2_OUT.DATA;
(* ETH1_UNI0 *)
   r0_p0_Control_ETH1_UNI0 : TCHControl;
   UNI_ETH1_UNI0_OUT : TUNI_ETH1_UNI0_OUT;
   (* Aliases *)
   Interance_Control_ETH1_UNI0 AT r0_p0_Control_ETH1_UNI0;
   Interance_UNI_ETH1_UNI0_OUT AT UNI_ETH1_UNI0_OUT;
   ETH1_UNI0_OUT AT UNI_ETH1_UNI0_OUT.DATA;
(* ETH1_UNI1 *)
   r0_p0_Control_ETH1_UNI1 : TCHControl;
   UNI_ETH1_UNI1_OUT : TUNI_ETH1_UNI1_OUT;
   (* Aliases *)
   DiningRoom_Control_ETH1_UNI1 AT r0_p0_Control_ETH1_UNI1;
   DiningRoom_UNI_ETH1_UNI1_OUT AT UNI_ETH1_UNI1_OUT;
   ETH1_UNI1_OUT AT UNI_ETH1_UNI1_OUT.DATA;
(* ETH1_UNI2 *)
   r0_p0_Control_ETH1_UNI2 : TCHControl;
   UNI_ETH1_UNI2_OUT : TUNI_ETH1_UNI2_OUT;
   (* Aliases *)
   LivingRoom_Control_ETH1_UNI2 AT r0_p0_Control_ETH1_UNI2;
   LivingRoom_UNI_ETH1_UNI2_OUT AT UNI_ETH1_UNI2_OUT;
   ETH1_UNI2_OUT AT UNI_ETH1_UNI2_OUT.DATA;
(* ETH1_UNI3 *)
   r0_p0_Control_ETH1_UNI3 : TCHControl;
   UNI_ETH1_UNI3_OUT : TUNI_ETH1_UNI3_OUT;
   (* Aliases *)
   Kitchen_Control_ETH1_UNI3 AT r0_p0_Control_ETH1_UNI3;
   Kitchen_UNI_ETH1_UNI3_OUT AT UNI_ETH1_UNI3_OUT;
   ETH1_UNI3_OUT AT UNI_ETH1_UNI3_OUT.DATA;
(* ETH1_UNI4 *)
   r0_p0_Control_ETH1_UNI4 : TCHControl;
   UNI_ETH1_UNI4_OUT : TUNI_ETH1_UNI4_OUT;
   (* Aliases *)
   ServiceRoom_Control_ETH1_UNI4 AT r0_p0_Control_ETH1_UNI4;
   ServiceRoom_UNI_ETH1_UNI4_OUT AT UNI_ETH1_UNI4_OUT;
   ETH1_uni4_OUT AT UNI_ETH1_UNI4_OUT.DATA;
(* ETH1_UNI5 *)
   r0_p0_Control_ETH1_UNI5 : TCHControl;
   UNI_ETH1_UNI5_OUT : TUNI_ETH1_UNI5_OUT;
   (* Aliases *)
   MasterRoom_Control_ETH1_UNI5 AT r0_p0_Control_ETH1_UNI5;
   MasterRoom_UNI_ETH1_UNI5_OUT AT UNI_ETH1_UNI5_OUT;
   ETH1_UNI5_OUT AT UNI_ETH1_UNI5_OUT.DATA;
(* ETH1_UNI6 *)
   r0_p0_Control_ETH1_UNI6 : TCHControl;
   UNI_ETH1_UNI6_OUT : TUNI_ETH1_UNI6_OUT;
   (* Aliases *)
   Room4_Control_ETH1_UNI6 AT r0_p0_Control_ETH1_UNI6;
   Room4_UNI_ETH1_UNI6_OUT AT UNI_ETH1_UNI6_OUT;
   ETH1_UNI6_OUT AT UNI_ETH1_UNI6_OUT.DATA;
END_VAR

VAR_GLOBAL
(* C-HM-0308M *)
   (* Aliases *)
   FCU3_DiningRoom_IN AT r8_p0_IN;
   FCU3_DiningRoom_OUT AT r8_p0_OUT;
   FCU_valve_DiningRoom AT r8_p0_OUT.DOs.DO4;
   FCU_fanHigh_DiningRoom AT r8_p0_OUT.DOs.DO3;
   FCU_fanMed_DiningRoom AT r8_p0_OUT.DOs.DO2;
   FCU_fanLow_DiningRoom AT r8_p0_OUT.DOs.DO1;
(* C-HM-0308M *)
   (* Aliases *)
   FCU4_Kitchen_IN AT r8_p1_IN;
   FCU4_Kitchen_OUT AT r8_p1_OUT;
   FCU_valve_Kitchen AT r8_p1_OUT.DOs.DO4;
   FCU_fanHigh_Kitchen AT r8_p1_OUT.DOs.DO3;
   FCU_fanMed_Kitchen AT r8_p1_OUT.DOs.DO2;
   FCU_fanLow_Kitchen AT r8_p1_OUT.DOs.DO1;
(* C-IT-0200R *)
   (* Aliases *)
   TS3_DiningRoom_IN AT r8_p2_IN;
   FCU_Temp_DiningRoom AT r8_p2_IN.iTHERM;
(* C-IT-0200R *)
   (* Aliases *)
   TS4_Kitchen_IN AT r8_p3_IN;
   FCU_Temp_Kitchen AT r8_p3_IN.iTHERM;
(* C-HM-0308M *)
   (* Aliases *)
   FCU5_MasterRoom_IN {PUBLIC} AT r9_p0_IN;
   FCU5_MasterRoom_OUT AT r9_p0_OUT;
   FCU_valve_MasterRoom AT r9_p0_OUT.DOs.DO4;
   FCU_fanHigh_MasterRoom AT r9_p0_OUT.DOs.DO3;
   FCU_fanMed_MasterRoom AT r9_p0_OUT.DOs.DO2;
   FCU_fanLow_MasterRoom AT r9_p0_OUT.DOs.DO1;
(* C-HM-0308M *)
   (* Aliases *)
   FCU9_Room4_IN AT r9_p1_IN;
   FCU9_Room4_OUT AT r9_p1_OUT;
   FCU_valve_Room4 AT r9_p1_OUT.DOs.DO4;
   FCU_fanHigh_Room4 AT r9_p1_OUT.DOs.DO3;
   FCU_fanMed_Room4 AT r9_p1_OUT.DOs.DO2;
   FCU_fanLow_Room4 AT r9_p1_OUT.DOs.DO1;
(* C-IT-0200R *)
   (* Aliases *)
   TS5_MasterRoom_IN AT r9_p2_IN;
   FCU_Temp_MasterRoom AT r9_p2_IN.iTHERM;
(* C-IT-0200R *)
   (* Aliases *)
   TS9_Room4_IN AT r9_p3_IN;
   FCU_Temp_Room4 AT r9_p3_IN.iTHERM;
END_VAR

VAR_EXTERNAL
END_VAR



(* ******************************************************************************* *)
(* Generated by Mosaic *)
(* © 2001-2020 Teco a.s. *)
