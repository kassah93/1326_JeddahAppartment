<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dc="http://purl.org/dc/elements/1.1/" version="1.0">
<xsl:output doctype-public="-//W3C//DTD HTML 4.01 STRICT//EN" encoding="UTF-8" />
<xsl:template match="/PAGE">
<html>
<head>
<meta name="viewport" content="width=device-width" />
<meta name="generator" content="WebMaker" />
<meta name="author" content="" />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache, must-revalidate" />
<meta http-equiv="expires" content="0" />
<link rel="shortcut icon" href="FAVICON.ICO" type="image/x-icon" />
<link href="STYLE.CSS" rel="stylesheet" type="text/css" />
<title>
<xsl:value-of select="/PAGE/@TITLE" />
Room1</title>
<script src="ROOM1.JS?U=1584957179" language="JavaScript" charset="utf-8" />
<style type="text/css">.mono {font-family: Verdana, Arial, FreeSans, sans-serif;}</style>
</head>
<body onload="GetXML('ROOM1.XML'); FunWatchDog();" style="margin: 0px 0px 0px 0px">
<xsl:if test="1584957179 != ACCESS/@UCID">
<xsl:attribute name="onload">
null;
</xsl:attribute>
<div id="cachewarning" style="text-align: left;"></div>
<script src="REFCLR.JS" language="JavaScript" charset="utf-8"></script>
</xsl:if>
<xsl:if test="1584957179 = ACCESS/@UCID">
<table cellpadding="0" cellspacing="0">
<tr>
<!--menu-->
<!--plan-->
<td id="page" style="border-left: 1px solid black; border-top: 1px solid black;">
<div style="background-color:#969696;position: relative; width: 412px; height: 734px;">
<form action="javascript:PostGlobal();">
<xsl:if test="INPUT[9]/@VALUE = 0">
<input class="mono" tabindex="1" type="text" id="INPUT23" style="position: absolute; top: 311px; left: 190px; width: 30px; z-index: 26; height: 18px; background-color: #DCDCDC; border: none; visibility: hidden;" value="{INPUT[11]/@VALUE}" name="{INPUT[11]/@NAME}" onfocus="SetInputEdited(23, event);" onblur="InputFocused[22]=0" onkeydown="SetInputEdited(23, event);"></input>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<input class="mono" tabindex="1" type="text" id="INPUT23" style="position: absolute; top: 311px; left: 190px; width: 30px; z-index: 26; height: 18px; background-color: #DCDCDC; border: none;" value="{INPUT[11]/@VALUE}" name="{INPUT[11]/@NAME}" onfocus="SetInputEdited(23, event);" onblur="InputFocused[22]=0" onkeydown="SetInputEdited(23, event);"></input>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<input class="mono" tabindex="3" type="text" id="INPUT58" style="position: absolute; top: 251px; left: 345px; width: 36px; z-index: 61; background: none; visibility: hidden;" value="{INPUT[23]/@VALUE}" readonly="readonly" />
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<input class="mono" tabindex="3" type="text" id="INPUT58" style="position: absolute; top: 251px; left: 345px; width: 36px; z-index: 61; background: none;" value="{INPUT[23]/@VALUE}" readonly="readonly" />
</xsl:if>
<input class="mono" tabindex="4" type="text" size="19" style="position: absolute; top: 15px; left: 225px; z-index: 68; border: solid red 2px;" value="? ? ?" readonly="readonly" />
</form>
<div style="position: absolute; top: 170px; left: 6px; z-index: 1; background-image: url(IMAGES/CONSOLE.PNG); line-height: 450px; height: 450px; width: 400px;"></div>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[2]/@VALUE = 0">
<div id="INPUT1" style="position: absolute; top: 207px; left: 45px; z-index: 2; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div id="INPUT1" style="position: absolute; top: 207px; left: 45px; z-index: 2; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[2]/@VALUE = 0">
<div id="INPUT1" style="position: absolute; top: 207px; left: 45px; z-index: 2; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div id="INPUT1" style="position: absolute; top: 207px; left: 45px; z-index: 2; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[3]/@VALUE = 0">
<div id="INPUT2" style="position: absolute; top: 207px; left: 174px; z-index: 3; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div id="INPUT2" style="position: absolute; top: 207px; left: 174px; z-index: 3; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[3]/@VALUE = 0">
<div id="INPUT2" style="position: absolute; top: 207px; left: 174px; z-index: 3; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div id="INPUT2" style="position: absolute; top: 207px; left: 174px; z-index: 3; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[4]/@VALUE = 0">
<div id="INPUT3" style="position: absolute; top: 207px; left: 303px; z-index: 4; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div id="INPUT3" style="position: absolute; top: 207px; left: 303px; z-index: 4; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[4]/@VALUE = 0">
<div id="INPUT3" style="position: absolute; top: 207px; left: 303px; z-index: 4; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div id="INPUT3" style="position: absolute; top: 207px; left: 303px; z-index: 4; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[5]/@VALUE = 0">
<div id="INPUT4" style="position: absolute; top: 331px; left: 105px; z-index: 5; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE != 0">
<div id="INPUT4" style="position: absolute; top: 331px; left: 105px; z-index: 5; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[5]/@VALUE = 0">
<div id="INPUT4" style="position: absolute; top: 331px; left: 105px; z-index: 5; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE != 0">
<div id="INPUT4" style="position: absolute; top: 331px; left: 105px; z-index: 5; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[6]/@VALUE = 0">
<div id="INPUT5" style="position: absolute; top: 331px; left: 251px; z-index: 6; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div id="INPUT5" style="position: absolute; top: 331px; left: 251px; z-index: 6; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[6]/@VALUE = 0">
<div id="INPUT5" style="position: absolute; top: 331px; left: 251px; z-index: 6; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div id="INPUT5" style="position: absolute; top: 331px; left: 251px; z-index: 6; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
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
<xsl:if test="INPUT[9]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[10]/@VALUE = 0">
<div id="INPUT22" style="position: absolute; top: 206px; left: 158px; z-index: 25; background-image: url(IMAGES/WINDOW9.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[10]/@VALUE = 1">
<div id="INPUT22" style="position: absolute; top: 206px; left: 158px; z-index: 25; background-image: url(IMAGES/WINDOW10.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[10]/@VALUE = 2">
<div id="INPUT22" style="position: absolute; top: 206px; left: 158px; z-index: 25; background-image: url(IMAGES/WINDOW11.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[10]/@VALUE = 3">
<div id="INPUT22" style="position: absolute; top: 206px; left: 158px; z-index: 25; background-image: url(IMAGES/WINDOW12.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[10]/@VALUE = 4">
<div id="INPUT22" style="position: absolute; top: 206px; left: 158px; z-index: 25; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT22" style="position: absolute; top: 206px; left: 158px; z-index: 25; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[10]/@VALUE = 0">
<div id="INPUT22" style="position: absolute; top: 206px; left: 158px; z-index: 25; background-image: url(IMAGES/WINDOW9.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[10]/@VALUE = 1">
<div id="INPUT22" style="position: absolute; top: 206px; left: 158px; z-index: 25; background-image: url(IMAGES/WINDOW10.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[10]/@VALUE = 2">
<div id="INPUT22" style="position: absolute; top: 206px; left: 158px; z-index: 25; background-image: url(IMAGES/WINDOW11.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[10]/@VALUE = 3">
<div id="INPUT22" style="position: absolute; top: 206px; left: 158px; z-index: 25; background-image: url(IMAGES/WINDOW12.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[10]/@VALUE = 4">
<div id="INPUT22" style="position: absolute; top: 206px; left: 158px; z-index: 25; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT22" style="position: absolute; top: 206px; left: 158px; z-index: 25; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE = 0">
<div style="position: absolute; top: 312px; left: 224px; z-index: 27; font-size: 15px; color: #272727; visibility: hidden;" id="INPUT24">%</div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div style="position: absolute; top: 312px; left: 224px; z-index: 27; font-size: 15px; color: #272727;" id="INPUT24">%</div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE = 0">
<xsl:if test="INPUT[12]/@VALUE = 0">
<div id="INPUT25" style="position: absolute; top: 342px; left: 222px; z-index: 28; background-image: url(IMAGES/BTN_BL_5.PNG); line-height: 51px; height: 51px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div id="INPUT25" style="position: absolute; top: 342px; left: 222px; z-index: 28; background-image: url(IMAGES/BTN_GREE.PNG); line-height: 50px; height: 50px; width: 50px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<xsl:if test="INPUT[12]/@VALUE = 0">
<div id="INPUT25" style="position: absolute; top: 342px; left: 222px; z-index: 28; background-image: url(IMAGES/BTN_BL_5.PNG); line-height: 51px; height: 51px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div id="INPUT25" style="position: absolute; top: 342px; left: 222px; z-index: 28; background-image: url(IMAGES/BTN_GREE.PNG); line-height: 50px; height: 50px; width: 50px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE = 0">
<xsl:if test="INPUT[13]/@VALUE = 0">
<div id="INPUT26" style="position: absolute; top: 342px; left: 151px; z-index: 29; background-image: url(IMAGES/BTN_BL_7.PNG); line-height: 51px; height: 51px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div id="INPUT26" style="position: absolute; top: 342px; left: 151px; z-index: 29; background-image: url(IMAGES/BTN_GRE1.PNG); line-height: 50px; height: 50px; width: 50px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<xsl:if test="INPUT[13]/@VALUE = 0">
<div id="INPUT26" style="position: absolute; top: 342px; left: 151px; z-index: 29; background-image: url(IMAGES/BTN_BL_7.PNG); line-height: 51px; height: 51px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div id="INPUT26" style="position: absolute; top: 342px; left: 151px; z-index: 29; background-image: url(IMAGES/BTN_GRE1.PNG); line-height: 50px; height: 50px; width: 50px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 301px; z-index: 30;height: 5px; width: 90px; border: none; background-color: #F0F0F0; visibility: hidden;" id="INPUT27"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 301px; z-index: 30;height: 5px; width: 90px; border: none; background-color: #F0F0F0;" id="INPUT27"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 336px; z-index: 31; color: #646464; font-weight: bold; visibility: hidden;" id="INPUT28">AC</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 336px; z-index: 31; color: #646464; font-weight: bold;" id="INPUT28">AC</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 336px; z-index: 32; color: #6200EE; font-weight: bold; visibility: hidden;" id="INPUT29">AC</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 336px; z-index: 32; color: #6200EE; font-weight: bold;" id="INPUT29">AC</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 301px; z-index: 33;height: 5px; width: 90px; border: none; background-color: #6200EE; visibility: hidden;" id="INPUT30"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 301px; z-index: 33;height: 5px; width: 90px; border: none; background-color: #6200EE;" id="INPUT30"></div>
</xsl:if>
<div onclick="PostXML31()" id="INPUT31" style="position: absolute; top: 75px; left: 301px; z-index: 34;cursor:pointer;height:35px; width:90px; border: none; background: none;"></div>
<xsl:if test="INPUT[15]/@VALUE = 0">
<div id="INPUT32" style="position: absolute; top: 640px; left: 244px; z-index: 35; background-image: url(IMAGES/MOTION_S.PNG); line-height: 78px; height: 78px; width: 63px;"></div>
</xsl:if>
<xsl:if test="INPUT[15]/@VALUE != 0">
<div id="INPUT32" style="position: absolute; top: 640px; left: 244px; z-index: 35; background-image: url(IMAGES/MOTION_S.GIF); line-height: 78px; height: 78px; width: 63px;"></div>
</xsl:if>
<xsl:if test="INPUT[16]/@VALUE = 0">
<div id="INPUT33" style="position: absolute; top: 640px; left: 94px; z-index: 36; background-image: url(IMAGES/MOTION_S.PNG); line-height: 78px; height: 78px; width: 63px;"></div>
</xsl:if>
<xsl:if test="INPUT[16]/@VALUE != 0">
<div id="INPUT33" style="position: absolute; top: 640px; left: 94px; z-index: 36; background-image: url(IMAGES/MOTION_S.GIF); line-height: 78px; height: 78px; width: 63px;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML34()" id="INPUT34" style="position: absolute; top: 205px; left: 45px; z-index: 37;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML34()" id="INPUT34" style="position: absolute; top: 205px; left: 45px; z-index: 37;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML35()" id="INPUT35" style="position: absolute; top: 205px; left: 173px; z-index: 38;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML35()" id="INPUT35" style="position: absolute; top: 205px; left: 173px; z-index: 38;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML36()" id="INPUT36" style="position: absolute; top: 205px; left: 303px; z-index: 39;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML36()" id="INPUT36" style="position: absolute; top: 205px; left: 303px; z-index: 39;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML37()" id="INPUT37" style="position: absolute; top: 330px; left: 103px; z-index: 40;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML37()" id="INPUT37" style="position: absolute; top: 330px; left: 103px; z-index: 40;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML38()" id="INPUT38" style="position: absolute; top: 330px; left: 251px; z-index: 41;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML38()" id="INPUT38" style="position: absolute; top: 330px; left: 251px; z-index: 41;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE = 0">
<div onclick="PostXML39()" id="INPUT39" style="position: absolute; top: 360px; left: 175px; z-index: 42;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div onclick="PostXML39()" id="INPUT39" style="position: absolute; top: 360px; left: 175px; z-index: 42;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<form style="position: absolute; top: 191px; left: 20px; z-index: 43;">
<xsl:if test="INPUT[17]/@VALUE = 0">
<input id="INPUT40h" type="hidden" name="{INPUT[17]/@NAME}" value="1" />
<div id="INPUT40" class="imgsub" onclick="PostXML40()" style="background-image: url(IMAGES/OFF.PNG); line-height: 31px; height: 31px; width: 65px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE != 0">
<input id="INPUT40h" type="hidden" name="{INPUT[17]/@NAME}" value="0" />
<div id="INPUT40" class="imgsub" onclick="PostXML40()" style="background-image: url(IMAGES/ON.PNG); line-height: 31px; height: 31px; width: 65px; display: none;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<form style="position: absolute; top: 191px; left: 20px; z-index: 43;">
<xsl:if test="INPUT[17]/@VALUE = 0">
<input id="INPUT40h" type="hidden" name="{INPUT[17]/@NAME}" value="1" />
<div id="INPUT40" class="imgsub" onclick="PostXML40()" style="background-image: url(IMAGES/OFF.PNG); line-height: 31px; height: 31px; width: 65px;"></div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE != 0">
<input id="INPUT40h" type="hidden" name="{INPUT[17]/@NAME}" value="0" />
<div id="INPUT40" class="imgsub" onclick="PostXML40()" style="background-image: url(IMAGES/ON.PNG); line-height: 31px; height: 31px; width: 65px;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[18]/@VALUE = 0">
<div id="INPUT41" style="position: absolute; top: 346px; left: 25px; z-index: 44; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[18]/@VALUE = 1">
<div id="INPUT41" style="position: absolute; top: 346px; left: 25px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[18]/@VALUE = 2">
<div id="INPUT41" style="position: absolute; top: 346px; left: 25px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[18]/@VALUE = 3">
<div id="INPUT41" style="position: absolute; top: 346px; left: 25px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT41" style="position: absolute; top: 346px; left: 25px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[18]/@VALUE = 0">
<div id="INPUT41" style="position: absolute; top: 346px; left: 25px; z-index: 44; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[18]/@VALUE = 1">
<div id="INPUT41" style="position: absolute; top: 346px; left: 25px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[18]/@VALUE = 2">
<div id="INPUT41" style="position: absolute; top: 346px; left: 25px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[18]/@VALUE = 3">
<div id="INPUT41" style="position: absolute; top: 346px; left: 25px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT41" style="position: absolute; top: 346px; left: 25px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[18]/@VALUE = 0">
<div id="INPUT42" style="position: absolute; top: 346px; left: 77px; z-index: 45; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[18]/@VALUE = 1">
<div id="INPUT42" style="position: absolute; top: 346px; left: 77px; z-index: 45; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[18]/@VALUE = 2">
<div id="INPUT42" style="position: absolute; top: 346px; left: 77px; z-index: 45; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[18]/@VALUE = 3">
<div id="INPUT42" style="position: absolute; top: 346px; left: 77px; z-index: 45; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT42" style="position: absolute; top: 346px; left: 77px; z-index: 45; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[18]/@VALUE = 0">
<div id="INPUT42" style="position: absolute; top: 346px; left: 77px; z-index: 45; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[18]/@VALUE = 1">
<div id="INPUT42" style="position: absolute; top: 346px; left: 77px; z-index: 45; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[18]/@VALUE = 2">
<div id="INPUT42" style="position: absolute; top: 346px; left: 77px; z-index: 45; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[18]/@VALUE = 3">
<div id="INPUT42" style="position: absolute; top: 346px; left: 77px; z-index: 45; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT42" style="position: absolute; top: 346px; left: 77px; z-index: 45; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[18]/@VALUE = 0">
<div id="INPUT43" style="position: absolute; top: 346px; left: 128px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[18]/@VALUE = 1">
<div id="INPUT43" style="position: absolute; top: 346px; left: 128px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[18]/@VALUE = 2">
<div id="INPUT43" style="position: absolute; top: 346px; left: 128px; z-index: 46; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[18]/@VALUE = 3">
<div id="INPUT43" style="position: absolute; top: 346px; left: 128px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT43" style="position: absolute; top: 346px; left: 128px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[18]/@VALUE = 0">
<div id="INPUT43" style="position: absolute; top: 346px; left: 128px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[18]/@VALUE = 1">
<div id="INPUT43" style="position: absolute; top: 346px; left: 128px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[18]/@VALUE = 2">
<div id="INPUT43" style="position: absolute; top: 346px; left: 128px; z-index: 46; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[18]/@VALUE = 3">
<div id="INPUT43" style="position: absolute; top: 346px; left: 128px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT43" style="position: absolute; top: 346px; left: 128px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[18]/@VALUE = 0">
<div id="INPUT44" style="position: absolute; top: 346px; left: 180px; z-index: 47; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[18]/@VALUE = 1">
<div id="INPUT44" style="position: absolute; top: 346px; left: 180px; z-index: 47; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[18]/@VALUE = 2">
<div id="INPUT44" style="position: absolute; top: 346px; left: 180px; z-index: 47; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[18]/@VALUE = 3">
<div id="INPUT44" style="position: absolute; top: 346px; left: 180px; z-index: 47; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT44" style="position: absolute; top: 346px; left: 180px; z-index: 47; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[18]/@VALUE = 0">
<div id="INPUT44" style="position: absolute; top: 346px; left: 180px; z-index: 47; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[18]/@VALUE = 1">
<div id="INPUT44" style="position: absolute; top: 346px; left: 180px; z-index: 47; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[18]/@VALUE = 2">
<div id="INPUT44" style="position: absolute; top: 346px; left: 180px; z-index: 47; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[18]/@VALUE = 3">
<div id="INPUT44" style="position: absolute; top: 346px; left: 180px; z-index: 47; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT44" style="position: absolute; top: 346px; left: 180px; z-index: 47; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<div style="position: absolute; top: 386px; left: 25px; z-index: 48; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT45">Auto</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div style="position: absolute; top: 386px; left: 25px; z-index: 48; color: #323232; font-weight: bold;" id="INPUT45">Auto</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<div style="position: absolute; top: 386px; left: 75px; z-index: 49; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT46">Low</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div style="position: absolute; top: 386px; left: 75px; z-index: 49; color: #323232; font-weight: bold;" id="INPUT46">Low</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<div style="position: absolute; top: 386px; left: 125px; z-index: 50; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT47">Med</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div style="position: absolute; top: 386px; left: 125px; z-index: 50; color: #323232; font-weight: bold;" id="INPUT47">Med</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<div style="position: absolute; top: 386px; left: 180px; z-index: 51; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT48">High</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div style="position: absolute; top: 386px; left: 180px; z-index: 51; color: #323232; font-weight: bold;" id="INPUT48">High</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<div onclick="PostXML49()" id="INPUT49" style="position: absolute; top: 347px; left: 26px; z-index: 52;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div onclick="PostXML49()" id="INPUT49" style="position: absolute; top: 347px; left: 26px; z-index: 52;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<div onclick="PostXML50()" id="INPUT50" style="position: absolute; top: 347px; left: 76px; z-index: 53;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div onclick="PostXML50()" id="INPUT50" style="position: absolute; top: 347px; left: 76px; z-index: 53;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<div onclick="PostXML51()" id="INPUT51" style="position: absolute; top: 347px; left: 128px; z-index: 54;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div onclick="PostXML51()" id="INPUT51" style="position: absolute; top: 347px; left: 128px; z-index: 54;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<div onclick="PostXML52()" id="INPUT52" style="position: absolute; top: 347px; left: 181px; z-index: 55;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div onclick="PostXML52()" id="INPUT52" style="position: absolute; top: 347px; left: 181px; z-index: 55;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[19]/@VALUE = 0">
<div id="INPUT53" style="position: absolute; top: 311px; left: 270px; z-index: 56; background-image: url(IMAGES/FAN_OFF.PNG); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[19]/@VALUE = 1">
<div id="INPUT53" style="position: absolute; top: 311px; left: 270px; z-index: 56; background-image: url(IMAGES/80.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[19]/@VALUE = 2">
<div id="INPUT53" style="position: absolute; top: 311px; left: 270px; z-index: 56; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[19]/@VALUE = 3">
<div id="INPUT53" style="position: absolute; top: 311px; left: 270px; z-index: 56; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[19]/@VALUE = 4">
<div id="INPUT53" style="position: absolute; top: 311px; left: 270px; z-index: 56; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT53" style="position: absolute; top: 311px; left: 270px; z-index: 56; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[19]/@VALUE = 0">
<div id="INPUT53" style="position: absolute; top: 311px; left: 270px; z-index: 56; background-image: url(IMAGES/FAN_OFF.PNG); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[19]/@VALUE = 1">
<div id="INPUT53" style="position: absolute; top: 311px; left: 270px; z-index: 56; background-image: url(IMAGES/80.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[19]/@VALUE = 2">
<div id="INPUT53" style="position: absolute; top: 311px; left: 270px; z-index: 56; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[19]/@VALUE = 3">
<div id="INPUT53" style="position: absolute; top: 311px; left: 270px; z-index: 56; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[19]/@VALUE = 4">
<div id="INPUT53" style="position: absolute; top: 311px; left: 270px; z-index: 56; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT53" style="position: absolute; top: 311px; left: 270px; z-index: 56; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<form style="position: absolute; top: 291px; left: 20px; z-index: 57;">
<xsl:if test="INPUT[20]/@VALUE = 0">
<input id="INPUT54h" type="hidden" name="{INPUT[20]/@NAME}" value="1" />
<div id="INPUT54" class="imgsub" onclick="PostXML54()" style="background-image: url(IMAGES/AIR-CON1.PNG); line-height: 45px; height: 45px; width: 45px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[20]/@VALUE != 0">
<input id="INPUT54h" type="hidden" name="{INPUT[20]/@NAME}" value="0" />
<div id="INPUT54" class="imgsub" onclick="PostXML54()" style="background-image: url(IMAGES/VENTILA1.PNG); line-height: 45px; height: 45px; width: 45px; display: none;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<form style="position: absolute; top: 291px; left: 20px; z-index: 57;">
<xsl:if test="INPUT[20]/@VALUE = 0">
<input id="INPUT54h" type="hidden" name="{INPUT[20]/@NAME}" value="1" />
<div id="INPUT54" class="imgsub" onclick="PostXML54()" style="background-image: url(IMAGES/AIR-CON1.PNG); line-height: 45px; height: 45px; width: 45px;"></div>
</xsl:if>
<xsl:if test="INPUT[20]/@VALUE != 0">
<input id="INPUT54h" type="hidden" name="{INPUT[20]/@NAME}" value="0" />
<div id="INPUT54" class="imgsub" onclick="PostXML54()" style="background-image: url(IMAGES/VENTILA1.PNG); line-height: 45px; height: 45px; width: 45px;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<form action="javascript:PostXML55()" style="position: absolute; top: 251px; left: 100px; z-index: 58; font-size: 13px;">
<input id="INPUT55" onfocus="document.getElementById('INPUT55x').style.visibility='visible';SetInputEdited(55, event);" onblur="InputFocused[54]=0" onkeydown="SetInputEdited(55, event);" class="mono" tabindex="2" type="text" style="width: 36px; color: #3C3C3C; background: none; display: none;" name="{INPUT[21]/@NAME}" value="{INPUT[21]/@VALUE}" />
<input type="submit" id="INPUT55x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<form action="javascript:PostXML55()" style="position: absolute; top: 251px; left: 100px; z-index: 58; font-size: 13px;">
<input id="INPUT55" onfocus="document.getElementById('INPUT55x').style.visibility='visible';SetInputEdited(55, event);" onblur="InputFocused[54]=0" onkeydown="SetInputEdited(55, event);" class="mono" tabindex="2" type="text" style="width: 36px; color: #3C3C3C; background: none;" name="{INPUT[21]/@NAME}" value="{INPUT[21]/@VALUE}" />
<input type="submit" id="INPUT55x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<form style="position: absolute; top: 180px; left: 325px; z-index: 59;">
<xsl:if test="INPUT[22]/@VALUE = 0">
<input id="INPUT56h" type="hidden" name="{INPUT[22]/@NAME}" value="1" />
<div id="INPUT56" class="imgsub" onclick="PostXML56()" style="background-image: url(IMAGES/CONTROL-.PNG); line-height: 40px; height: 40px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[22]/@VALUE != 0">
<input id="INPUT56h" type="hidden" name="{INPUT[22]/@NAME}" value="0" />
<div id="INPUT56" class="imgsub" onclick="PostXML56()" style="background-image: url(IMAGES/CONTROL1.PNG); line-height: 40px; height: 40px; width: 50px; display: none;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<form style="position: absolute; top: 180px; left: 325px; z-index: 59;">
<xsl:if test="INPUT[22]/@VALUE = 0">
<input id="INPUT56h" type="hidden" name="{INPUT[22]/@NAME}" value="1" />
<div id="INPUT56" class="imgsub" onclick="PostXML56()" style="background-image: url(IMAGES/CONTROL-.PNG); line-height: 40px; height: 40px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[22]/@VALUE != 0">
<input id="INPUT56h" type="hidden" name="{INPUT[22]/@NAME}" value="0" />
<div id="INPUT56" class="imgsub" onclick="PostXML56()" style="background-image: url(IMAGES/CONTROL1.PNG); line-height: 40px; height: 40px; width: 50px;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<div style="position: absolute; top: 254px; left: 20px; z-index: 60; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT57">Set Temp</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div style="position: absolute; top: 254px; left: 20px; z-index: 60; color: #323232; font-weight: bold;" id="INPUT57">Set Temp</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<div style="position: absolute; top: 254px; left: 275px; z-index: 62; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT59">Room</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div style="position: absolute; top: 254px; left: 275px; z-index: 62; color: #323232; font-weight: bold;" id="INPUT59">Room</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<div style="position: absolute; top: 236px; left: 325px; z-index: 63; background-image: url(IMAGES/THERMOME.PNG); line-height: 40px; height: 40px; width: 14px; visibility: hidden;" id="INPUT60"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div style="position: absolute; top: 236px; left: 325px; z-index: 63; background-image: url(IMAGES/THERMOME.PNG); line-height: 40px; height: 40px; width: 14px;" id="INPUT60"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<div style="position: absolute; top: 199px; left: 275px; z-index: 64; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT61">Valve</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div style="position: absolute; top: 199px; left: 275px; z-index: 64; color: #323232; font-weight: bold;" id="INPUT61">Valve</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<div style="position: absolute; top: 255px; left: 167px; z-index: 65; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT62">C</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div style="position: absolute; top: 255px; left: 167px; z-index: 65; color: #323232; font-weight: bold;" id="INPUT62">C</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<div style="position: absolute; top: 254px; left: 390px; z-index: 66; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT63">C</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div style="position: absolute; top: 254px; left: 390px; z-index: 66; color: #323232; font-weight: bold;" id="INPUT63">C</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<xsl:if test="INPUT[20]/@VALUE = 0">
<div id="INPUT64" style="position: absolute; top: 282px; left: 66px; z-index: 67; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold; display: none;">Cooling</div>
</xsl:if>
<xsl:if test="INPUT[20]/@VALUE != 0">
<div id="INPUT64" style="position: absolute; top: 282px; left: 66px; z-index: 67; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold; display: none;">Fan only</div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<xsl:if test="INPUT[20]/@VALUE = 0">
<div id="INPUT64" style="position: absolute; top: 282px; left: 66px; z-index: 67; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold;">Cooling</div>
</xsl:if>
<xsl:if test="INPUT[20]/@VALUE != 0">
<div id="INPUT64" style="position: absolute; top: 282px; left: 66px; z-index: 67; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold;">Fan only</div>
</xsl:if>
</xsl:if>
<div style="position: absolute; top: 135px; left: 160px; z-index: 69; font-size: 20px; color: #323232; font-weight: bold;">ROOM1</div>
<xsl:if test="INPUT[9]/@VALUE = 0">
<div onclick="PostXML65()" id="INPUT65" style="position: absolute; top: 342px; left: 223px; z-index: 70;cursor:pointer;height:50px; width:50px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div onclick="PostXML65()" id="INPUT65" style="position: absolute; top: 342px; left: 223px; z-index: 70;cursor:pointer;height:50px; width:50px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE = 0">
<div onclick="PostXML66()" id="INPUT66" style="position: absolute; top: 342px; left: 152px; z-index: 71;cursor:pointer;height:50px; width:50px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div onclick="PostXML66()" id="INPUT66" style="position: absolute; top: 342px; left: 152px; z-index: 71;cursor:pointer;height:50px; width:50px; border: none; background: none;"></div>
</xsl:if>
</div>
</td>
</tr>
<!--bottom-->
<tr style="line-height: 0px; height: 0px;">
<td id="bottom" colspan="2" style="text-align: center"></td>
</tr>
</table>
</xsl:if>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
