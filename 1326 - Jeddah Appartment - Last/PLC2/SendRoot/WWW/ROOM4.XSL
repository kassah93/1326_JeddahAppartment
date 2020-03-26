<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dc="http://purl.org/dc/elements/1.1/" version="1.0">
<xsl:output doctype-public="-//W3C//DTD HTML 4.01 STRICT//EN" encoding="UTF-8" />
<xsl:template match="/PAGE">
<html>
<head>
<meta name="viewport" content="width=device-width" />
<meta name="generator" content="WebMaker" />
<meta name="author" content="Teco a.s." />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache, must-revalidate" />
<meta http-equiv="expires" content="0" />
<link rel="shortcut icon" href="FAVICON.ICO" type="image/x-icon" />
<link href="STYLE.CSS" rel="stylesheet" type="text/css" />
<title>
<xsl:value-of select="/PAGE/@TITLE" />
Room4</title>
<script src="ROOM4.JS?U=1585234965" language="JavaScript" charset="utf-8" />
<style type="text/css">.mono {font-family: Verdana, Arial, FreeSans, sans-serif;}</style>
</head>
<body onload="GetXML('ROOM4.XML'); FunWatchDog();" style="margin: 0px 0px 0px 0px">
<xsl:if test="1585234965 != ACCESS/@UCID">
<xsl:attribute name="onload">
null;
</xsl:attribute>
<div id="cachewarning" style="text-align: left;"></div>
<script src="REFCLR.JS" language="JavaScript" charset="utf-8"></script>
</xsl:if>
<xsl:if test="1585234965 = ACCESS/@UCID">
<table cellpadding="0" cellspacing="0">
<tr>
<!--menu-->
<!--plan-->
<td id="page" style="border-left: 1px solid black; border-top: 1px solid black;">
<div style="background-color:#969696;position: relative; width: 412px; height: 734px;">
<form action="javascript:PostGlobal();">
<xsl:if test="INPUT[10]/@VALUE = 0">
<input class="mono" tabindex="3" type="text" id="INPUT55" style="position: absolute; top: 250px; left: 346px; width: 32px; z-index: 58; background: none; visibility: hidden;" value="{INPUT[20]/@VALUE}" readonly="readonly" />
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<input class="mono" tabindex="3" type="text" id="INPUT55" style="position: absolute; top: 250px; left: 346px; width: 32px; z-index: 58; background: none;" value="{INPUT[20]/@VALUE}" readonly="readonly" />
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE = 0">
<input class="mono" tabindex="1" type="text" id="INPUT63" style="position: absolute; top: 359px; left: 186px; width: 24px; z-index: 68; background-color: #DCDCDC; border: none; visibility: hidden;" value="{INPUT[22]/@VALUE}" name="{INPUT[22]/@NAME}" onfocus="SetInputEdited(63, event);" onblur="InputFocused[62]=0" onkeydown="SetInputEdited(63, event);"></input>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<input class="mono" tabindex="1" type="text" id="INPUT63" style="position: absolute; top: 359px; left: 186px; width: 24px; z-index: 68; background-color: #DCDCDC; border: none;" value="{INPUT[22]/@VALUE}" name="{INPUT[22]/@NAME}" onfocus="SetInputEdited(63, event);" onblur="InputFocused[62]=0" onkeydown="SetInputEdited(63, event);"></input>
</xsl:if>
</form>
<div style="position: absolute; top: 170px; left: 6px; z-index: 1; background-image: url(IMAGES/CONSOLE.PNG); line-height: 450px; height: 450px; width: 400px;"></div>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[2]/@VALUE = 0">
<div id="INPUT1" style="position: absolute; top: 296px; left: 45px; z-index: 2; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div id="INPUT1" style="position: absolute; top: 296px; left: 45px; z-index: 2; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[2]/@VALUE = 0">
<div id="INPUT1" style="position: absolute; top: 296px; left: 45px; z-index: 2; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div id="INPUT1" style="position: absolute; top: 296px; left: 45px; z-index: 2; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[3]/@VALUE = 0">
<div id="INPUT2" style="position: absolute; top: 296px; left: 174px; z-index: 3; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div id="INPUT2" style="position: absolute; top: 296px; left: 174px; z-index: 3; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[3]/@VALUE = 0">
<div id="INPUT2" style="position: absolute; top: 296px; left: 174px; z-index: 3; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div id="INPUT2" style="position: absolute; top: 296px; left: 174px; z-index: 3; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[4]/@VALUE = 0">
<div id="INPUT3" style="position: absolute; top: 296px; left: 303px; z-index: 4; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div id="INPUT3" style="position: absolute; top: 296px; left: 303px; z-index: 4; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[4]/@VALUE = 0">
<div id="INPUT3" style="position: absolute; top: 296px; left: 303px; z-index: 4; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div id="INPUT3" style="position: absolute; top: 296px; left: 303px; z-index: 4; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[5]/@VALUE = 0">
<div id="INPUT4" style="position: absolute; top: 420px; left: 45px; z-index: 5; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE != 0">
<div id="INPUT4" style="position: absolute; top: 420px; left: 45px; z-index: 5; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[5]/@VALUE = 0">
<div id="INPUT4" style="position: absolute; top: 420px; left: 45px; z-index: 5; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE != 0">
<div id="INPUT4" style="position: absolute; top: 420px; left: 45px; z-index: 5; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[6]/@VALUE = 0">
<div id="INPUT5" style="position: absolute; top: 420px; left: 174px; z-index: 6; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div id="INPUT5" style="position: absolute; top: 420px; left: 174px; z-index: 6; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[6]/@VALUE = 0">
<div id="INPUT5" style="position: absolute; top: 420px; left: 174px; z-index: 6; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div id="INPUT5" style="position: absolute; top: 420px; left: 174px; z-index: 6; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE = 0">
<xsl:if test="INPUT[8]/@VALUE = 0">
<div id="INPUT6" style="position: absolute; top: 375px; left: 185px; z-index: 7; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<div id="INPUT6" style="position: absolute; top: 375px; left: 185px; z-index: 7; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<xsl:if test="INPUT[8]/@VALUE = 0">
<div id="INPUT6" style="position: absolute; top: 375px; left: 185px; z-index: 7; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<div id="INPUT6" style="position: absolute; top: 375px; left: 185px; z-index: 7; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
</xsl:if>
<div style="position: absolute; top: 14px; left: 10px; z-index: 8; background-image: url(IMAGES/TECO-LOG.PNG); line-height: 31px; height: 31px; width: 150px;"></div>
<div style="position: absolute; top: 60px; left: 6px; z-index: 9; background-image: url(IMAGES/BAR_-_WI.PNG); line-height: 65px; height: 65px; width: 400px;"></div>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 31px; z-index: 10;height: 5px; width: 90px; border: none; background-color: #F0F0F0; visibility: hidden;" id="INPUT7"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 31px; z-index: 10;height: 5px; width: 90px; border: none; background-color: #F0F0F0;" id="INPUT7"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 121px; z-index: 11;height: 5px; width: 90px; border: none; background-color: #F0F0F0; visibility: hidden;" id="INPUT8"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 121px; z-index: 11;height: 5px; width: 90px; border: none; background-color: #F0F0F0;" id="INPUT8"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 211px; z-index: 12;height: 5px; width: 90px; border: none; background-color: #F0F0F0; visibility: hidden;" id="INPUT9"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 211px; z-index: 12;height: 5px; width: 90px; border: none; background-color: #F0F0F0;" id="INPUT9"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 50px; z-index: 13; color: #646464; font-weight: bold; visibility: hidden;" id="INPUT10">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 50px; z-index: 13; color: #646464; font-weight: bold;" id="INPUT10">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 134px; z-index: 14; color: #646464; font-weight: bold; visibility: hidden;" id="INPUT11">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 134px; z-index: 14; color: #646464; font-weight: bold;" id="INPUT11">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 220px; z-index: 15; color: #646464; font-weight: bold; visibility: hidden;" id="INPUT12">CURTAINS</div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 220px; z-index: 15; color: #646464; font-weight: bold;" id="INPUT12">CURTAINS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 50px; z-index: 16; color: #6200EE; font-weight: bold; visibility: hidden;" id="INPUT13">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 50px; z-index: 16; color: #6200EE; font-weight: bold;" id="INPUT13">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 134px; z-index: 17; color: #6200EE; font-weight: bold; visibility: hidden;" id="INPUT14">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 134px; z-index: 17; color: #6200EE; font-weight: bold;" id="INPUT14">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 220px; z-index: 18; color: #6200EE; font-weight: bold; visibility: hidden;" id="INPUT15">CURTAINS</div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 220px; z-index: 18; color: #6200EE; font-weight: bold;" id="INPUT15">CURTAINS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 31px; z-index: 19;height: 5px; width: 90px; border: none; background-color: #6200EE; visibility: hidden;" id="INPUT16"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 31px; z-index: 19;height: 5px; width: 90px; border: none; background-color: #6200EE;" id="INPUT16"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 121px; z-index: 20;height: 5px; width: 90px; border: none; background-color: #6200EE; visibility: hidden;" id="INPUT17"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 121px; z-index: 20;height: 5px; width: 90px; border: none; background-color: #6200EE;" id="INPUT17"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 211px; z-index: 21;height: 5px; width: 90px; border: none; background-color: #6200EE; visibility: hidden;" id="INPUT18"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 211px; z-index: 21;height: 5px; width: 90px; border: none; background-color: #6200EE;" id="INPUT18"></div>
</xsl:if>
<div onclick="PostXML19()" id="INPUT19" style="position: absolute; top: 75px; left: 30px; z-index: 22;cursor:pointer;height:35px; width:90px; border: none; background: none;"></div>
<div onclick="PostXML20()" id="INPUT20" style="position: absolute; top: 75px; left: 121px; z-index: 23;cursor:pointer;height:35px; width:90px; border: none; background: none;"></div>
<div onclick="PostXML21()" id="INPUT21" style="position: absolute; top: 75px; left: 211px; z-index: 24;cursor:pointer;height:35px; width:90px; border: none; background: none;"></div>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 301px; z-index: 25;height: 5px; width: 90px; border: none; background-color: #F0F0F0; visibility: hidden;" id="INPUT22"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 301px; z-index: 25;height: 5px; width: 90px; border: none; background-color: #F0F0F0;" id="INPUT22"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 336px; z-index: 26; color: #646464; font-weight: bold; visibility: hidden;" id="INPUT23">AC</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 336px; z-index: 26; color: #646464; font-weight: bold;" id="INPUT23">AC</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 336px; z-index: 27; color: #6200EE; font-weight: bold; visibility: hidden;" id="INPUT24">AC</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 336px; z-index: 27; color: #6200EE; font-weight: bold;" id="INPUT24">AC</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 301px; z-index: 28;height: 5px; width: 90px; border: none; background-color: #6200EE; visibility: hidden;" id="INPUT25"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 301px; z-index: 28;height: 5px; width: 90px; border: none; background-color: #6200EE;" id="INPUT25"></div>
</xsl:if>
<div onclick="PostXML26()" id="INPUT26" style="position: absolute; top: 75px; left: 301px; z-index: 29;cursor:pointer;height:35px; width:90px; border: none; background: none;"></div>
<xsl:if test="INPUT[11]/@VALUE = 0">
<div id="INPUT27" style="position: absolute; top: 640px; left: 244px; z-index: 30; background-image: url(IMAGES/MOTION_S.PNG); line-height: 78px; height: 78px; width: 63px;"></div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<div id="INPUT27" style="position: absolute; top: 640px; left: 244px; z-index: 30; background-image: url(IMAGES/MOTION_S.GIF); line-height: 78px; height: 78px; width: 63px;"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<div id="INPUT28" style="position: absolute; top: 640px; left: 94px; z-index: 31; background-image: url(IMAGES/MOTION_S.PNG); line-height: 78px; height: 78px; width: 63px;"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div id="INPUT28" style="position: absolute; top: 640px; left: 94px; z-index: 31; background-image: url(IMAGES/MOTION_S.GIF); line-height: 78px; height: 78px; width: 63px;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[13]/@VALUE = 0">
<div id="INPUT29" style="position: absolute; top: 420px; left: 303px; z-index: 32; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div id="INPUT29" style="position: absolute; top: 420px; left: 303px; z-index: 32; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[13]/@VALUE = 0">
<div id="INPUT29" style="position: absolute; top: 420px; left: 303px; z-index: 32; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div id="INPUT29" style="position: absolute; top: 420px; left: 303px; z-index: 32; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML30()" id="INPUT30" style="position: absolute; top: 295px; left: 46px; z-index: 33;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML30()" id="INPUT30" style="position: absolute; top: 295px; left: 46px; z-index: 33;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML31()" id="INPUT31" style="position: absolute; top: 295px; left: 173px; z-index: 34;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML31()" id="INPUT31" style="position: absolute; top: 295px; left: 173px; z-index: 34;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML32()" id="INPUT32" style="position: absolute; top: 295px; left: 303px; z-index: 35;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML32()" id="INPUT32" style="position: absolute; top: 295px; left: 303px; z-index: 35;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML33()" id="INPUT33" style="position: absolute; top: 419px; left: 46px; z-index: 36;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML33()" id="INPUT33" style="position: absolute; top: 419px; left: 46px; z-index: 36;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML34()" id="INPUT34" style="position: absolute; top: 419px; left: 173px; z-index: 37;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML34()" id="INPUT34" style="position: absolute; top: 419px; left: 173px; z-index: 37;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML35()" id="INPUT35" style="position: absolute; top: 419px; left: 303px; z-index: 38;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML35()" id="INPUT35" style="position: absolute; top: 419px; left: 303px; z-index: 38;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE = 0">
<div onclick="PostXML36()" id="INPUT36" style="position: absolute; top: 360px; left: 175px; z-index: 39;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div onclick="PostXML36()" id="INPUT36" style="position: absolute; top: 360px; left: 175px; z-index: 39;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<form style="position: absolute; top: 190px; left: 21px; z-index: 40;">
<xsl:if test="INPUT[14]/@VALUE = 0">
<input id="INPUT37h" type="hidden" name="{INPUT[14]/@NAME}" value="1" />
<div id="INPUT37" class="imgsub" onclick="PostXML37()" style="background-image: url(IMAGES/OFF.PNG); line-height: 31px; height: 31px; width: 65px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<input id="INPUT37h" type="hidden" name="{INPUT[14]/@NAME}" value="0" />
<div id="INPUT37" class="imgsub" onclick="PostXML37()" style="background-image: url(IMAGES/ON.PNG); line-height: 31px; height: 31px; width: 65px; display: none;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<form style="position: absolute; top: 190px; left: 21px; z-index: 40;">
<xsl:if test="INPUT[14]/@VALUE = 0">
<input id="INPUT37h" type="hidden" name="{INPUT[14]/@NAME}" value="1" />
<div id="INPUT37" class="imgsub" onclick="PostXML37()" style="background-image: url(IMAGES/OFF.PNG); line-height: 31px; height: 31px; width: 65px;"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<input id="INPUT37h" type="hidden" name="{INPUT[14]/@NAME}" value="0" />
<div id="INPUT37" class="imgsub" onclick="PostXML37()" style="background-image: url(IMAGES/ON.PNG); line-height: 31px; height: 31px; width: 65px;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[15]/@VALUE = 0">
<div id="INPUT38" style="position: absolute; top: 345px; left: 26px; z-index: 41; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 1">
<div id="INPUT38" style="position: absolute; top: 345px; left: 26px; z-index: 41; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 2">
<div id="INPUT38" style="position: absolute; top: 345px; left: 26px; z-index: 41; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 3">
<div id="INPUT38" style="position: absolute; top: 345px; left: 26px; z-index: 41; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT38" style="position: absolute; top: 345px; left: 26px; z-index: 41; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[15]/@VALUE = 0">
<div id="INPUT38" style="position: absolute; top: 345px; left: 26px; z-index: 41; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 1">
<div id="INPUT38" style="position: absolute; top: 345px; left: 26px; z-index: 41; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 2">
<div id="INPUT38" style="position: absolute; top: 345px; left: 26px; z-index: 41; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 3">
<div id="INPUT38" style="position: absolute; top: 345px; left: 26px; z-index: 41; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT38" style="position: absolute; top: 345px; left: 26px; z-index: 41; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[15]/@VALUE = 0">
<div id="INPUT39" style="position: absolute; top: 345px; left: 78px; z-index: 42; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 1">
<div id="INPUT39" style="position: absolute; top: 345px; left: 78px; z-index: 42; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 2">
<div id="INPUT39" style="position: absolute; top: 345px; left: 78px; z-index: 42; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 3">
<div id="INPUT39" style="position: absolute; top: 345px; left: 78px; z-index: 42; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT39" style="position: absolute; top: 345px; left: 78px; z-index: 42; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[15]/@VALUE = 0">
<div id="INPUT39" style="position: absolute; top: 345px; left: 78px; z-index: 42; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 1">
<div id="INPUT39" style="position: absolute; top: 345px; left: 78px; z-index: 42; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 2">
<div id="INPUT39" style="position: absolute; top: 345px; left: 78px; z-index: 42; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 3">
<div id="INPUT39" style="position: absolute; top: 345px; left: 78px; z-index: 42; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT39" style="position: absolute; top: 345px; left: 78px; z-index: 42; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[15]/@VALUE = 0">
<div id="INPUT40" style="position: absolute; top: 345px; left: 129px; z-index: 43; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 1">
<div id="INPUT40" style="position: absolute; top: 345px; left: 129px; z-index: 43; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 2">
<div id="INPUT40" style="position: absolute; top: 345px; left: 129px; z-index: 43; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 3">
<div id="INPUT40" style="position: absolute; top: 345px; left: 129px; z-index: 43; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT40" style="position: absolute; top: 345px; left: 129px; z-index: 43; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[15]/@VALUE = 0">
<div id="INPUT40" style="position: absolute; top: 345px; left: 129px; z-index: 43; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 1">
<div id="INPUT40" style="position: absolute; top: 345px; left: 129px; z-index: 43; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 2">
<div id="INPUT40" style="position: absolute; top: 345px; left: 129px; z-index: 43; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 3">
<div id="INPUT40" style="position: absolute; top: 345px; left: 129px; z-index: 43; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT40" style="position: absolute; top: 345px; left: 129px; z-index: 43; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[15]/@VALUE = 0">
<div id="INPUT41" style="position: absolute; top: 345px; left: 181px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 1">
<div id="INPUT41" style="position: absolute; top: 345px; left: 181px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 2">
<div id="INPUT41" style="position: absolute; top: 345px; left: 181px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 3">
<div id="INPUT41" style="position: absolute; top: 345px; left: 181px; z-index: 44; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT41" style="position: absolute; top: 345px; left: 181px; z-index: 44; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[15]/@VALUE = 0">
<div id="INPUT41" style="position: absolute; top: 345px; left: 181px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 1">
<div id="INPUT41" style="position: absolute; top: 345px; left: 181px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 2">
<div id="INPUT41" style="position: absolute; top: 345px; left: 181px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 3">
<div id="INPUT41" style="position: absolute; top: 345px; left: 181px; z-index: 44; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT41" style="position: absolute; top: 345px; left: 181px; z-index: 44; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 385px; left: 26px; z-index: 45; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT42">Auto</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 385px; left: 26px; z-index: 45; color: #323232; font-weight: bold;" id="INPUT42">Auto</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 385px; left: 76px; z-index: 46; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT43">Low</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 385px; left: 76px; z-index: 46; color: #323232; font-weight: bold;" id="INPUT43">Low</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 385px; left: 126px; z-index: 47; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT44">Med</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 385px; left: 126px; z-index: 47; color: #323232; font-weight: bold;" id="INPUT44">Med</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 385px; left: 181px; z-index: 48; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT45">High</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 385px; left: 181px; z-index: 48; color: #323232; font-weight: bold;" id="INPUT45">High</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div onclick="PostXML46()" id="INPUT46" style="position: absolute; top: 346px; left: 27px; z-index: 49;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div onclick="PostXML46()" id="INPUT46" style="position: absolute; top: 346px; left: 27px; z-index: 49;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div onclick="PostXML47()" id="INPUT47" style="position: absolute; top: 346px; left: 77px; z-index: 50;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div onclick="PostXML47()" id="INPUT47" style="position: absolute; top: 346px; left: 77px; z-index: 50;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div onclick="PostXML48()" id="INPUT48" style="position: absolute; top: 346px; left: 129px; z-index: 51;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div onclick="PostXML48()" id="INPUT48" style="position: absolute; top: 346px; left: 129px; z-index: 51;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div onclick="PostXML49()" id="INPUT49" style="position: absolute; top: 346px; left: 182px; z-index: 52;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div onclick="PostXML49()" id="INPUT49" style="position: absolute; top: 346px; left: 182px; z-index: 52;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[16]/@VALUE = 0">
<div id="INPUT50" style="position: absolute; top: 310px; left: 271px; z-index: 53; background-image: url(IMAGES/FAN_OFF.PNG); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 1">
<div id="INPUT50" style="position: absolute; top: 310px; left: 271px; z-index: 53; background-image: url(IMAGES/80.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 2">
<div id="INPUT50" style="position: absolute; top: 310px; left: 271px; z-index: 53; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 3">
<div id="INPUT50" style="position: absolute; top: 310px; left: 271px; z-index: 53; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 4">
<div id="INPUT50" style="position: absolute; top: 310px; left: 271px; z-index: 53; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT50" style="position: absolute; top: 310px; left: 271px; z-index: 53; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[16]/@VALUE = 0">
<div id="INPUT50" style="position: absolute; top: 310px; left: 271px; z-index: 53; background-image: url(IMAGES/FAN_OFF.PNG); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 1">
<div id="INPUT50" style="position: absolute; top: 310px; left: 271px; z-index: 53; background-image: url(IMAGES/80.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 2">
<div id="INPUT50" style="position: absolute; top: 310px; left: 271px; z-index: 53; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 3">
<div id="INPUT50" style="position: absolute; top: 310px; left: 271px; z-index: 53; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 4">
<div id="INPUT50" style="position: absolute; top: 310px; left: 271px; z-index: 53; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT50" style="position: absolute; top: 310px; left: 271px; z-index: 53; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<form style="position: absolute; top: 290px; left: 21px; z-index: 54;">
<xsl:if test="INPUT[17]/@VALUE = 0">
<input id="INPUT51h" type="hidden" name="{INPUT[17]/@NAME}" value="1" />
<div id="INPUT51" class="imgsub" onclick="PostXML51()" style="background-image: url(IMAGES/AIR-CON1.PNG); line-height: 45px; height: 45px; width: 45px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE != 0">
<input id="INPUT51h" type="hidden" name="{INPUT[17]/@NAME}" value="0" />
<div id="INPUT51" class="imgsub" onclick="PostXML51()" style="background-image: url(IMAGES/VENTILA1.PNG); line-height: 45px; height: 45px; width: 45px; display: none;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<form style="position: absolute; top: 290px; left: 21px; z-index: 54;">
<xsl:if test="INPUT[17]/@VALUE = 0">
<input id="INPUT51h" type="hidden" name="{INPUT[17]/@NAME}" value="1" />
<div id="INPUT51" class="imgsub" onclick="PostXML51()" style="background-image: url(IMAGES/AIR-CON1.PNG); line-height: 45px; height: 45px; width: 45px;"></div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE != 0">
<input id="INPUT51h" type="hidden" name="{INPUT[17]/@NAME}" value="0" />
<div id="INPUT51" class="imgsub" onclick="PostXML51()" style="background-image: url(IMAGES/VENTILA1.PNG); line-height: 45px; height: 45px; width: 45px;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<form action="javascript:PostXML52()" style="position: absolute; top: 250px; left: 101px; z-index: 55; font-size: 13px;">
<input id="INPUT52" onfocus="document.getElementById('INPUT52x').style.visibility='visible';SetInputEdited(52, event);" onblur="InputFocused[51]=0" onkeydown="SetInputEdited(52, event);" class="mono" tabindex="2" type="text" style="width: 32px; color: #3C3C3C; background: none; display: none;" name="{INPUT[18]/@NAME}" value="{INPUT[18]/@VALUE}" />
<input type="submit" id="INPUT52x" style="position: absolute; top: 0px; height: 19px; width: 19px; visibility: hidden;" value="&gt;" />
</form>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<form action="javascript:PostXML52()" style="position: absolute; top: 250px; left: 101px; z-index: 55; font-size: 13px;">
<input id="INPUT52" onfocus="document.getElementById('INPUT52x').style.visibility='visible';SetInputEdited(52, event);" onblur="InputFocused[51]=0" onkeydown="SetInputEdited(52, event);" class="mono" tabindex="2" type="text" style="width: 32px; color: #3C3C3C; background: none;" name="{INPUT[18]/@NAME}" value="{INPUT[18]/@VALUE}" />
<input type="submit" id="INPUT52x" style="position: absolute; top: 0px; height: 19px; width: 19px; visibility: hidden;" value="&gt;" />
</form>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<form style="position: absolute; top: 179px; left: 326px; z-index: 56;">
<xsl:if test="INPUT[19]/@VALUE = 0">
<input id="INPUT53h" type="hidden" name="{INPUT[19]/@NAME}" value="1" />
<div id="INPUT53" class="imgsub" onclick="PostXML53()" style="background-image: url(IMAGES/CONTROL-.PNG); line-height: 40px; height: 40px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<input id="INPUT53h" type="hidden" name="{INPUT[19]/@NAME}" value="0" />
<div id="INPUT53" class="imgsub" onclick="PostXML53()" style="background-image: url(IMAGES/CONTROL1.PNG); line-height: 40px; height: 40px; width: 50px; display: none;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<form style="position: absolute; top: 179px; left: 326px; z-index: 56;">
<xsl:if test="INPUT[19]/@VALUE = 0">
<input id="INPUT53h" type="hidden" name="{INPUT[19]/@NAME}" value="1" />
<div id="INPUT53" class="imgsub" onclick="PostXML53()" style="background-image: url(IMAGES/CONTROL-.PNG); line-height: 40px; height: 40px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<input id="INPUT53h" type="hidden" name="{INPUT[19]/@NAME}" value="0" />
<div id="INPUT53" class="imgsub" onclick="PostXML53()" style="background-image: url(IMAGES/CONTROL1.PNG); line-height: 40px; height: 40px; width: 50px;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 253px; left: 21px; z-index: 57; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT54">Set Temp</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 253px; left: 21px; z-index: 57; color: #323232; font-weight: bold;" id="INPUT54">Set Temp</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 253px; left: 276px; z-index: 59; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT56">Room</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 253px; left: 276px; z-index: 59; color: #323232; font-weight: bold;" id="INPUT56">Room</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 235px; left: 326px; z-index: 60; background-image: url(IMAGES/THERMOME.PNG); line-height: 40px; height: 40px; width: 14px; visibility: hidden;" id="INPUT57"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 235px; left: 326px; z-index: 60; background-image: url(IMAGES/THERMOME.PNG); line-height: 40px; height: 40px; width: 14px;" id="INPUT57"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 198px; left: 276px; z-index: 61; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT58">Valve</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 198px; left: 276px; z-index: 61; color: #323232; font-weight: bold;" id="INPUT58">Valve</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 254px; left: 168px; z-index: 62; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT59">C</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 254px; left: 168px; z-index: 62; color: #323232; font-weight: bold;" id="INPUT59">C</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 253px; left: 391px; z-index: 63; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT60">C</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 253px; left: 391px; z-index: 63; color: #323232; font-weight: bold;" id="INPUT60">C</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<xsl:if test="INPUT[17]/@VALUE = 0">
<div id="INPUT61" style="position: absolute; top: 281px; left: 67px; z-index: 64; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold; display: none;">Cooling</div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE != 0">
<div id="INPUT61" style="position: absolute; top: 281px; left: 67px; z-index: 64; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold; display: none;">Fan only</div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<xsl:if test="INPUT[17]/@VALUE = 0">
<div id="INPUT61" style="position: absolute; top: 281px; left: 67px; z-index: 64; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold;">Cooling</div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE != 0">
<div id="INPUT61" style="position: absolute; top: 281px; left: 67px; z-index: 64; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold;">Fan only</div>
</xsl:if>
</xsl:if>
<a href="HOME.XML" class="ablock" style="position: absolute; top: 665px; left: 350px; z-index: 65; background-image: url(IMAGES/HOME1_50.PNG); line-height: 50px; height: 50px; width: 50px;"></a>
<div style="position: absolute; top: 135px; left: 160px; z-index: 66; font-size: 20px; color: #323232; font-weight: bold;">ROOM4</div>
<xsl:if test="INPUT[9]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[21]/@VALUE = 0">
<div id="INPUT62" style="position: absolute; top: 254px; left: 154px; z-index: 67; background-image: url(IMAGES/WINDOW9.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[21]/@VALUE = 1">
<div id="INPUT62" style="position: absolute; top: 254px; left: 154px; z-index: 67; background-image: url(IMAGES/WINDOW10.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[21]/@VALUE = 2">
<div id="INPUT62" style="position: absolute; top: 254px; left: 154px; z-index: 67; background-image: url(IMAGES/WINDOW11.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[21]/@VALUE = 3">
<div id="INPUT62" style="position: absolute; top: 254px; left: 154px; z-index: 67; background-image: url(IMAGES/WINDOW12.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[21]/@VALUE = 4">
<div id="INPUT62" style="position: absolute; top: 254px; left: 154px; z-index: 67; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT62" style="position: absolute; top: 254px; left: 154px; z-index: 67; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[21]/@VALUE = 0">
<div id="INPUT62" style="position: absolute; top: 254px; left: 154px; z-index: 67; background-image: url(IMAGES/WINDOW9.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[21]/@VALUE = 1">
<div id="INPUT62" style="position: absolute; top: 254px; left: 154px; z-index: 67; background-image: url(IMAGES/WINDOW10.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[21]/@VALUE = 2">
<div id="INPUT62" style="position: absolute; top: 254px; left: 154px; z-index: 67; background-image: url(IMAGES/WINDOW11.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[21]/@VALUE = 3">
<div id="INPUT62" style="position: absolute; top: 254px; left: 154px; z-index: 67; background-image: url(IMAGES/WINDOW12.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[21]/@VALUE = 4">
<div id="INPUT62" style="position: absolute; top: 254px; left: 154px; z-index: 67; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT62" style="position: absolute; top: 254px; left: 154px; z-index: 67; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE = 0">
<div style="position: absolute; top: 360px; left: 220px; z-index: 69; font-size: 15px; color: #272727; visibility: hidden;" id="INPUT64">%</div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div style="position: absolute; top: 360px; left: 220px; z-index: 69; font-size: 15px; color: #272727;" id="INPUT64">%</div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE = 0">
<xsl:if test="INPUT[23]/@VALUE = 0">
<div id="INPUT65" style="position: absolute; top: 390px; left: 214px; z-index: 70; background-image: url(IMAGES/BTN_BL_5.PNG); line-height: 51px; height: 51px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[23]/@VALUE != 0">
<div id="INPUT65" style="position: absolute; top: 390px; left: 214px; z-index: 70; background-image: url(IMAGES/BTN_GREE.PNG); line-height: 50px; height: 50px; width: 50px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<xsl:if test="INPUT[23]/@VALUE = 0">
<div id="INPUT65" style="position: absolute; top: 390px; left: 214px; z-index: 70; background-image: url(IMAGES/BTN_BL_5.PNG); line-height: 51px; height: 51px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[23]/@VALUE != 0">
<div id="INPUT65" style="position: absolute; top: 390px; left: 214px; z-index: 70; background-image: url(IMAGES/BTN_GREE.PNG); line-height: 50px; height: 50px; width: 50px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE = 0">
<xsl:if test="INPUT[24]/@VALUE = 0">
<div id="INPUT66" style="position: absolute; top: 390px; left: 146px; z-index: 71; background-image: url(IMAGES/BTN_BL_7.PNG); line-height: 51px; height: 51px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[24]/@VALUE != 0">
<div id="INPUT66" style="position: absolute; top: 390px; left: 146px; z-index: 71; background-image: url(IMAGES/BTN_GRE1.PNG); line-height: 50px; height: 50px; width: 50px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<xsl:if test="INPUT[24]/@VALUE = 0">
<div id="INPUT66" style="position: absolute; top: 390px; left: 146px; z-index: 71; background-image: url(IMAGES/BTN_BL_7.PNG); line-height: 51px; height: 51px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[24]/@VALUE != 0">
<div id="INPUT66" style="position: absolute; top: 390px; left: 146px; z-index: 71; background-image: url(IMAGES/BTN_GRE1.PNG); line-height: 50px; height: 50px; width: 50px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE = 0">
<div onclick="PostXML67()" id="INPUT67" style="position: absolute; top: 391px; left: 216px; z-index: 72;cursor:pointer;height:50px; width:50px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div onclick="PostXML67()" id="INPUT67" style="position: absolute; top: 391px; left: 216px; z-index: 72;cursor:pointer;height:50px; width:50px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE = 0">
<div onclick="PostXML68()" id="INPUT68" style="position: absolute; top: 391px; left: 145px; z-index: 73;cursor:pointer;height:50px; width:50px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div onclick="PostXML68()" id="INPUT68" style="position: absolute; top: 391px; left: 145px; z-index: 73;cursor:pointer;height:50px; width:50px; border: none; background: none;"></div>
</xsl:if>
</div>
</td>
</tr>
<!--bottom-->
<tr style="height: 10px;">
<td id="bottom" colspan="2" style="text-align: center">© 2007 - 2020 Teco a.s.</td>
</tr>
</table>
</xsl:if>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
