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
LivingRoom</title>
<script src="LIVING.JS?U=1585234692" language="JavaScript" charset="utf-8" />
<style type="text/css">.mono {font-family: Verdana, Arial, FreeSans, sans-serif;}</style>
</head>
<body onload="GetXML('LIVING.XML'); FunWatchDog();" style="margin: 0px 0px 0px 0px">
<xsl:if test="1585234692 != ACCESS/@UCID">
<xsl:attribute name="onload">
null;
</xsl:attribute>
<div id="cachewarning" style="text-align: left;"></div>
<script src="REFCLR.JS" language="JavaScript" charset="utf-8"></script>
</xsl:if>
<xsl:if test="1585234692 = ACCESS/@UCID">
<table cellpadding="0" cellspacing="0">
<tr>
<!--menu-->
<!--plan-->
<td id="page" style="border-left: 1px solid black; border-top: 1px solid black;">
<div style="background-color:#969696;position: relative; width: 412px; height: 734px;">
<form action="javascript:PostGlobal();">
<xsl:if test="INPUT[3]/@VALUE = 0">
<input class="mono" tabindex="1" type="text" id="INPUT30" style="position: absolute; top: 349px; left: 111px; width: 24px; z-index: 35; background-color: #DCDCDC; border: none; visibility: hidden;" value="{INPUT[12]/@VALUE}" name="{INPUT[12]/@NAME}" onfocus="SetInputEdited(30, event);" onblur="InputFocused[29]=0" onkeydown="SetInputEdited(30, event);"></input>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<input class="mono" tabindex="1" type="text" id="INPUT30" style="position: absolute; top: 349px; left: 111px; width: 24px; z-index: 35; background-color: #DCDCDC; border: none;" value="{INPUT[12]/@VALUE}" name="{INPUT[12]/@NAME}" onfocus="SetInputEdited(30, event);" onblur="InputFocused[29]=0" onkeydown="SetInputEdited(30, event);"></input>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<input class="mono" tabindex="2" type="text" id="INPUT35" style="position: absolute; top: 351px; left: 250px; width: 24px; z-index: 40; background-color: #DCDCDC; border: none; visibility: hidden;" value="{INPUT[16]/@VALUE}" name="{INPUT[16]/@NAME}" onfocus="SetInputEdited(35, event);" onblur="InputFocused[34]=0" onkeydown="SetInputEdited(35, event);"></input>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<input class="mono" tabindex="2" type="text" id="INPUT35" style="position: absolute; top: 351px; left: 250px; width: 24px; z-index: 40; background-color: #DCDCDC; border: none;" value="{INPUT[16]/@VALUE}" name="{INPUT[16]/@NAME}" onfocus="SetInputEdited(35, event);" onblur="InputFocused[34]=0" onkeydown="SetInputEdited(35, event);"></input>
</xsl:if>
</form>
<div style="position: absolute; top: 170px; left: 6px; z-index: 1; background-image: url(IMAGES/CONSOLE.PNG); line-height: 450px; height: 450px; width: 400px;"></div>
<div style="position: absolute; top: 14px; left: 10px; z-index: 2; background-image: url(IMAGES/TECO-LOG.PNG); line-height: 31px; height: 31px; width: 150px;"></div>
<div style="position: absolute; top: 60px; left: 6px; z-index: 3; background-image: url(IMAGES/BAR_-_WI.PNG); line-height: 65px; height: 65px; width: 400px;"></div>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 67px; z-index: 4;height: 5px; width: 90px; border: none; background-color: #F0F0F0; visibility: hidden;" id="INPUT1"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 67px; z-index: 4;height: 5px; width: 90px; border: none; background-color: #F0F0F0;" id="INPUT1"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 157px; z-index: 5;height: 5px; width: 90px; border: none; background-color: #F0F0F0; visibility: hidden;" id="INPUT2"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 157px; z-index: 5;height: 5px; width: 90px; border: none; background-color: #F0F0F0;" id="INPUT2"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 247px; z-index: 6;height: 5px; width: 90px; border: none; background-color: #F0F0F0; visibility: hidden;" id="INPUT3"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 247px; z-index: 6;height: 5px; width: 90px; border: none; background-color: #F0F0F0;" id="INPUT3"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 86px; z-index: 7; color: #646464; font-weight: bold; visibility: hidden;" id="INPUT4">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 86px; z-index: 7; color: #646464; font-weight: bold;" id="INPUT4">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 170px; z-index: 8; color: #646464; font-weight: bold; visibility: hidden;" id="INPUT5">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 170px; z-index: 8; color: #646464; font-weight: bold;" id="INPUT5">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 256px; z-index: 9; color: #646464; font-weight: bold; visibility: hidden;" id="INPUT6">CURTAINS</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 256px; z-index: 9; color: #646464; font-weight: bold;" id="INPUT6">CURTAINS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 86px; z-index: 10; color: #6200EE; font-weight: bold; visibility: hidden;" id="INPUT7">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 86px; z-index: 10; color: #6200EE; font-weight: bold;" id="INPUT7">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 170px; z-index: 11; color: #6200EE; font-weight: bold; visibility: hidden;" id="INPUT8">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 170px; z-index: 11; color: #6200EE; font-weight: bold;" id="INPUT8">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 256px; z-index: 12; color: #6200EE; font-weight: bold; visibility: hidden;" id="INPUT9">CURTAINS</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 256px; z-index: 12; color: #6200EE; font-weight: bold;" id="INPUT9">CURTAINS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 67px; z-index: 13;height: 5px; width: 90px; border: none; background-color: #6200EE; visibility: hidden;" id="INPUT10"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 67px; z-index: 13;height: 5px; width: 90px; border: none; background-color: #6200EE;" id="INPUT10"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 157px; z-index: 14;height: 5px; width: 90px; border: none; background-color: #6200EE; visibility: hidden;" id="INPUT11"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 157px; z-index: 14;height: 5px; width: 90px; border: none; background-color: #6200EE;" id="INPUT11"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 247px; z-index: 15;height: 5px; width: 90px; border: none; background-color: #6200EE; visibility: hidden;" id="INPUT12"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 247px; z-index: 15;height: 5px; width: 90px; border: none; background-color: #6200EE;" id="INPUT12"></div>
</xsl:if>
<div onclick="PostXML13()" id="INPUT13" style="position: absolute; top: 75px; left: 66px; z-index: 16;cursor:pointer;height:35px; width:90px; border: none; background: none;"></div>
<div onclick="PostXML14()" id="INPUT14" style="position: absolute; top: 75px; left: 157px; z-index: 17;cursor:pointer;height:35px; width:90px; border: none; background: none;"></div>
<div onclick="PostXML15()" id="INPUT15" style="position: absolute; top: 75px; left: 247px; z-index: 18;cursor:pointer;height:35px; width:90px; border: none; background: none;"></div>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div id="INPUT16" style="position: absolute; top: 640px; left: 174px; z-index: 19; background-image: url(IMAGES/MOTION_S.PNG); line-height: 78px; height: 78px; width: 63px;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div id="INPUT16" style="position: absolute; top: 640px; left: 174px; z-index: 19; background-image: url(IMAGES/MOTION_S.GIF); line-height: 78px; height: 78px; width: 63px;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[5]/@VALUE = 0">
<div id="INPUT17" style="position: absolute; top: 296px; left: 45px; z-index: 20; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE != 0">
<div id="INPUT17" style="position: absolute; top: 296px; left: 45px; z-index: 20; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[5]/@VALUE = 0">
<div id="INPUT17" style="position: absolute; top: 296px; left: 45px; z-index: 20; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE != 0">
<div id="INPUT17" style="position: absolute; top: 296px; left: 45px; z-index: 20; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[6]/@VALUE = 0">
<div id="INPUT18" style="position: absolute; top: 296px; left: 174px; z-index: 21; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div id="INPUT18" style="position: absolute; top: 296px; left: 174px; z-index: 21; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[6]/@VALUE = 0">
<div id="INPUT18" style="position: absolute; top: 296px; left: 174px; z-index: 21; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div id="INPUT18" style="position: absolute; top: 296px; left: 174px; z-index: 21; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[7]/@VALUE = 0">
<div id="INPUT19" style="position: absolute; top: 296px; left: 303px; z-index: 22; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div id="INPUT19" style="position: absolute; top: 296px; left: 303px; z-index: 22; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[7]/@VALUE = 0">
<div id="INPUT19" style="position: absolute; top: 296px; left: 303px; z-index: 22; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div id="INPUT19" style="position: absolute; top: 296px; left: 303px; z-index: 22; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[8]/@VALUE = 0">
<div id="INPUT20" style="position: absolute; top: 420px; left: 105px; z-index: 23; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<div id="INPUT20" style="position: absolute; top: 420px; left: 105px; z-index: 23; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[8]/@VALUE = 0">
<div id="INPUT20" style="position: absolute; top: 420px; left: 105px; z-index: 23; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<div id="INPUT20" style="position: absolute; top: 420px; left: 105px; z-index: 23; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[9]/@VALUE = 0">
<div id="INPUT21" style="position: absolute; top: 420px; left: 251px; z-index: 24; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div id="INPUT21" style="position: absolute; top: 420px; left: 251px; z-index: 24; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[9]/@VALUE = 0">
<div id="INPUT21" style="position: absolute; top: 420px; left: 251px; z-index: 24; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div id="INPUT21" style="position: absolute; top: 420px; left: 251px; z-index: 24; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE = 0">
<xsl:if test="INPUT[10]/@VALUE = 0">
<div id="INPUT22" style="position: absolute; top: 375px; left: 185px; z-index: 25; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div id="INPUT22" style="position: absolute; top: 375px; left: 185px; z-index: 25; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<xsl:if test="INPUT[10]/@VALUE = 0">
<div id="INPUT22" style="position: absolute; top: 375px; left: 185px; z-index: 25; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div id="INPUT22" style="position: absolute; top: 375px; left: 185px; z-index: 25; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML23()" id="INPUT23" style="position: absolute; top: 292px; left: 46px; z-index: 26;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML23()" id="INPUT23" style="position: absolute; top: 292px; left: 46px; z-index: 26;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML24()" id="INPUT24" style="position: absolute; top: 292px; left: 173px; z-index: 27;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML24()" id="INPUT24" style="position: absolute; top: 292px; left: 173px; z-index: 27;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML25()" id="INPUT25" style="position: absolute; top: 292px; left: 303px; z-index: 28;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML25()" id="INPUT25" style="position: absolute; top: 292px; left: 303px; z-index: 28;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML26()" id="INPUT26" style="position: absolute; top: 418px; left: 106px; z-index: 29;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML26()" id="INPUT26" style="position: absolute; top: 418px; left: 106px; z-index: 29;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML27()" id="INPUT27" style="position: absolute; top: 418px; left: 250px; z-index: 30;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML27()" id="INPUT27" style="position: absolute; top: 418px; left: 250px; z-index: 30;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE = 0">
<div onclick="PostXML28()" id="INPUT28" style="position: absolute; top: 360px; left: 175px; z-index: 31;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div onclick="PostXML28()" id="INPUT28" style="position: absolute; top: 360px; left: 175px; z-index: 31;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<a href="HOME.XML" class="ablock" style="position: absolute; top: 665px; left: 350px; z-index: 32; background-image: url(IMAGES/HOME1_50.PNG); line-height: 50px; height: 50px; width: 50px;"></a>
<div style="position: absolute; top: 135px; left: 120px; z-index: 33; font-size: 20px; color: #323232; font-weight: bold;">LIVING ROOM</div>
<xsl:if test="INPUT[3]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[11]/@VALUE = 0">
<div id="INPUT29" style="position: absolute; top: 244px; left: 79px; z-index: 34; background-image: url(IMAGES/WINDOW9.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 1">
<div id="INPUT29" style="position: absolute; top: 244px; left: 79px; z-index: 34; background-image: url(IMAGES/WINDOW10.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 2">
<div id="INPUT29" style="position: absolute; top: 244px; left: 79px; z-index: 34; background-image: url(IMAGES/WINDOW11.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 3">
<div id="INPUT29" style="position: absolute; top: 244px; left: 79px; z-index: 34; background-image: url(IMAGES/WINDOW12.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 4">
<div id="INPUT29" style="position: absolute; top: 244px; left: 79px; z-index: 34; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT29" style="position: absolute; top: 244px; left: 79px; z-index: 34; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[11]/@VALUE = 0">
<div id="INPUT29" style="position: absolute; top: 244px; left: 79px; z-index: 34; background-image: url(IMAGES/WINDOW9.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 1">
<div id="INPUT29" style="position: absolute; top: 244px; left: 79px; z-index: 34; background-image: url(IMAGES/WINDOW10.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 2">
<div id="INPUT29" style="position: absolute; top: 244px; left: 79px; z-index: 34; background-image: url(IMAGES/WINDOW11.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 3">
<div id="INPUT29" style="position: absolute; top: 244px; left: 79px; z-index: 34; background-image: url(IMAGES/WINDOW12.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[11]/@VALUE = 4">
<div id="INPUT29" style="position: absolute; top: 244px; left: 79px; z-index: 34; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT29" style="position: absolute; top: 244px; left: 79px; z-index: 34; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 350px; left: 145px; z-index: 36; font-size: 15px; color: #272727; visibility: hidden;" id="INPUT31">%</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 350px; left: 145px; z-index: 36; font-size: 15px; color: #272727;" id="INPUT31">%</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<xsl:if test="INPUT[13]/@VALUE = 0">
<div id="INPUT32" style="position: absolute; top: 380px; left: 139px; z-index: 37; background-image: url(IMAGES/BTN_BL_5.PNG); line-height: 51px; height: 51px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div id="INPUT32" style="position: absolute; top: 380px; left: 139px; z-index: 37; background-image: url(IMAGES/BTN_GREE.PNG); line-height: 50px; height: 50px; width: 50px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<xsl:if test="INPUT[13]/@VALUE = 0">
<div id="INPUT32" style="position: absolute; top: 380px; left: 139px; z-index: 37; background-image: url(IMAGES/BTN_BL_5.PNG); line-height: 51px; height: 51px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div id="INPUT32" style="position: absolute; top: 380px; left: 139px; z-index: 37; background-image: url(IMAGES/BTN_GREE.PNG); line-height: 50px; height: 50px; width: 50px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<xsl:if test="INPUT[14]/@VALUE = 0">
<div id="INPUT33" style="position: absolute; top: 380px; left: 71px; z-index: 38; background-image: url(IMAGES/BTN_BL_7.PNG); line-height: 51px; height: 51px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div id="INPUT33" style="position: absolute; top: 380px; left: 71px; z-index: 38; background-image: url(IMAGES/BTN_GRE1.PNG); line-height: 50px; height: 50px; width: 50px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<xsl:if test="INPUT[14]/@VALUE = 0">
<div id="INPUT33" style="position: absolute; top: 380px; left: 71px; z-index: 38; background-image: url(IMAGES/BTN_BL_7.PNG); line-height: 51px; height: 51px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div id="INPUT33" style="position: absolute; top: 380px; left: 71px; z-index: 38; background-image: url(IMAGES/BTN_GRE1.PNG); line-height: 50px; height: 50px; width: 50px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[15]/@VALUE = 0">
<div id="INPUT34" style="position: absolute; top: 246px; left: 218px; z-index: 39; background-image: url(IMAGES/WINDOW9.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 1">
<div id="INPUT34" style="position: absolute; top: 246px; left: 218px; z-index: 39; background-image: url(IMAGES/WINDOW10.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 2">
<div id="INPUT34" style="position: absolute; top: 246px; left: 218px; z-index: 39; background-image: url(IMAGES/WINDOW11.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 3">
<div id="INPUT34" style="position: absolute; top: 246px; left: 218px; z-index: 39; background-image: url(IMAGES/WINDOW12.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 4">
<div id="INPUT34" style="position: absolute; top: 246px; left: 218px; z-index: 39; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT34" style="position: absolute; top: 246px; left: 218px; z-index: 39; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[15]/@VALUE = 0">
<div id="INPUT34" style="position: absolute; top: 246px; left: 218px; z-index: 39; background-image: url(IMAGES/WINDOW9.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 1">
<div id="INPUT34" style="position: absolute; top: 246px; left: 218px; z-index: 39; background-image: url(IMAGES/WINDOW10.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 2">
<div id="INPUT34" style="position: absolute; top: 246px; left: 218px; z-index: 39; background-image: url(IMAGES/WINDOW11.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 3">
<div id="INPUT34" style="position: absolute; top: 246px; left: 218px; z-index: 39; background-image: url(IMAGES/WINDOW12.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 4">
<div id="INPUT34" style="position: absolute; top: 246px; left: 218px; z-index: 39; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT34" style="position: absolute; top: 246px; left: 218px; z-index: 39; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 352px; left: 284px; z-index: 41; font-size: 15px; color: #272727; visibility: hidden;" id="INPUT36">%</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 352px; left: 284px; z-index: 41; font-size: 15px; color: #272727;" id="INPUT36">%</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<xsl:if test="INPUT[17]/@VALUE = 0">
<div id="INPUT37" style="position: absolute; top: 382px; left: 275px; z-index: 42; background-image: url(IMAGES/BTN_BL_5.PNG); line-height: 51px; height: 51px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE != 0">
<div id="INPUT37" style="position: absolute; top: 382px; left: 275px; z-index: 42; background-image: url(IMAGES/BTN_GREE.PNG); line-height: 50px; height: 50px; width: 50px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<xsl:if test="INPUT[17]/@VALUE = 0">
<div id="INPUT37" style="position: absolute; top: 382px; left: 275px; z-index: 42; background-image: url(IMAGES/BTN_BL_5.PNG); line-height: 51px; height: 51px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE != 0">
<div id="INPUT37" style="position: absolute; top: 382px; left: 275px; z-index: 42; background-image: url(IMAGES/BTN_GREE.PNG); line-height: 50px; height: 50px; width: 50px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<xsl:if test="INPUT[18]/@VALUE = 0">
<div id="INPUT38" style="position: absolute; top: 382px; left: 209px; z-index: 43; background-image: url(IMAGES/BTN_BL_7.PNG); line-height: 51px; height: 51px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[18]/@VALUE != 0">
<div id="INPUT38" style="position: absolute; top: 382px; left: 209px; z-index: 43; background-image: url(IMAGES/BTN_GRE1.PNG); line-height: 50px; height: 50px; width: 50px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<xsl:if test="INPUT[18]/@VALUE = 0">
<div id="INPUT38" style="position: absolute; top: 382px; left: 209px; z-index: 43; background-image: url(IMAGES/BTN_BL_7.PNG); line-height: 51px; height: 51px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[18]/@VALUE != 0">
<div id="INPUT38" style="position: absolute; top: 382px; left: 209px; z-index: 43; background-image: url(IMAGES/BTN_GRE1.PNG); line-height: 50px; height: 50px; width: 50px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div onclick="PostXML39()" id="INPUT39" style="position: absolute; top: 381px; left: 141px; z-index: 44;cursor:pointer;height:50px; width:50px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div onclick="PostXML39()" id="INPUT39" style="position: absolute; top: 381px; left: 141px; z-index: 44;cursor:pointer;height:50px; width:50px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div onclick="PostXML40()" id="INPUT40" style="position: absolute; top: 381px; left: 70px; z-index: 45;cursor:pointer;height:50px; width:50px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div onclick="PostXML40()" id="INPUT40" style="position: absolute; top: 381px; left: 70px; z-index: 45;cursor:pointer;height:50px; width:50px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div onclick="PostXML41()" id="INPUT41" style="position: absolute; top: 381px; left: 276px; z-index: 46;cursor:pointer;height:50px; width:50px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div onclick="PostXML41()" id="INPUT41" style="position: absolute; top: 381px; left: 276px; z-index: 46;cursor:pointer;height:50px; width:50px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div onclick="PostXML42()" id="INPUT42" style="position: absolute; top: 381px; left: 209px; z-index: 47;cursor:pointer;height:50px; width:50px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div onclick="PostXML42()" id="INPUT42" style="position: absolute; top: 381px; left: 209px; z-index: 47;cursor:pointer;height:50px; width:50px; border: none; background: none;"></div>
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
