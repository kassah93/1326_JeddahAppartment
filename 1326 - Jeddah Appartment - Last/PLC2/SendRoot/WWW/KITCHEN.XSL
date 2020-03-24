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
kitchen</title>
<script src="KITCHEN.JS?U=1584613310" language="JavaScript" charset="utf-8" />
<style type="text/css">.mono {font-family: Verdana, Arial, FreeSans, sans-serif;}</style>
</head>
<body onload="GetXML('KITCHEN.XML'); FunWatchDog();" style="margin: 0px 0px 0px 0px">
<xsl:if test="1584613310 != ACCESS/@UCID">
<xsl:attribute name="onload">
null;
</xsl:attribute>
<div id="cachewarning" style="text-align: left;"></div>
<script src="REFCLR.JS" language="JavaScript" charset="utf-8"></script>
</xsl:if>
<xsl:if test="1584613310 = ACCESS/@UCID">
<table cellpadding="0" cellspacing="0">
<tr>
<!--menu-->
<!--plan-->
<td id="page" style="border-left: 1px solid black; border-top: 1px solid black;">
<div style="background-color:#969696;position: relative; width: 412px; height: 734px;">
<form action="javascript:PostGlobal();">
<xsl:if test="INPUT[3]/@VALUE = 0">
<input class="mono" tabindex="2" type="text" id="INPUT41" style="position: absolute; top: 251px; left: 346px; width: 32px; z-index: 44; background: none; visibility: hidden;" value="{INPUT[16]/@VALUE}" readonly="readonly" />
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<input class="mono" tabindex="2" type="text" id="INPUT41" style="position: absolute; top: 251px; left: 346px; width: 32px; z-index: 44; background: none;" value="{INPUT[16]/@VALUE}" readonly="readonly" />
</xsl:if>
</form>
<div style="position: absolute; top: 170px; left: 6px; z-index: 1; background-image: url(IMAGES/CONSOLE.PNG); line-height: 450px; height: 450px; width: 400px;"></div>
<div style="position: absolute; top: 14px; left: 10px; z-index: 2; background-image: url(IMAGES/TECO-LOG.PNG); line-height: 31px; height: 31px; width: 150px;"></div>
<div style="position: absolute; top: 60px; left: 6px; z-index: 3; background-image: url(IMAGES/BAR_-_WI.PNG); line-height: 65px; height: 65px; width: 400px;"></div>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 71px; z-index: 4;height: 5px; width: 90px; border: none; background-color: #F0F0F0; visibility: hidden;" id="INPUT1"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 71px; z-index: 4;height: 5px; width: 90px; border: none; background-color: #F0F0F0;" id="INPUT1"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 161px; z-index: 5;height: 5px; width: 90px; border: none; background-color: #F0F0F0; visibility: hidden;" id="INPUT2"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 161px; z-index: 5;height: 5px; width: 90px; border: none; background-color: #F0F0F0;" id="INPUT2"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 90px; z-index: 6; color: #646464; font-weight: bold; visibility: hidden;" id="INPUT3">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 90px; z-index: 6; color: #646464; font-weight: bold;" id="INPUT3">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 174px; z-index: 7; color: #646464; font-weight: bold; visibility: hidden;" id="INPUT4">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 174px; z-index: 7; color: #646464; font-weight: bold;" id="INPUT4">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 90px; z-index: 8; color: #6200EE; font-weight: bold; visibility: hidden;" id="INPUT5">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 90px; z-index: 8; color: #6200EE; font-weight: bold;" id="INPUT5">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 174px; z-index: 9; color: #6200EE; font-weight: bold; visibility: hidden;" id="INPUT6">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 174px; z-index: 9; color: #6200EE; font-weight: bold;" id="INPUT6">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 71px; z-index: 10;height: 5px; width: 90px; border: none; background-color: #6200EE; visibility: hidden;" id="INPUT7"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 71px; z-index: 10;height: 5px; width: 90px; border: none; background-color: #6200EE;" id="INPUT7"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 161px; z-index: 11;height: 5px; width: 90px; border: none; background-color: #6200EE; visibility: hidden;" id="INPUT8"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 161px; z-index: 11;height: 5px; width: 90px; border: none; background-color: #6200EE;" id="INPUT8"></div>
</xsl:if>
<div onclick="PostXML9()" id="INPUT9" style="position: absolute; top: 75px; left: 70px; z-index: 12;cursor:pointer;height:35px; width:90px; border: none; background: none;"></div>
<div onclick="PostXML10()" id="INPUT10" style="position: absolute; top: 75px; left: 161px; z-index: 13;cursor:pointer;height:35px; width:90px; border: none; background: none;"></div>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 251px; z-index: 14;height: 5px; width: 90px; border: none; background-color: #F0F0F0; visibility: hidden;" id="INPUT11"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 251px; z-index: 14;height: 5px; width: 90px; border: none; background-color: #F0F0F0;" id="INPUT11"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 286px; z-index: 15; color: #646464; font-weight: bold; visibility: hidden;" id="INPUT12">AC</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 286px; z-index: 15; color: #646464; font-weight: bold;" id="INPUT12">AC</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 286px; z-index: 16; color: #6200EE; font-weight: bold; visibility: hidden;" id="INPUT13">AC</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 286px; z-index: 16; color: #6200EE; font-weight: bold;" id="INPUT13">AC</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 251px; z-index: 17;height: 5px; width: 90px; border: none; background-color: #6200EE; visibility: hidden;" id="INPUT14"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 251px; z-index: 17;height: 5px; width: 90px; border: none; background-color: #6200EE;" id="INPUT14"></div>
</xsl:if>
<div onclick="PostXML15()" id="INPUT15" style="position: absolute; top: 75px; left: 251px; z-index: 18;cursor:pointer;height:35px; width:90px; border: none; background: none;"></div>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div id="INPUT16" style="position: absolute; top: 640px; left: 174px; z-index: 19; background-image: url(IMAGES/MOTION_S.PNG); line-height: 78px; height: 78px; width: 63px;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div id="INPUT16" style="position: absolute; top: 640px; left: 174px; z-index: 19; background-image: url(IMAGES/MOTION_S.GIF); line-height: 78px; height: 78px; width: 63px;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[5]/@VALUE = 0">
<div id="INPUT17" style="position: absolute; top: 296px; left: 105px; z-index: 20; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE != 0">
<div id="INPUT17" style="position: absolute; top: 296px; left: 105px; z-index: 20; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[5]/@VALUE = 0">
<div id="INPUT17" style="position: absolute; top: 296px; left: 105px; z-index: 20; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE != 0">
<div id="INPUT17" style="position: absolute; top: 296px; left: 105px; z-index: 20; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[6]/@VALUE = 0">
<div id="INPUT18" style="position: absolute; top: 296px; left: 251px; z-index: 21; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div id="INPUT18" style="position: absolute; top: 296px; left: 251px; z-index: 21; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[6]/@VALUE = 0">
<div id="INPUT18" style="position: absolute; top: 296px; left: 251px; z-index: 21; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div id="INPUT18" style="position: absolute; top: 296px; left: 251px; z-index: 21; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[7]/@VALUE = 0">
<div id="INPUT19" style="position: absolute; top: 420px; left: 105px; z-index: 22; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div id="INPUT19" style="position: absolute; top: 420px; left: 105px; z-index: 22; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[7]/@VALUE = 0">
<div id="INPUT19" style="position: absolute; top: 420px; left: 105px; z-index: 22; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div id="INPUT19" style="position: absolute; top: 420px; left: 105px; z-index: 22; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[8]/@VALUE = 0">
<div id="INPUT20" style="position: absolute; top: 420px; left: 251px; z-index: 23; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<div id="INPUT20" style="position: absolute; top: 420px; left: 251px; z-index: 23; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[8]/@VALUE = 0">
<div id="INPUT20" style="position: absolute; top: 420px; left: 251px; z-index: 23; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<div id="INPUT20" style="position: absolute; top: 420px; left: 251px; z-index: 23; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE = 0">
<xsl:if test="INPUT[9]/@VALUE = 0">
<div id="INPUT21" style="position: absolute; top: 375px; left: 185px; z-index: 24; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div id="INPUT21" style="position: absolute; top: 375px; left: 185px; z-index: 24; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<xsl:if test="INPUT[9]/@VALUE = 0">
<div id="INPUT21" style="position: absolute; top: 375px; left: 185px; z-index: 24; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div id="INPUT21" style="position: absolute; top: 375px; left: 185px; z-index: 24; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML22()" id="INPUT22" style="position: absolute; top: 295px; left: 106px; z-index: 25;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML22()" id="INPUT22" style="position: absolute; top: 295px; left: 106px; z-index: 25;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML23()" id="INPUT23" style="position: absolute; top: 295px; left: 252px; z-index: 26;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML23()" id="INPUT23" style="position: absolute; top: 295px; left: 252px; z-index: 26;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML24()" id="INPUT24" style="position: absolute; top: 419px; left: 106px; z-index: 27;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML24()" id="INPUT24" style="position: absolute; top: 419px; left: 106px; z-index: 27;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML25()" id="INPUT25" style="position: absolute; top: 419px; left: 252px; z-index: 28;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML25()" id="INPUT25" style="position: absolute; top: 419px; left: 252px; z-index: 28;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE = 0">
<div onclick="PostXML26()" id="INPUT26" style="position: absolute; top: 360px; left: 175px; z-index: 29;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div onclick="PostXML26()" id="INPUT26" style="position: absolute; top: 360px; left: 175px; z-index: 29;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<form style="position: absolute; top: 191px; left: 21px; z-index: 30;">
<xsl:if test="INPUT[10]/@VALUE = 0">
<input id="INPUT27h" type="hidden" name="{INPUT[10]/@NAME}" value="1" />
<div id="INPUT27" class="imgsub" onclick="PostXML27()" style="background-image: url(IMAGES/OFF.PNG); line-height: 31px; height: 31px; width: 65px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<input id="INPUT27h" type="hidden" name="{INPUT[10]/@NAME}" value="0" />
<div id="INPUT27" class="imgsub" onclick="PostXML27()" style="background-image: url(IMAGES/ON.PNG); line-height: 31px; height: 31px; width: 65px; display: none;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<form style="position: absolute; top: 191px; left: 21px; z-index: 30;">
<xsl:if test="INPUT[10]/@VALUE = 0">
<input id="INPUT27h" type="hidden" name="{INPUT[10]/@NAME}" value="1" />
<div id="INPUT27" class="imgsub" onclick="PostXML27()" style="background-image: url(IMAGES/OFF.PNG); line-height: 31px; height: 31px; width: 65px;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<input id="INPUT27h" type="hidden" name="{INPUT[10]/@NAME}" value="0" />
<div id="INPUT27" class="imgsub" onclick="PostXML27()" style="background-image: url(IMAGES/ON.PNG); line-height: 31px; height: 31px; width: 65px;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[11]/@VALUE = 0">
<div id="INPUT28" style="position: absolute; top: 346px; left: 26px; z-index: 31; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 1">
<div id="INPUT28" style="position: absolute; top: 346px; left: 26px; z-index: 31; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 2">
<div id="INPUT28" style="position: absolute; top: 346px; left: 26px; z-index: 31; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 3">
<div id="INPUT28" style="position: absolute; top: 346px; left: 26px; z-index: 31; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT28" style="position: absolute; top: 346px; left: 26px; z-index: 31; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[11]/@VALUE = 0">
<div id="INPUT28" style="position: absolute; top: 346px; left: 26px; z-index: 31; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 1">
<div id="INPUT28" style="position: absolute; top: 346px; left: 26px; z-index: 31; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 2">
<div id="INPUT28" style="position: absolute; top: 346px; left: 26px; z-index: 31; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 3">
<div id="INPUT28" style="position: absolute; top: 346px; left: 26px; z-index: 31; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT28" style="position: absolute; top: 346px; left: 26px; z-index: 31; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[11]/@VALUE = 0">
<div id="INPUT29" style="position: absolute; top: 346px; left: 78px; z-index: 32; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 1">
<div id="INPUT29" style="position: absolute; top: 346px; left: 78px; z-index: 32; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 2">
<div id="INPUT29" style="position: absolute; top: 346px; left: 78px; z-index: 32; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 3">
<div id="INPUT29" style="position: absolute; top: 346px; left: 78px; z-index: 32; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT29" style="position: absolute; top: 346px; left: 78px; z-index: 32; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[11]/@VALUE = 0">
<div id="INPUT29" style="position: absolute; top: 346px; left: 78px; z-index: 32; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 1">
<div id="INPUT29" style="position: absolute; top: 346px; left: 78px; z-index: 32; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 2">
<div id="INPUT29" style="position: absolute; top: 346px; left: 78px; z-index: 32; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 3">
<div id="INPUT29" style="position: absolute; top: 346px; left: 78px; z-index: 32; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT29" style="position: absolute; top: 346px; left: 78px; z-index: 32; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[11]/@VALUE = 0">
<div id="INPUT30" style="position: absolute; top: 346px; left: 129px; z-index: 33; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 1">
<div id="INPUT30" style="position: absolute; top: 346px; left: 129px; z-index: 33; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 2">
<div id="INPUT30" style="position: absolute; top: 346px; left: 129px; z-index: 33; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 3">
<div id="INPUT30" style="position: absolute; top: 346px; left: 129px; z-index: 33; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT30" style="position: absolute; top: 346px; left: 129px; z-index: 33; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[11]/@VALUE = 0">
<div id="INPUT30" style="position: absolute; top: 346px; left: 129px; z-index: 33; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 1">
<div id="INPUT30" style="position: absolute; top: 346px; left: 129px; z-index: 33; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 2">
<div id="INPUT30" style="position: absolute; top: 346px; left: 129px; z-index: 33; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 3">
<div id="INPUT30" style="position: absolute; top: 346px; left: 129px; z-index: 33; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT30" style="position: absolute; top: 346px; left: 129px; z-index: 33; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[11]/@VALUE = 0">
<div id="INPUT31" style="position: absolute; top: 346px; left: 181px; z-index: 34; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 1">
<div id="INPUT31" style="position: absolute; top: 346px; left: 181px; z-index: 34; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 2">
<div id="INPUT31" style="position: absolute; top: 346px; left: 181px; z-index: 34; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 3">
<div id="INPUT31" style="position: absolute; top: 346px; left: 181px; z-index: 34; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT31" style="position: absolute; top: 346px; left: 181px; z-index: 34; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[11]/@VALUE = 0">
<div id="INPUT31" style="position: absolute; top: 346px; left: 181px; z-index: 34; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 1">
<div id="INPUT31" style="position: absolute; top: 346px; left: 181px; z-index: 34; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 2">
<div id="INPUT31" style="position: absolute; top: 346px; left: 181px; z-index: 34; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 3">
<div id="INPUT31" style="position: absolute; top: 346px; left: 181px; z-index: 34; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT31" style="position: absolute; top: 346px; left: 181px; z-index: 34; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 386px; left: 26px; z-index: 35; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT32">Auto</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 386px; left: 26px; z-index: 35; color: #323232; font-weight: bold;" id="INPUT32">Auto</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 386px; left: 76px; z-index: 36; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT33">Low</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 386px; left: 76px; z-index: 36; color: #323232; font-weight: bold;" id="INPUT33">Low</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 386px; left: 126px; z-index: 37; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT34">Med</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 386px; left: 126px; z-index: 37; color: #323232; font-weight: bold;" id="INPUT34">Med</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 386px; left: 181px; z-index: 38; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT35">High</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 386px; left: 181px; z-index: 38; color: #323232; font-weight: bold;" id="INPUT35">High</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[12]/@VALUE = 0">
<div id="INPUT36" style="position: absolute; top: 311px; left: 271px; z-index: 39; background-image: url(IMAGES/FAN_OFF.PNG); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 1">
<div id="INPUT36" style="position: absolute; top: 311px; left: 271px; z-index: 39; background-image: url(IMAGES/80.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 2">
<div id="INPUT36" style="position: absolute; top: 311px; left: 271px; z-index: 39; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 3">
<div id="INPUT36" style="position: absolute; top: 311px; left: 271px; z-index: 39; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 4">
<div id="INPUT36" style="position: absolute; top: 311px; left: 271px; z-index: 39; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT36" style="position: absolute; top: 311px; left: 271px; z-index: 39; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[12]/@VALUE = 0">
<div id="INPUT36" style="position: absolute; top: 311px; left: 271px; z-index: 39; background-image: url(IMAGES/FAN_OFF.PNG); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 1">
<div id="INPUT36" style="position: absolute; top: 311px; left: 271px; z-index: 39; background-image: url(IMAGES/80.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 2">
<div id="INPUT36" style="position: absolute; top: 311px; left: 271px; z-index: 39; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 3">
<div id="INPUT36" style="position: absolute; top: 311px; left: 271px; z-index: 39; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[12]/@VALUE = 4">
<div id="INPUT36" style="position: absolute; top: 311px; left: 271px; z-index: 39; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT36" style="position: absolute; top: 311px; left: 271px; z-index: 39; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<form style="position: absolute; top: 291px; left: 21px; z-index: 40;">
<xsl:if test="INPUT[13]/@VALUE = 0">
<input id="INPUT37h" type="hidden" name="{INPUT[13]/@NAME}" value="1" />
<div id="INPUT37" class="imgsub" onclick="PostXML37()" style="background-image: url(IMAGES/AIR-CON1.PNG); line-height: 45px; height: 45px; width: 45px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<input id="INPUT37h" type="hidden" name="{INPUT[13]/@NAME}" value="0" />
<div id="INPUT37" class="imgsub" onclick="PostXML37()" style="background-image: url(IMAGES/VENTILA1.PNG); line-height: 45px; height: 45px; width: 45px; display: none;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<form style="position: absolute; top: 291px; left: 21px; z-index: 40;">
<xsl:if test="INPUT[13]/@VALUE = 0">
<input id="INPUT37h" type="hidden" name="{INPUT[13]/@NAME}" value="1" />
<div id="INPUT37" class="imgsub" onclick="PostXML37()" style="background-image: url(IMAGES/AIR-CON1.PNG); line-height: 45px; height: 45px; width: 45px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<input id="INPUT37h" type="hidden" name="{INPUT[13]/@NAME}" value="0" />
<div id="INPUT37" class="imgsub" onclick="PostXML37()" style="background-image: url(IMAGES/VENTILA1.PNG); line-height: 45px; height: 45px; width: 45px;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<form action="javascript:PostXML38()" style="position: absolute; top: 251px; left: 101px; z-index: 41; font-size: 13px;">
<input id="INPUT38" onfocus="document.getElementById('INPUT38x').style.visibility='visible';SetInputEdited(38, event);" onblur="InputFocused[37]=0" onkeydown="SetInputEdited(38, event);" class="mono" tabindex="1" type="text" style="width: 32px; color: #3C3C3C; background: none; display: none;" name="{INPUT[14]/@NAME}" value="{INPUT[14]/@VALUE}" />
<input type="submit" id="INPUT38x" style="position: absolute; top: 0px; height: 19px; width: 19px; visibility: hidden;" value="&gt;" />
</form>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<form action="javascript:PostXML38()" style="position: absolute; top: 251px; left: 101px; z-index: 41; font-size: 13px;">
<input id="INPUT38" onfocus="document.getElementById('INPUT38x').style.visibility='visible';SetInputEdited(38, event);" onblur="InputFocused[37]=0" onkeydown="SetInputEdited(38, event);" class="mono" tabindex="1" type="text" style="width: 32px; color: #3C3C3C; background: none;" name="{INPUT[14]/@NAME}" value="{INPUT[14]/@VALUE}" />
<input type="submit" id="INPUT38x" style="position: absolute; top: 0px; height: 19px; width: 19px; visibility: hidden;" value="&gt;" />
</form>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<form style="position: absolute; top: 180px; left: 326px; z-index: 42;">
<xsl:if test="INPUT[15]/@VALUE = 0">
<input id="INPUT39h" type="hidden" name="{INPUT[15]/@NAME}" value="1" />
<div id="INPUT39" class="imgsub" onclick="PostXML39()" style="background-image: url(IMAGES/CONTROL-.PNG); line-height: 40px; height: 40px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[15]/@VALUE != 0">
<input id="INPUT39h" type="hidden" name="{INPUT[15]/@NAME}" value="0" />
<div id="INPUT39" class="imgsub" onclick="PostXML39()" style="background-image: url(IMAGES/CONTROL1.PNG); line-height: 40px; height: 40px; width: 50px; display: none;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<form style="position: absolute; top: 180px; left: 326px; z-index: 42;">
<xsl:if test="INPUT[15]/@VALUE = 0">
<input id="INPUT39h" type="hidden" name="{INPUT[15]/@NAME}" value="1" />
<div id="INPUT39" class="imgsub" onclick="PostXML39()" style="background-image: url(IMAGES/CONTROL-.PNG); line-height: 40px; height: 40px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[15]/@VALUE != 0">
<input id="INPUT39h" type="hidden" name="{INPUT[15]/@NAME}" value="0" />
<div id="INPUT39" class="imgsub" onclick="PostXML39()" style="background-image: url(IMAGES/CONTROL1.PNG); line-height: 40px; height: 40px; width: 50px;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 254px; left: 21px; z-index: 43; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT40">Set Temp</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 254px; left: 21px; z-index: 43; color: #323232; font-weight: bold;" id="INPUT40">Set Temp</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 254px; left: 276px; z-index: 45; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT42">Room</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 254px; left: 276px; z-index: 45; color: #323232; font-weight: bold;" id="INPUT42">Room</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 236px; left: 326px; z-index: 46; background-image: url(IMAGES/THERMOME.PNG); line-height: 40px; height: 40px; width: 14px; visibility: hidden;" id="INPUT43"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 236px; left: 326px; z-index: 46; background-image: url(IMAGES/THERMOME.PNG); line-height: 40px; height: 40px; width: 14px;" id="INPUT43"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 199px; left: 276px; z-index: 47; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT44">Valve</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 199px; left: 276px; z-index: 47; color: #323232; font-weight: bold;" id="INPUT44">Valve</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 255px; left: 168px; z-index: 48; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT45">C</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 255px; left: 168px; z-index: 48; color: #323232; font-weight: bold;" id="INPUT45">C</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 254px; left: 391px; z-index: 49; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT46">C</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 254px; left: 391px; z-index: 49; color: #323232; font-weight: bold;" id="INPUT46">C</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<xsl:if test="INPUT[13]/@VALUE = 0">
<div id="INPUT47" style="position: absolute; top: 282px; left: 67px; z-index: 50; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold; display: none;">Cooling</div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div id="INPUT47" style="position: absolute; top: 282px; left: 67px; z-index: 50; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold; display: none;">Fan only</div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<xsl:if test="INPUT[13]/@VALUE = 0">
<div id="INPUT47" style="position: absolute; top: 282px; left: 67px; z-index: 50; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold;">Cooling</div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div id="INPUT47" style="position: absolute; top: 282px; left: 67px; z-index: 50; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold;">Fan only</div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div onclick="PostXML48()" id="INPUT48" style="position: absolute; top: 347px; left: 27px; z-index: 51;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div onclick="PostXML48()" id="INPUT48" style="position: absolute; top: 347px; left: 27px; z-index: 51;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div onclick="PostXML49()" id="INPUT49" style="position: absolute; top: 347px; left: 77px; z-index: 52;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div onclick="PostXML49()" id="INPUT49" style="position: absolute; top: 347px; left: 77px; z-index: 52;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div onclick="PostXML50()" id="INPUT50" style="position: absolute; top: 347px; left: 129px; z-index: 53;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div onclick="PostXML50()" id="INPUT50" style="position: absolute; top: 347px; left: 129px; z-index: 53;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div onclick="PostXML51()" id="INPUT51" style="position: absolute; top: 347px; left: 182px; z-index: 54;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div onclick="PostXML51()" id="INPUT51" style="position: absolute; top: 347px; left: 182px; z-index: 54;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<a href="HOME.XML" class="ablock" style="position: absolute; top: 665px; left: 350px; z-index: 55; background-image: url(IMAGES/HOME1_50.PNG); line-height: 50px; height: 50px; width: 50px;"></a>
<div style="position: absolute; top: 135px; left: 155px; z-index: 56; font-size: 20px; color: #323232; font-weight: bold;">KITCHEN</div>
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
