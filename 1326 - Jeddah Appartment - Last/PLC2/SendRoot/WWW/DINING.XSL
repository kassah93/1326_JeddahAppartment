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
DiningRoom</title>
<script src="DINING.JS?U=1584613147" language="JavaScript" charset="utf-8" />
<style type="text/css">.mono {font-family: Verdana, Arial, FreeSans, sans-serif;}</style>
</head>
<body onload="GetXML('DINING.XML'); FunWatchDog();" style="margin: 0px 0px 0px 0px">
<xsl:if test="1584613147 != ACCESS/@UCID">
<xsl:attribute name="onload">
null;
</xsl:attribute>
<div id="cachewarning" style="text-align: left;"></div>
<script src="REFCLR.JS" language="JavaScript" charset="utf-8"></script>
</xsl:if>
<xsl:if test="1584613147 = ACCESS/@UCID">
<table cellpadding="0" cellspacing="0">
<tr>
<!--menu-->
<!--plan-->
<td id="page" style="border-left: 1px solid black; border-top: 1px solid black;">
<div style="background-color:#969696;position: relative; width: 412px; height: 734px;">
<form action="javascript:PostGlobal();">
<xsl:if test="INPUT[4]/@VALUE = 0">
<input class="mono" tabindex="2" type="text" id="INPUT43" style="position: absolute; top: 252px; left: 344px; width: 32px; z-index: 46; background: none; visibility: hidden;" value="{INPUT[17]/@VALUE}" readonly="readonly" />
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<input class="mono" tabindex="2" type="text" id="INPUT43" style="position: absolute; top: 252px; left: 344px; width: 32px; z-index: 46; background: none;" value="{INPUT[17]/@VALUE}" readonly="readonly" />
</xsl:if>
</form>
<div style="position: absolute; top: 170px; left: 6px; z-index: 1; background-image: url(IMAGES/CONSOLE.PNG); line-height: 450px; height: 450px; width: 400px;"></div>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[2]/@VALUE = 0">
<div id="INPUT1" style="position: absolute; top: 375px; left: 185px; z-index: 2; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div id="INPUT1" style="position: absolute; top: 375px; left: 185px; z-index: 2; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[2]/@VALUE = 0">
<div id="INPUT1" style="position: absolute; top: 375px; left: 185px; z-index: 2; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div id="INPUT1" style="position: absolute; top: 375px; left: 185px; z-index: 2; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
</xsl:if>
<div style="position: absolute; top: 14px; left: 10px; z-index: 3; background-image: url(IMAGES/TECO-LOG.PNG); line-height: 31px; height: 31px; width: 150px;"></div>
<div style="position: absolute; top: 60px; left: 6px; z-index: 4; background-image: url(IMAGES/BAR_-_WI.PNG); line-height: 65px; height: 65px; width: 400px;"></div>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 71px; z-index: 5;height: 5px; width: 90px; border: none; background-color: #F0F0F0; visibility: hidden;" id="INPUT2"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 71px; z-index: 5;height: 5px; width: 90px; border: none; background-color: #F0F0F0;" id="INPUT2"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 161px; z-index: 6;height: 5px; width: 90px; border: none; background-color: #F0F0F0; visibility: hidden;" id="INPUT3"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 161px; z-index: 6;height: 5px; width: 90px; border: none; background-color: #F0F0F0;" id="INPUT3"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 90px; z-index: 7; color: #646464; font-weight: bold; visibility: hidden;" id="INPUT4">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 90px; z-index: 7; color: #646464; font-weight: bold;" id="INPUT4">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 174px; z-index: 8; color: #646464; font-weight: bold; visibility: hidden;" id="INPUT5">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 174px; z-index: 8; color: #646464; font-weight: bold;" id="INPUT5">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 90px; z-index: 9; color: #6200EE; font-weight: bold; visibility: hidden;" id="INPUT6">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 90px; z-index: 9; color: #6200EE; font-weight: bold;" id="INPUT6">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 174px; z-index: 10; color: #6200EE; font-weight: bold; visibility: hidden;" id="INPUT7">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 174px; z-index: 10; color: #6200EE; font-weight: bold;" id="INPUT7">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 71px; z-index: 11;height: 5px; width: 90px; border: none; background-color: #6200EE; visibility: hidden;" id="INPUT8"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 71px; z-index: 11;height: 5px; width: 90px; border: none; background-color: #6200EE;" id="INPUT8"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 161px; z-index: 12;height: 5px; width: 90px; border: none; background-color: #6200EE; visibility: hidden;" id="INPUT9"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 161px; z-index: 12;height: 5px; width: 90px; border: none; background-color: #6200EE;" id="INPUT9"></div>
</xsl:if>
<div onclick="PostXML10()" id="INPUT10" style="position: absolute; top: 75px; left: 70px; z-index: 13;cursor:pointer;height:35px; width:90px; border: none; background: none;"></div>
<div onclick="PostXML11()" id="INPUT11" style="position: absolute; top: 75px; left: 161px; z-index: 14;cursor:pointer;height:35px; width:90px; border: none; background: none;"></div>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 251px; z-index: 15;height: 5px; width: 90px; border: none; background-color: #F0F0F0; visibility: hidden;" id="INPUT12"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 251px; z-index: 15;height: 5px; width: 90px; border: none; background-color: #F0F0F0;" id="INPUT12"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 286px; z-index: 16; color: #646464; font-weight: bold; visibility: hidden;" id="INPUT13">AC</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 286px; z-index: 16; color: #646464; font-weight: bold;" id="INPUT13">AC</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 286px; z-index: 17; color: #6200EE; font-weight: bold; visibility: hidden;" id="INPUT14">AC</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 286px; z-index: 17; color: #6200EE; font-weight: bold;" id="INPUT14">AC</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 251px; z-index: 18;height: 5px; width: 90px; border: none; background-color: #6200EE; visibility: hidden;" id="INPUT15"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 251px; z-index: 18;height: 5px; width: 90px; border: none; background-color: #6200EE;" id="INPUT15"></div>
</xsl:if>
<div onclick="PostXML16()" id="INPUT16" style="position: absolute; top: 75px; left: 251px; z-index: 19;cursor:pointer;height:35px; width:90px; border: none; background: none;"></div>
<xsl:if test="INPUT[5]/@VALUE = 0">
<div id="INPUT17" style="position: absolute; top: 640px; left: 174px; z-index: 20; background-image: url(IMAGES/MOTION_S.PNG); line-height: 78px; height: 78px; width: 63px;"></div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE != 0">
<div id="INPUT17" style="position: absolute; top: 640px; left: 174px; z-index: 20; background-image: url(IMAGES/MOTION_S.GIF); line-height: 78px; height: 78px; width: 63px;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<xsl:if test="INPUT[6]/@VALUE = 0">
<div id="INPUT18" style="position: absolute; top: 296px; left: 45px; z-index: 21; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div id="INPUT18" style="position: absolute; top: 296px; left: 45px; z-index: 21; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<xsl:if test="INPUT[6]/@VALUE = 0">
<div id="INPUT18" style="position: absolute; top: 296px; left: 45px; z-index: 21; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div id="INPUT18" style="position: absolute; top: 296px; left: 45px; z-index: 21; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<xsl:if test="INPUT[7]/@VALUE = 0">
<div id="INPUT19" style="position: absolute; top: 296px; left: 174px; z-index: 22; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div id="INPUT19" style="position: absolute; top: 296px; left: 174px; z-index: 22; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<xsl:if test="INPUT[7]/@VALUE = 0">
<div id="INPUT19" style="position: absolute; top: 296px; left: 174px; z-index: 22; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div id="INPUT19" style="position: absolute; top: 296px; left: 174px; z-index: 22; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<xsl:if test="INPUT[8]/@VALUE = 0">
<div id="INPUT20" style="position: absolute; top: 296px; left: 303px; z-index: 23; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<div id="INPUT20" style="position: absolute; top: 296px; left: 303px; z-index: 23; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<xsl:if test="INPUT[8]/@VALUE = 0">
<div id="INPUT20" style="position: absolute; top: 296px; left: 303px; z-index: 23; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<div id="INPUT20" style="position: absolute; top: 296px; left: 303px; z-index: 23; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<xsl:if test="INPUT[9]/@VALUE = 0">
<div id="INPUT21" style="position: absolute; top: 420px; left: 105px; z-index: 24; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div id="INPUT21" style="position: absolute; top: 420px; left: 105px; z-index: 24; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<xsl:if test="INPUT[9]/@VALUE = 0">
<div id="INPUT21" style="position: absolute; top: 420px; left: 105px; z-index: 24; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div id="INPUT21" style="position: absolute; top: 420px; left: 105px; z-index: 24; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<xsl:if test="INPUT[10]/@VALUE = 0">
<div id="INPUT22" style="position: absolute; top: 420px; left: 251px; z-index: 25; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div id="INPUT22" style="position: absolute; top: 420px; left: 251px; z-index: 25; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<xsl:if test="INPUT[10]/@VALUE = 0">
<div id="INPUT22" style="position: absolute; top: 420px; left: 251px; z-index: 25; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div id="INPUT22" style="position: absolute; top: 420px; left: 251px; z-index: 25; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div onclick="PostXML23()" id="INPUT23" style="position: absolute; top: 293px; left: 46px; z-index: 26;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div onclick="PostXML23()" id="INPUT23" style="position: absolute; top: 293px; left: 46px; z-index: 26;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div onclick="PostXML24()" id="INPUT24" style="position: absolute; top: 293px; left: 173px; z-index: 27;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div onclick="PostXML24()" id="INPUT24" style="position: absolute; top: 293px; left: 173px; z-index: 27;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div onclick="PostXML25()" id="INPUT25" style="position: absolute; top: 293px; left: 303px; z-index: 28;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div onclick="PostXML25()" id="INPUT25" style="position: absolute; top: 293px; left: 303px; z-index: 28;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div onclick="PostXML26()" id="INPUT26" style="position: absolute; top: 419px; left: 106px; z-index: 29;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div onclick="PostXML26()" id="INPUT26" style="position: absolute; top: 419px; left: 106px; z-index: 29;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div onclick="PostXML27()" id="INPUT27" style="position: absolute; top: 419px; left: 250px; z-index: 30;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div onclick="PostXML27()" id="INPUT27" style="position: absolute; top: 419px; left: 250px; z-index: 30;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML28()" id="INPUT28" style="position: absolute; top: 360px; left: 175px; z-index: 31;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML28()" id="INPUT28" style="position: absolute; top: 360px; left: 175px; z-index: 31;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<form style="position: absolute; top: 192px; left: 19px; z-index: 32;">
<xsl:if test="INPUT[11]/@VALUE = 0">
<input id="INPUT29h" type="hidden" name="{INPUT[11]/@NAME}" value="1" />
<div id="INPUT29" class="imgsub" onclick="PostXML29()" style="background-image: url(IMAGES/OFF.PNG); line-height: 31px; height: 31px; width: 65px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<input id="INPUT29h" type="hidden" name="{INPUT[11]/@NAME}" value="0" />
<div id="INPUT29" class="imgsub" onclick="PostXML29()" style="background-image: url(IMAGES/ON.PNG); line-height: 31px; height: 31px; width: 65px; display: none;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<form style="position: absolute; top: 192px; left: 19px; z-index: 32;">
<xsl:if test="INPUT[11]/@VALUE = 0">
<input id="INPUT29h" type="hidden" name="{INPUT[11]/@NAME}" value="1" />
<div id="INPUT29" class="imgsub" onclick="PostXML29()" style="background-image: url(IMAGES/OFF.PNG); line-height: 31px; height: 31px; width: 65px;"></div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<input id="INPUT29h" type="hidden" name="{INPUT[11]/@NAME}" value="0" />
<div id="INPUT29" class="imgsub" onclick="PostXML29()" style="background-image: url(IMAGES/ON.PNG); line-height: 31px; height: 31px; width: 65px;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[12]/@VALUE = 0">
<div id="INPUT30" style="position: absolute; top: 347px; left: 24px; z-index: 33; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 1">
<div id="INPUT30" style="position: absolute; top: 347px; left: 24px; z-index: 33; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 2">
<div id="INPUT30" style="position: absolute; top: 347px; left: 24px; z-index: 33; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 3">
<div id="INPUT30" style="position: absolute; top: 347px; left: 24px; z-index: 33; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT30" style="position: absolute; top: 347px; left: 24px; z-index: 33; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[12]/@VALUE = 0">
<div id="INPUT30" style="position: absolute; top: 347px; left: 24px; z-index: 33; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 1">
<div id="INPUT30" style="position: absolute; top: 347px; left: 24px; z-index: 33; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 2">
<div id="INPUT30" style="position: absolute; top: 347px; left: 24px; z-index: 33; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 3">
<div id="INPUT30" style="position: absolute; top: 347px; left: 24px; z-index: 33; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT30" style="position: absolute; top: 347px; left: 24px; z-index: 33; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[12]/@VALUE = 0">
<div id="INPUT31" style="position: absolute; top: 347px; left: 76px; z-index: 34; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 1">
<div id="INPUT31" style="position: absolute; top: 347px; left: 76px; z-index: 34; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 2">
<div id="INPUT31" style="position: absolute; top: 347px; left: 76px; z-index: 34; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 3">
<div id="INPUT31" style="position: absolute; top: 347px; left: 76px; z-index: 34; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT31" style="position: absolute; top: 347px; left: 76px; z-index: 34; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[12]/@VALUE = 0">
<div id="INPUT31" style="position: absolute; top: 347px; left: 76px; z-index: 34; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 1">
<div id="INPUT31" style="position: absolute; top: 347px; left: 76px; z-index: 34; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 2">
<div id="INPUT31" style="position: absolute; top: 347px; left: 76px; z-index: 34; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 3">
<div id="INPUT31" style="position: absolute; top: 347px; left: 76px; z-index: 34; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT31" style="position: absolute; top: 347px; left: 76px; z-index: 34; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[12]/@VALUE = 0">
<div id="INPUT32" style="position: absolute; top: 347px; left: 127px; z-index: 35; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 1">
<div id="INPUT32" style="position: absolute; top: 347px; left: 127px; z-index: 35; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 2">
<div id="INPUT32" style="position: absolute; top: 347px; left: 127px; z-index: 35; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 3">
<div id="INPUT32" style="position: absolute; top: 347px; left: 127px; z-index: 35; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT32" style="position: absolute; top: 347px; left: 127px; z-index: 35; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[12]/@VALUE = 0">
<div id="INPUT32" style="position: absolute; top: 347px; left: 127px; z-index: 35; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 1">
<div id="INPUT32" style="position: absolute; top: 347px; left: 127px; z-index: 35; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 2">
<div id="INPUT32" style="position: absolute; top: 347px; left: 127px; z-index: 35; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 3">
<div id="INPUT32" style="position: absolute; top: 347px; left: 127px; z-index: 35; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT32" style="position: absolute; top: 347px; left: 127px; z-index: 35; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[12]/@VALUE = 0">
<div id="INPUT33" style="position: absolute; top: 347px; left: 179px; z-index: 36; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 1">
<div id="INPUT33" style="position: absolute; top: 347px; left: 179px; z-index: 36; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 2">
<div id="INPUT33" style="position: absolute; top: 347px; left: 179px; z-index: 36; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 3">
<div id="INPUT33" style="position: absolute; top: 347px; left: 179px; z-index: 36; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT33" style="position: absolute; top: 347px; left: 179px; z-index: 36; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[12]/@VALUE = 0">
<div id="INPUT33" style="position: absolute; top: 347px; left: 179px; z-index: 36; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 1">
<div id="INPUT33" style="position: absolute; top: 347px; left: 179px; z-index: 36; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 2">
<div id="INPUT33" style="position: absolute; top: 347px; left: 179px; z-index: 36; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 3">
<div id="INPUT33" style="position: absolute; top: 347px; left: 179px; z-index: 36; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT33" style="position: absolute; top: 347px; left: 179px; z-index: 36; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 387px; left: 24px; z-index: 37; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT34">Auto</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 387px; left: 24px; z-index: 37; color: #323232; font-weight: bold;" id="INPUT34">Auto</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 387px; left: 74px; z-index: 38; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT35">Low</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 387px; left: 74px; z-index: 38; color: #323232; font-weight: bold;" id="INPUT35">Low</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 387px; left: 124px; z-index: 39; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT36">Med</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 387px; left: 124px; z-index: 39; color: #323232; font-weight: bold;" id="INPUT36">Med</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 387px; left: 179px; z-index: 40; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT37">High</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 387px; left: 179px; z-index: 40; color: #323232; font-weight: bold;" id="INPUT37">High</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[13]/@VALUE = 0">
<div id="INPUT38" style="position: absolute; top: 312px; left: 269px; z-index: 41; background-image: url(IMAGES/FAN_OFF.PNG); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[13]/@VALUE = 1">
<div id="INPUT38" style="position: absolute; top: 312px; left: 269px; z-index: 41; background-image: url(IMAGES/80.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[13]/@VALUE = 2">
<div id="INPUT38" style="position: absolute; top: 312px; left: 269px; z-index: 41; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[13]/@VALUE = 3">
<div id="INPUT38" style="position: absolute; top: 312px; left: 269px; z-index: 41; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[13]/@VALUE = 4">
<div id="INPUT38" style="position: absolute; top: 312px; left: 269px; z-index: 41; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT38" style="position: absolute; top: 312px; left: 269px; z-index: 41; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[13]/@VALUE = 0">
<div id="INPUT38" style="position: absolute; top: 312px; left: 269px; z-index: 41; background-image: url(IMAGES/FAN_OFF.PNG); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[13]/@VALUE = 1">
<div id="INPUT38" style="position: absolute; top: 312px; left: 269px; z-index: 41; background-image: url(IMAGES/80.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[13]/@VALUE = 2">
<div id="INPUT38" style="position: absolute; top: 312px; left: 269px; z-index: 41; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[13]/@VALUE = 3">
<div id="INPUT38" style="position: absolute; top: 312px; left: 269px; z-index: 41; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[13]/@VALUE = 4">
<div id="INPUT38" style="position: absolute; top: 312px; left: 269px; z-index: 41; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT38" style="position: absolute; top: 312px; left: 269px; z-index: 41; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<form style="position: absolute; top: 292px; left: 19px; z-index: 42;">
<xsl:if test="INPUT[14]/@VALUE = 0">
<input id="INPUT39h" type="hidden" name="{INPUT[14]/@NAME}" value="1" />
<div id="INPUT39" class="imgsub" onclick="PostXML39()" style="background-image: url(IMAGES/AIR-CON1.PNG); line-height: 45px; height: 45px; width: 45px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<input id="INPUT39h" type="hidden" name="{INPUT[14]/@NAME}" value="0" />
<div id="INPUT39" class="imgsub" onclick="PostXML39()" style="background-image: url(IMAGES/VENTILA1.PNG); line-height: 45px; height: 45px; width: 45px; display: none;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<form style="position: absolute; top: 292px; left: 19px; z-index: 42;">
<xsl:if test="INPUT[14]/@VALUE = 0">
<input id="INPUT39h" type="hidden" name="{INPUT[14]/@NAME}" value="1" />
<div id="INPUT39" class="imgsub" onclick="PostXML39()" style="background-image: url(IMAGES/AIR-CON1.PNG); line-height: 45px; height: 45px; width: 45px;"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<input id="INPUT39h" type="hidden" name="{INPUT[14]/@NAME}" value="0" />
<div id="INPUT39" class="imgsub" onclick="PostXML39()" style="background-image: url(IMAGES/VENTILA1.PNG); line-height: 45px; height: 45px; width: 45px;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<form action="javascript:PostXML40()" style="position: absolute; top: 252px; left: 99px; z-index: 43; font-size: 13px;">
<input id="INPUT40" onfocus="document.getElementById('INPUT40x').style.visibility='visible';SetInputEdited(40, event);" onblur="InputFocused[39]=0" onkeydown="SetInputEdited(40, event);" class="mono" tabindex="1" type="text" style="width: 32px; color: #3C3C3C; background: none; display: none;" name="{INPUT[15]/@NAME}" value="{INPUT[15]/@VALUE}" />
<input type="submit" id="INPUT40x" style="position: absolute; top: 0px; height: 19px; width: 19px; visibility: hidden;" value="&gt;" />
</form>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<form action="javascript:PostXML40()" style="position: absolute; top: 252px; left: 99px; z-index: 43; font-size: 13px;">
<input id="INPUT40" onfocus="document.getElementById('INPUT40x').style.visibility='visible';SetInputEdited(40, event);" onblur="InputFocused[39]=0" onkeydown="SetInputEdited(40, event);" class="mono" tabindex="1" type="text" style="width: 32px; color: #3C3C3C; background: none;" name="{INPUT[15]/@NAME}" value="{INPUT[15]/@VALUE}" />
<input type="submit" id="INPUT40x" style="position: absolute; top: 0px; height: 19px; width: 19px; visibility: hidden;" value="&gt;" />
</form>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<form style="position: absolute; top: 181px; left: 324px; z-index: 44;">
<xsl:if test="INPUT[16]/@VALUE = 0">
<input id="INPUT41h" type="hidden" name="{INPUT[16]/@NAME}" value="1" />
<div id="INPUT41" class="imgsub" onclick="PostXML41()" style="background-image: url(IMAGES/CONTROL-.PNG); line-height: 40px; height: 40px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[16]/@VALUE != 0">
<input id="INPUT41h" type="hidden" name="{INPUT[16]/@NAME}" value="0" />
<div id="INPUT41" class="imgsub" onclick="PostXML41()" style="background-image: url(IMAGES/CONTROL1.PNG); line-height: 40px; height: 40px; width: 50px; display: none;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<form style="position: absolute; top: 181px; left: 324px; z-index: 44;">
<xsl:if test="INPUT[16]/@VALUE = 0">
<input id="INPUT41h" type="hidden" name="{INPUT[16]/@NAME}" value="1" />
<div id="INPUT41" class="imgsub" onclick="PostXML41()" style="background-image: url(IMAGES/CONTROL-.PNG); line-height: 40px; height: 40px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[16]/@VALUE != 0">
<input id="INPUT41h" type="hidden" name="{INPUT[16]/@NAME}" value="0" />
<div id="INPUT41" class="imgsub" onclick="PostXML41()" style="background-image: url(IMAGES/CONTROL1.PNG); line-height: 40px; height: 40px; width: 50px;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 255px; left: 19px; z-index: 45; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT42">Set Temp</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 255px; left: 19px; z-index: 45; color: #323232; font-weight: bold;" id="INPUT42">Set Temp</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 255px; left: 274px; z-index: 47; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT44">Room</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 255px; left: 274px; z-index: 47; color: #323232; font-weight: bold;" id="INPUT44">Room</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 237px; left: 324px; z-index: 48; background-image: url(IMAGES/THERMOME.PNG); line-height: 40px; height: 40px; width: 14px; visibility: hidden;" id="INPUT45"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 237px; left: 324px; z-index: 48; background-image: url(IMAGES/THERMOME.PNG); line-height: 40px; height: 40px; width: 14px;" id="INPUT45"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 200px; left: 274px; z-index: 49; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT46">Valve</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 200px; left: 274px; z-index: 49; color: #323232; font-weight: bold;" id="INPUT46">Valve</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 256px; left: 166px; z-index: 50; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT47">C</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 256px; left: 166px; z-index: 50; color: #323232; font-weight: bold;" id="INPUT47">C</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 255px; left: 389px; z-index: 51; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT48">C</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 255px; left: 389px; z-index: 51; color: #323232; font-weight: bold;" id="INPUT48">C</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<xsl:if test="INPUT[14]/@VALUE = 0">
<div id="INPUT49" style="position: absolute; top: 283px; left: 65px; z-index: 52; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold; display: none;">Cooling</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div id="INPUT49" style="position: absolute; top: 283px; left: 65px; z-index: 52; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold; display: none;">Fan only</div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<xsl:if test="INPUT[14]/@VALUE = 0">
<div id="INPUT49" style="position: absolute; top: 283px; left: 65px; z-index: 52; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold;">Cooling</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div id="INPUT49" style="position: absolute; top: 283px; left: 65px; z-index: 52; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold;">Fan only</div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div onclick="PostXML50()" id="INPUT50" style="position: absolute; top: 347px; left: 26px; z-index: 53;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div onclick="PostXML50()" id="INPUT50" style="position: absolute; top: 347px; left: 26px; z-index: 53;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div onclick="PostXML51()" id="INPUT51" style="position: absolute; top: 347px; left: 76px; z-index: 54;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div onclick="PostXML51()" id="INPUT51" style="position: absolute; top: 347px; left: 76px; z-index: 54;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div onclick="PostXML52()" id="INPUT52" style="position: absolute; top: 347px; left: 128px; z-index: 55;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div onclick="PostXML52()" id="INPUT52" style="position: absolute; top: 347px; left: 128px; z-index: 55;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div onclick="PostXML53()" id="INPUT53" style="position: absolute; top: 347px; left: 181px; z-index: 56;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div onclick="PostXML53()" id="INPUT53" style="position: absolute; top: 347px; left: 181px; z-index: 56;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<a href="HOME.XML" class="ablock" style="position: absolute; top: 665px; left: 350px; z-index: 57; background-image: url(IMAGES/HOME1_50.PNG); line-height: 50px; height: 50px; width: 50px;"></a>
<div style="position: absolute; top: 135px; left: 120px; z-index: 58; font-size: 20px; color: #323232; font-weight: bold;">DINING ROOM</div>
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
