; Warning: This file is managed by Mosaic development environment.
; It is not recommended to change it manualy!

#program PLC3_Somfy , V1.0
;**************************************
;<ActionName/>
;<Programmer/>
;<FirmName/>
;<Copyright/>
;**************************************
;<History>
;</History>
;**************************************
#useoption CPM = 9              ; CPM type: K
#useoption RemZone = 1828       ; the remanent zone length
#useoption AlarmTime = 150      ; first alarm [milisec]
#useoption MaxCycleTime = 750   ; maximum cycle [milisec]
#useoption PLCstart = 1         ; cold start
#useoption AutoSummerTime = 0   ; internal PLC clock does not switch to daylight saving time
#useoption RestartOnError = 0   ; PLC will not be restarted after hard error

#uselib "LocalLib\StdLib_V22_20180619.mlb"
#uselib "LocalLib\SysLib_V41_20190710.mlb"
#uselib "LocalLib\ComLib_V31_20190507.mlb"
#uselib "LocalLib\CrcLib_V13_20170224.mlb"
#uselib "LocalLib\ModelLib_V22_20171205.mlb"
#uselib "LocalLib\FileLib_V25_20190605.mlb"
#uselib "LocalLib\ToStringLib_V13_20110203.mlb"
#uselib "LocalLib\TimeLib_V15_20170216.mlb"
#uselib "LocalLib\DataBoxLib_V16_20160713.mlb"
#uselib "LocalLib\EncryptLib_V12_20160923.mlb"
#uselib "LocalLib\InternetLib_V48_20190916.mlb"
#uselib "LocalLib\JsonLibEx_V17_20190625.mlb"
#uselib "LocalLib\CanvasLib_V23_20190122.mlb"
#uselib "LocalLib\ConvertLib_V22_20190306.mlb"
#uselib "LocalLib\iControlLib_V23_20190315.mlb"
#endlibs

;**************************************
#usefile "IOConfigurator\CONFIG.ST", 'auto'
#usefile "IOConfigurator\CONFIG.HWC", 'auto'
#usefile "PLC3_SOMFY.ST"
#usefile "fbSomfyRTSControl.ST"
#usefile "prgMain.ST"
#usefile "PLC3_Somfy.mcf", 'auto'
