; Warning: This file is managed by Mosaic development environment.
; It is not recommended to change it manualy!

#program PLC1 , V1.0
;**************************************
;<ActionName/>
;<Programmer/>
;<FirmName/>
;<Copyright/>
;**************************************
;<History>
;</History>
;**************************************
#useoption CPM = 10             ; CPM type: L
#useoption RemZone = 2634       ; the remanent zone length
#useoption AlarmTime = 150      ; first alarm [milisec]
#useoption MaxCycleTime = 750   ; maximum cycle [milisec]
#useoption PLCstart = 1         ; cold start
#useoption AutoSummerTime = 0   ; internal PLC clock does not switch to daylight saving time
#useoption RestartOnError = 0   ; PLC will not be restarted after hard error

#uselib "LocalLib\StdLib_V22_20180619.mlb"
#uselib "LocalLib\SysLib_V41_20190710.mlb"
#uselib "LocalLib\CrcLib_V13_20170224.mlb"
#uselib "LocalLib\CanvasLib_V23_20190122.mlb"
#uselib "LocalLib\ModelLib_V22_20171205.mlb"
#uselib "LocalLib\ColorLib_V12_20160316.mlb"
#uselib "LocalLib\ToStringLib_V13_20110203.mlb"
#uselib "LocalLib\TimeLib_V15_20170216.mlb"
#uselib "LocalLib\CanvasObjectsLib_V13_20180322.mlb"
#uselib "LocalLib\ComLib_V31_20190507.mlb"
#uselib "LocalLib\FileLib_V25_20190605.mlb"
#uselib "LocalLib\DataBoxLib_V16_20160713.mlb"
#uselib "LocalLib\EncryptLib_V12_20160923.mlb"
#uselib "LocalLib\InternetLib_V48_20190902.mlb"
#uselib "LocalLib\JsonLibEx_V17_20190625.mlb"
#uselib "LocalLib\ConvertLib_V21_20170222.mlb"
#uselib "LocalLib\iControlLib_V22_20181210.mlb"
#uselib "LocalLib\ModbusRTU_V36_20190430.mlb"
#endlibs

;**************************************
#usefile "IOConfigurator\CONFIG.ST", 'auto'
#usefile "IOConfigurator\CONFIG.HWC", 'auto'
#usefile "PLCnet\PlcNet.net", 'auto'
#usefile "PLC1.ST"
#usefile "fbControlHotelSystem_UDP.ST"
#usefile "fbControlRoom.ST"
#usefile "PrgConnectHMIs.ST"
#usefile "fbControlFCU.ST"
#usefile "prgMain.ST"
#usefile "PrgMajles.ST"
#usefile "PrgRoom1.ST"
#usefile "PrgRoom2.ST"
#usefile "PrgRoom3.ST"
#usefile "PLC1.mos"
#usefile "PLC1.mcf", 'auto'
