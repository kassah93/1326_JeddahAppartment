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
MasterRoom</title>
<script src="MASTER.JS?U=1585234835" language="JavaScript" charset="utf-8" />
<style type="text/css">.mono {font-family: Verdana, Arial, FreeSans, sans-serif;}</style>
</head>
<body onload="GetXML('MASTER.XML'); FunWatchDog();" style="margin: 0px 0px 0px 0px">
<xsl:if test="1585234835 != ACCESS/@UCID">
<xsl:attribute name="onload">
null;
</xsl:attribute>
<div id="cachewarning" style="text-align: left;"></div>
<script src="REFCLR.JS" language="JavaScript" charset="utf-8"></script>
</xsl:if>
<xsl:if test="1585234835 = ACCESS/@UCID">
<table cellpadding="0" cellspacing="0">
<tr>
<!--menu-->
<!--plan-->
<td id="page" style="border-left: 1px solid black; border-top: 1px solid black;">
<div style="background-color:#969696;position: relative; width: 412px; height: 734px;">
<form action="javascript:PostGlobal();">
<xsl:if test="INPUT[12]/@VALUE = 0">
<input class="mono" tabindex="4" type="text" id="INPUT54" style="position: absolute; top: 250px; left: 346px; width: 32px; z-index: 57; background: none; visibility: hidden;" value="{INPUT[21]/@VALUE}" readonly="readonly" />
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<input class="mono" tabindex="4" type="text" id="INPUT54" style="position: absolute; top: 250px; left: 346px; width: 32px; z-index: 57; background: none;" value="{INPUT[21]/@VALUE}" readonly="readonly" />
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE = 0">
<input class="mono" tabindex="1" type="text" id="INPUT66" style="position: absolute; top: 374px; left: 116px; width: 24px; z-index: 71; background-color: #DCDCDC; border: none; visibility: hidden;" value="{INPUT[23]/@VALUE}" name="{INPUT[23]/@NAME}" onfocus="SetInputEdited(66, event);" onblur="InputFocused[65]=0" onkeydown="SetInputEdited(66, event);"></input>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<input class="mono" tabindex="1" type="text" id="INPUT66" style="position: absolute; top: 374px; left: 116px; width: 24px; z-index: 71; background-color: #DCDCDC; border: none;" value="{INPUT[23]/@VALUE}" name="{INPUT[23]/@NAME}" onfocus="SetInputEdited(66, event);" onblur="InputFocused[65]=0" onkeydown="SetInputEdited(66, event);"></input>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE = 0">
<input class="mono" tabindex="2" type="text" id="INPUT71" style="position: absolute; top: 376px; left: 255px; width: 24px; z-index: 76; background-color: #DCDCDC; border: none; visibility: hidden;" value="{INPUT[27]/@VALUE}" name="{INPUT[27]/@NAME}" onfocus="SetInputEdited(71, event);" onblur="InputFocused[70]=0" onkeydown="SetInputEdited(71, event);"></input>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<input class="mono" tabindex="2" type="text" id="INPUT71" style="position: absolute; top: 376px; left: 255px; width: 24px; z-index: 76; background-color: #DCDCDC; border: none;" value="{INPUT[27]/@VALUE}" name="{INPUT[27]/@NAME}" onfocus="SetInputEdited(71, event);" onblur="InputFocused[70]=0" onkeydown="SetInputEdited(71, event);"></input>
</xsl:if>
</form>
<div style="position: absolute; top: 170px; left: 6px; z-index: 1; background-image: url(IMAGES/CONSOLE.PNG); line-height: 450px; height: 450px; width: 400px;"></div>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[2]/@VALUE = 0">
<div id="INPUT1" style="position: absolute; top: 296px; left: 50px; z-index: 2; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div id="INPUT1" style="position: absolute; top: 296px; left: 50px; z-index: 2; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[2]/@VALUE = 0">
<div id="INPUT1" style="position: absolute; top: 296px; left: 50px; z-index: 2; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div id="INPUT1" style="position: absolute; top: 296px; left: 50px; z-index: 2; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[3]/@VALUE = 0">
<div id="INPUT2" style="position: absolute; top: 296px; left: 131px; z-index: 3; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div id="INPUT2" style="position: absolute; top: 296px; left: 131px; z-index: 3; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[3]/@VALUE = 0">
<div id="INPUT2" style="position: absolute; top: 296px; left: 131px; z-index: 3; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div id="INPUT2" style="position: absolute; top: 296px; left: 131px; z-index: 3; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[4]/@VALUE = 0">
<div id="INPUT3" style="position: absolute; top: 296px; left: 213px; z-index: 4; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div id="INPUT3" style="position: absolute; top: 296px; left: 213px; z-index: 4; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[4]/@VALUE = 0">
<div id="INPUT3" style="position: absolute; top: 296px; left: 213px; z-index: 4; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div id="INPUT3" style="position: absolute; top: 296px; left: 213px; z-index: 4; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[5]/@VALUE = 0">
<div id="INPUT4" style="position: absolute; top: 296px; left: 294px; z-index: 5; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE != 0">
<div id="INPUT4" style="position: absolute; top: 296px; left: 294px; z-index: 5; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[5]/@VALUE = 0">
<div id="INPUT4" style="position: absolute; top: 296px; left: 294px; z-index: 5; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE != 0">
<div id="INPUT4" style="position: absolute; top: 296px; left: 294px; z-index: 5; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[6]/@VALUE = 0">
<div id="INPUT5" style="position: absolute; top: 420px; left: 50px; z-index: 6; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div id="INPUT5" style="position: absolute; top: 420px; left: 50px; z-index: 6; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[6]/@VALUE = 0">
<div id="INPUT5" style="position: absolute; top: 420px; left: 50px; z-index: 6; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div id="INPUT5" style="position: absolute; top: 420px; left: 50px; z-index: 6; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[7]/@VALUE = 0">
<div id="INPUT6" style="position: absolute; top: 420px; left: 131px; z-index: 7; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div id="INPUT6" style="position: absolute; top: 420px; left: 131px; z-index: 7; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[7]/@VALUE = 0">
<div id="INPUT6" style="position: absolute; top: 420px; left: 131px; z-index: 7; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div id="INPUT6" style="position: absolute; top: 420px; left: 131px; z-index: 7; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[8]/@VALUE = 0">
<div id="INPUT7" style="position: absolute; top: 420px; left: 213px; z-index: 8; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<div id="INPUT7" style="position: absolute; top: 420px; left: 213px; z-index: 8; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[8]/@VALUE = 0">
<div id="INPUT7" style="position: absolute; top: 420px; left: 213px; z-index: 8; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<div id="INPUT7" style="position: absolute; top: 420px; left: 213px; z-index: 8; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[9]/@VALUE = 0">
<div id="INPUT8" style="position: absolute; top: 420px; left: 294px; z-index: 9; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div id="INPUT8" style="position: absolute; top: 420px; left: 294px; z-index: 9; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[9]/@VALUE = 0">
<div id="INPUT8" style="position: absolute; top: 420px; left: 294px; z-index: 9; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div id="INPUT8" style="position: absolute; top: 420px; left: 294px; z-index: 9; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<div style="position: absolute; top: 14px; left: 10px; z-index: 10; background-image: url(IMAGES/TECO-LOG.PNG); line-height: 31px; height: 31px; width: 150px;"></div>
<div style="position: absolute; top: 60px; left: 6px; z-index: 11; background-image: url(IMAGES/BAR_-_WI.PNG); line-height: 65px; height: 65px; width: 400px;"></div>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 31px; z-index: 12;height: 5px; width: 90px; border: none; background-color: #F0F0F0; visibility: hidden;" id="INPUT9"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 31px; z-index: 12;height: 5px; width: 90px; border: none; background-color: #F0F0F0;" id="INPUT9"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 121px; z-index: 13;height: 5px; width: 90px; border: none; background-color: #F0F0F0; visibility: hidden;" id="INPUT10"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 121px; z-index: 13;height: 5px; width: 90px; border: none; background-color: #F0F0F0;" id="INPUT10"></div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 211px; z-index: 14;height: 5px; width: 90px; border: none; background-color: #F0F0F0; visibility: hidden;" id="INPUT11"></div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 211px; z-index: 14;height: 5px; width: 90px; border: none; background-color: #F0F0F0;" id="INPUT11"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 50px; z-index: 15; color: #646464; font-weight: bold; visibility: hidden;" id="INPUT12">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 50px; z-index: 15; color: #646464; font-weight: bold;" id="INPUT12">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 134px; z-index: 16; color: #646464; font-weight: bold; visibility: hidden;" id="INPUT13">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 134px; z-index: 16; color: #646464; font-weight: bold;" id="INPUT13">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 220px; z-index: 17; color: #646464; font-weight: bold; visibility: hidden;" id="INPUT14">CURTAINS</div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 220px; z-index: 17; color: #646464; font-weight: bold;" id="INPUT14">CURTAINS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 50px; z-index: 18; color: #6200EE; font-weight: bold; visibility: hidden;" id="INPUT15">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 50px; z-index: 18; color: #6200EE; font-weight: bold;" id="INPUT15">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 134px; z-index: 19; color: #6200EE; font-weight: bold; visibility: hidden;" id="INPUT16">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 134px; z-index: 19; color: #6200EE; font-weight: bold;" id="INPUT16">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 220px; z-index: 20; color: #6200EE; font-weight: bold; visibility: hidden;" id="INPUT17">CURTAINS</div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 220px; z-index: 20; color: #6200EE; font-weight: bold;" id="INPUT17">CURTAINS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 31px; z-index: 21;height: 5px; width: 90px; border: none; background-color: #6200EE; visibility: hidden;" id="INPUT18"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 31px; z-index: 21;height: 5px; width: 90px; border: none; background-color: #6200EE;" id="INPUT18"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 121px; z-index: 22;height: 5px; width: 90px; border: none; background-color: #6200EE; visibility: hidden;" id="INPUT19"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 121px; z-index: 22;height: 5px; width: 90px; border: none; background-color: #6200EE;" id="INPUT19"></div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 211px; z-index: 23;height: 5px; width: 90px; border: none; background-color: #6200EE; visibility: hidden;" id="INPUT20"></div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 211px; z-index: 23;height: 5px; width: 90px; border: none; background-color: #6200EE;" id="INPUT20"></div>
</xsl:if>
<div onclick="PostXML21()" id="INPUT21" style="position: absolute; top: 75px; left: 30px; z-index: 24;cursor:pointer;height:35px; width:90px; border: none; background: none;"></div>
<div onclick="PostXML22()" id="INPUT22" style="position: absolute; top: 75px; left: 121px; z-index: 25;cursor:pointer;height:35px; width:90px; border: none; background: none;"></div>
<div onclick="PostXML23()" id="INPUT23" style="position: absolute; top: 75px; left: 211px; z-index: 26;cursor:pointer;height:35px; width:90px; border: none; background: none;"></div>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 301px; z-index: 27;height: 5px; width: 90px; border: none; background-color: #F0F0F0; visibility: hidden;" id="INPUT24"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 301px; z-index: 27;height: 5px; width: 90px; border: none; background-color: #F0F0F0;" id="INPUT24"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 336px; z-index: 28; color: #646464; font-weight: bold; visibility: hidden;" id="INPUT25">AC</div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 336px; z-index: 28; color: #646464; font-weight: bold;" id="INPUT25">AC</div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 336px; z-index: 29; color: #6200EE; font-weight: bold; visibility: hidden;" id="INPUT26">AC</div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 336px; z-index: 29; color: #6200EE; font-weight: bold;" id="INPUT26">AC</div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 301px; z-index: 30;height: 5px; width: 90px; border: none; background-color: #6200EE; visibility: hidden;" id="INPUT27"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 301px; z-index: 30;height: 5px; width: 90px; border: none; background-color: #6200EE;" id="INPUT27"></div>
</xsl:if>
<div onclick="PostXML28()" id="INPUT28" style="position: absolute; top: 75px; left: 301px; z-index: 31;cursor:pointer;height:35px; width:90px; border: none; background: none;"></div>
<xsl:if test="INPUT[10]/@VALUE = 0">
<xsl:if test="INPUT[13]/@VALUE = 0">
<div id="INPUT29" style="position: absolute; top: 375px; left: 185px; z-index: 32; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div id="INPUT29" style="position: absolute; top: 375px; left: 185px; z-index: 32; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<xsl:if test="INPUT[13]/@VALUE = 0">
<div id="INPUT29" style="position: absolute; top: 375px; left: 185px; z-index: 32; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div id="INPUT29" style="position: absolute; top: 375px; left: 185px; z-index: 32; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<div id="INPUT30" style="position: absolute; top: 640px; left: 174px; z-index: 33; background-image: url(IMAGES/MOTION_S.PNG); line-height: 78px; height: 78px; width: 63px;"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div id="INPUT30" style="position: absolute; top: 640px; left: 174px; z-index: 33; background-image: url(IMAGES/MOTION_S.GIF); line-height: 78px; height: 78px; width: 63px;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML31()" id="INPUT31" style="position: absolute; top: 293px; left: 50px; z-index: 34;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML31()" id="INPUT31" style="position: absolute; top: 293px; left: 50px; z-index: 34;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML32()" id="INPUT32" style="position: absolute; top: 293px; left: 131px; z-index: 35;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML32()" id="INPUT32" style="position: absolute; top: 293px; left: 131px; z-index: 35;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML33()" id="INPUT33" style="position: absolute; top: 293px; left: 296px; z-index: 36;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML33()" id="INPUT33" style="position: absolute; top: 293px; left: 296px; z-index: 36;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML34()" id="INPUT34" style="position: absolute; top: 417px; left: 50px; z-index: 37;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML34()" id="INPUT34" style="position: absolute; top: 417px; left: 50px; z-index: 37;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML35()" id="INPUT35" style="position: absolute; top: 417px; left: 131px; z-index: 38;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML35()" id="INPUT35" style="position: absolute; top: 417px; left: 131px; z-index: 38;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML36()" id="INPUT36" style="position: absolute; top: 417px; left: 296px; z-index: 39;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML36()" id="INPUT36" style="position: absolute; top: 417px; left: 296px; z-index: 39;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML37()" id="INPUT37" style="position: absolute; top: 293px; left: 215px; z-index: 40;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML37()" id="INPUT37" style="position: absolute; top: 293px; left: 215px; z-index: 40;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML38()" id="INPUT38" style="position: absolute; top: 417px; left: 215px; z-index: 41;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML38()" id="INPUT38" style="position: absolute; top: 417px; left: 215px; z-index: 41;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div onclick="PostXML39()" id="INPUT39" style="position: absolute; top: 360px; left: 175px; z-index: 42;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div onclick="PostXML39()" id="INPUT39" style="position: absolute; top: 360px; left: 175px; z-index: 42;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<form style="position: absolute; top: 190px; left: 21px; z-index: 43;">
<xsl:if test="INPUT[15]/@VALUE = 0">
<input id="INPUT40h" type="hidden" name="{INPUT[15]/@NAME}" value="1" />
<div id="INPUT40" class="imgsub" onclick="PostXML40()" style="background-image: url(IMAGES/OFF.PNG); line-height: 31px; height: 31px; width: 65px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[15]/@VALUE != 0">
<input id="INPUT40h" type="hidden" name="{INPUT[15]/@NAME}" value="0" />
<div id="INPUT40" class="imgsub" onclick="PostXML40()" style="background-image: url(IMAGES/ON.PNG); line-height: 31px; height: 31px; width: 65px; display: none;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<form style="position: absolute; top: 190px; left: 21px; z-index: 43;">
<xsl:if test="INPUT[15]/@VALUE = 0">
<input id="INPUT40h" type="hidden" name="{INPUT[15]/@NAME}" value="1" />
<div id="INPUT40" class="imgsub" onclick="PostXML40()" style="background-image: url(IMAGES/OFF.PNG); line-height: 31px; height: 31px; width: 65px;"></div>
</xsl:if>
<xsl:if test="INPUT[15]/@VALUE != 0">
<input id="INPUT40h" type="hidden" name="{INPUT[15]/@NAME}" value="0" />
<div id="INPUT40" class="imgsub" onclick="PostXML40()" style="background-image: url(IMAGES/ON.PNG); line-height: 31px; height: 31px; width: 65px;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[16]/@VALUE = 0">
<div id="INPUT41" style="position: absolute; top: 345px; left: 26px; z-index: 44; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 1">
<div id="INPUT41" style="position: absolute; top: 345px; left: 26px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 2">
<div id="INPUT41" style="position: absolute; top: 345px; left: 26px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 3">
<div id="INPUT41" style="position: absolute; top: 345px; left: 26px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT41" style="position: absolute; top: 345px; left: 26px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[16]/@VALUE = 0">
<div id="INPUT41" style="position: absolute; top: 345px; left: 26px; z-index: 44; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 1">
<div id="INPUT41" style="position: absolute; top: 345px; left: 26px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 2">
<div id="INPUT41" style="position: absolute; top: 345px; left: 26px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 3">
<div id="INPUT41" style="position: absolute; top: 345px; left: 26px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT41" style="position: absolute; top: 345px; left: 26px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[16]/@VALUE = 0">
<div id="INPUT42" style="position: absolute; top: 345px; left: 78px; z-index: 45; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 1">
<div id="INPUT42" style="position: absolute; top: 345px; left: 78px; z-index: 45; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 2">
<div id="INPUT42" style="position: absolute; top: 345px; left: 78px; z-index: 45; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 3">
<div id="INPUT42" style="position: absolute; top: 345px; left: 78px; z-index: 45; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT42" style="position: absolute; top: 345px; left: 78px; z-index: 45; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[16]/@VALUE = 0">
<div id="INPUT42" style="position: absolute; top: 345px; left: 78px; z-index: 45; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 1">
<div id="INPUT42" style="position: absolute; top: 345px; left: 78px; z-index: 45; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 2">
<div id="INPUT42" style="position: absolute; top: 345px; left: 78px; z-index: 45; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 3">
<div id="INPUT42" style="position: absolute; top: 345px; left: 78px; z-index: 45; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT42" style="position: absolute; top: 345px; left: 78px; z-index: 45; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[16]/@VALUE = 0">
<div id="INPUT43" style="position: absolute; top: 345px; left: 129px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 1">
<div id="INPUT43" style="position: absolute; top: 345px; left: 129px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 2">
<div id="INPUT43" style="position: absolute; top: 345px; left: 129px; z-index: 46; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 3">
<div id="INPUT43" style="position: absolute; top: 345px; left: 129px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT43" style="position: absolute; top: 345px; left: 129px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[16]/@VALUE = 0">
<div id="INPUT43" style="position: absolute; top: 345px; left: 129px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 1">
<div id="INPUT43" style="position: absolute; top: 345px; left: 129px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 2">
<div id="INPUT43" style="position: absolute; top: 345px; left: 129px; z-index: 46; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 3">
<div id="INPUT43" style="position: absolute; top: 345px; left: 129px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT43" style="position: absolute; top: 345px; left: 129px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[16]/@VALUE = 0">
<div id="INPUT44" style="position: absolute; top: 345px; left: 181px; z-index: 47; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 1">
<div id="INPUT44" style="position: absolute; top: 345px; left: 181px; z-index: 47; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 2">
<div id="INPUT44" style="position: absolute; top: 345px; left: 181px; z-index: 47; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 3">
<div id="INPUT44" style="position: absolute; top: 345px; left: 181px; z-index: 47; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT44" style="position: absolute; top: 345px; left: 181px; z-index: 47; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[16]/@VALUE = 0">
<div id="INPUT44" style="position: absolute; top: 345px; left: 181px; z-index: 47; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 1">
<div id="INPUT44" style="position: absolute; top: 345px; left: 181px; z-index: 47; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 2">
<div id="INPUT44" style="position: absolute; top: 345px; left: 181px; z-index: 47; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 3">
<div id="INPUT44" style="position: absolute; top: 345px; left: 181px; z-index: 47; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT44" style="position: absolute; top: 345px; left: 181px; z-index: 47; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<div style="position: absolute; top: 385px; left: 26px; z-index: 48; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT45">Auto</div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div style="position: absolute; top: 385px; left: 26px; z-index: 48; color: #323232; font-weight: bold;" id="INPUT45">Auto</div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<div style="position: absolute; top: 385px; left: 76px; z-index: 49; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT46">Low</div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div style="position: absolute; top: 385px; left: 76px; z-index: 49; color: #323232; font-weight: bold;" id="INPUT46">Low</div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<div style="position: absolute; top: 385px; left: 126px; z-index: 50; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT47">Med</div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div style="position: absolute; top: 385px; left: 126px; z-index: 50; color: #323232; font-weight: bold;" id="INPUT47">Med</div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<div style="position: absolute; top: 385px; left: 181px; z-index: 51; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT48">High</div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div style="position: absolute; top: 385px; left: 181px; z-index: 51; color: #323232; font-weight: bold;" id="INPUT48">High</div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[17]/@VALUE = 0">
<div id="INPUT49" style="position: absolute; top: 310px; left: 271px; z-index: 52; background-image: url(IMAGES/FAN_OFF.PNG); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[17]/@VALUE = 1">
<div id="INPUT49" style="position: absolute; top: 310px; left: 271px; z-index: 52; background-image: url(IMAGES/80.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[17]/@VALUE = 2">
<div id="INPUT49" style="position: absolute; top: 310px; left: 271px; z-index: 52; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[17]/@VALUE = 3">
<div id="INPUT49" style="position: absolute; top: 310px; left: 271px; z-index: 52; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[17]/@VALUE = 4">
<div id="INPUT49" style="position: absolute; top: 310px; left: 271px; z-index: 52; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT49" style="position: absolute; top: 310px; left: 271px; z-index: 52; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[17]/@VALUE = 0">
<div id="INPUT49" style="position: absolute; top: 310px; left: 271px; z-index: 52; background-image: url(IMAGES/FAN_OFF.PNG); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[17]/@VALUE = 1">
<div id="INPUT49" style="position: absolute; top: 310px; left: 271px; z-index: 52; background-image: url(IMAGES/80.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[17]/@VALUE = 2">
<div id="INPUT49" style="position: absolute; top: 310px; left: 271px; z-index: 52; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[17]/@VALUE = 3">
<div id="INPUT49" style="position: absolute; top: 310px; left: 271px; z-index: 52; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[17]/@VALUE = 4">
<div id="INPUT49" style="position: absolute; top: 310px; left: 271px; z-index: 52; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT49" style="position: absolute; top: 310px; left: 271px; z-index: 52; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<form style="position: absolute; top: 290px; left: 21px; z-index: 53;">
<xsl:if test="INPUT[18]/@VALUE = 0">
<input id="INPUT50h" type="hidden" name="{INPUT[18]/@NAME}" value="1" />
<div id="INPUT50" class="imgsub" onclick="PostXML50()" style="background-image: url(IMAGES/AIR-CON1.PNG); line-height: 45px; height: 45px; width: 45px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[18]/@VALUE != 0">
<input id="INPUT50h" type="hidden" name="{INPUT[18]/@NAME}" value="0" />
<div id="INPUT50" class="imgsub" onclick="PostXML50()" style="background-image: url(IMAGES/VENTILA1.PNG); line-height: 45px; height: 45px; width: 45px; display: none;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<form style="position: absolute; top: 290px; left: 21px; z-index: 53;">
<xsl:if test="INPUT[18]/@VALUE = 0">
<input id="INPUT50h" type="hidden" name="{INPUT[18]/@NAME}" value="1" />
<div id="INPUT50" class="imgsub" onclick="PostXML50()" style="background-image: url(IMAGES/AIR-CON1.PNG); line-height: 45px; height: 45px; width: 45px;"></div>
</xsl:if>
<xsl:if test="INPUT[18]/@VALUE != 0">
<input id="INPUT50h" type="hidden" name="{INPUT[18]/@NAME}" value="0" />
<div id="INPUT50" class="imgsub" onclick="PostXML50()" style="background-image: url(IMAGES/VENTILA1.PNG); line-height: 45px; height: 45px; width: 45px;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<form action="javascript:PostXML51()" style="position: absolute; top: 250px; left: 101px; z-index: 54; font-size: 13px;">
<input id="INPUT51" onfocus="document.getElementById('INPUT51x').style.visibility='visible';SetInputEdited(51, event);" onblur="InputFocused[50]=0" onkeydown="SetInputEdited(51, event);" class="mono" tabindex="3" type="text" style="width: 32px; color: #3C3C3C; background: none; display: none;" name="{INPUT[19]/@NAME}" value="{INPUT[19]/@VALUE}" />
<input type="submit" id="INPUT51x" style="position: absolute; top: 0px; height: 19px; width: 19px; visibility: hidden;" value="&gt;" />
</form>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<form action="javascript:PostXML51()" style="position: absolute; top: 250px; left: 101px; z-index: 54; font-size: 13px;">
<input id="INPUT51" onfocus="document.getElementById('INPUT51x').style.visibility='visible';SetInputEdited(51, event);" onblur="InputFocused[50]=0" onkeydown="SetInputEdited(51, event);" class="mono" tabindex="3" type="text" style="width: 32px; color: #3C3C3C; background: none;" name="{INPUT[19]/@NAME}" value="{INPUT[19]/@VALUE}" />
<input type="submit" id="INPUT51x" style="position: absolute; top: 0px; height: 19px; width: 19px; visibility: hidden;" value="&gt;" />
</form>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<form style="position: absolute; top: 179px; left: 326px; z-index: 55;">
<xsl:if test="INPUT[20]/@VALUE = 0">
<input id="INPUT52h" type="hidden" name="{INPUT[20]/@NAME}" value="1" />
<div id="INPUT52" class="imgsub" onclick="PostXML52()" style="background-image: url(IMAGES/CONTROL-.PNG); line-height: 40px; height: 40px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[20]/@VALUE != 0">
<input id="INPUT52h" type="hidden" name="{INPUT[20]/@NAME}" value="0" />
<div id="INPUT52" class="imgsub" onclick="PostXML52()" style="background-image: url(IMAGES/CONTROL1.PNG); line-height: 40px; height: 40px; width: 50px; display: none;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<form style="position: absolute; top: 179px; left: 326px; z-index: 55;">
<xsl:if test="INPUT[20]/@VALUE = 0">
<input id="INPUT52h" type="hidden" name="{INPUT[20]/@NAME}" value="1" />
<div id="INPUT52" class="imgsub" onclick="PostXML52()" style="background-image: url(IMAGES/CONTROL-.PNG); line-height: 40px; height: 40px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[20]/@VALUE != 0">
<input id="INPUT52h" type="hidden" name="{INPUT[20]/@NAME}" value="0" />
<div id="INPUT52" class="imgsub" onclick="PostXML52()" style="background-image: url(IMAGES/CONTROL1.PNG); line-height: 40px; height: 40px; width: 50px;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<div style="position: absolute; top: 253px; left: 21px; z-index: 56; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT53">Set Temp</div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div style="position: absolute; top: 253px; left: 21px; z-index: 56; color: #323232; font-weight: bold;" id="INPUT53">Set Temp</div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<div style="position: absolute; top: 253px; left: 276px; z-index: 58; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT55">Room</div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div style="position: absolute; top: 253px; left: 276px; z-index: 58; color: #323232; font-weight: bold;" id="INPUT55">Room</div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<div style="position: absolute; top: 235px; left: 326px; z-index: 59; background-image: url(IMAGES/THERMOME.PNG); line-height: 40px; height: 40px; width: 14px; visibility: hidden;" id="INPUT56"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div style="position: absolute; top: 235px; left: 326px; z-index: 59; background-image: url(IMAGES/THERMOME.PNG); line-height: 40px; height: 40px; width: 14px;" id="INPUT56"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<div style="position: absolute; top: 198px; left: 276px; z-index: 60; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT57">Valve</div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div style="position: absolute; top: 198px; left: 276px; z-index: 60; color: #323232; font-weight: bold;" id="INPUT57">Valve</div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<div style="position: absolute; top: 254px; left: 168px; z-index: 61; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT58">C</div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div style="position: absolute; top: 254px; left: 168px; z-index: 61; color: #323232; font-weight: bold;" id="INPUT58">C</div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<div style="position: absolute; top: 253px; left: 391px; z-index: 62; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT59">C</div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div style="position: absolute; top: 253px; left: 391px; z-index: 62; color: #323232; font-weight: bold;" id="INPUT59">C</div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<xsl:if test="INPUT[18]/@VALUE = 0">
<div id="INPUT60" style="position: absolute; top: 281px; left: 67px; z-index: 63; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold; display: none;">Cooling</div>
</xsl:if>
<xsl:if test="INPUT[18]/@VALUE != 0">
<div id="INPUT60" style="position: absolute; top: 281px; left: 67px; z-index: 63; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold; display: none;">Fan only</div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<xsl:if test="INPUT[18]/@VALUE = 0">
<div id="INPUT60" style="position: absolute; top: 281px; left: 67px; z-index: 63; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold;">Cooling</div>
</xsl:if>
<xsl:if test="INPUT[18]/@VALUE != 0">
<div id="INPUT60" style="position: absolute; top: 281px; left: 67px; z-index: 63; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold;">Fan only</div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<div onclick="PostXML61()" id="INPUT61" style="position: absolute; top: 346px; left: 27px; z-index: 64;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div onclick="PostXML61()" id="INPUT61" style="position: absolute; top: 346px; left: 27px; z-index: 64;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<div onclick="PostXML62()" id="INPUT62" style="position: absolute; top: 346px; left: 77px; z-index: 65;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div onclick="PostXML62()" id="INPUT62" style="position: absolute; top: 346px; left: 77px; z-index: 65;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<div onclick="PostXML63()" id="INPUT63" style="position: absolute; top: 346px; left: 129px; z-index: 66;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div onclick="PostXML63()" id="INPUT63" style="position: absolute; top: 346px; left: 129px; z-index: 66;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<div onclick="PostXML64()" id="INPUT64" style="position: absolute; top: 346px; left: 182px; z-index: 67;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div onclick="PostXML64()" id="INPUT64" style="position: absolute; top: 346px; left: 182px; z-index: 67;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<a href="HOME.XML" class="ablock" style="position: absolute; top: 665px; left: 350px; z-index: 68; background-image: url(IMAGES/HOME1_50.PNG); line-height: 50px; height: 50px; width: 50px;"></a>
<div style="position: absolute; top: 135px; left: 120px; z-index: 69; font-size: 20px; color: #323232; font-weight: bold;">MASTER ROOM</div>
<xsl:if test="INPUT[11]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[22]/@VALUE = 0">
<div id="INPUT65" style="position: absolute; top: 269px; left: 84px; z-index: 70; background-image: url(IMAGES/WINDOW9.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[22]/@VALUE = 1">
<div id="INPUT65" style="position: absolute; top: 269px; left: 84px; z-index: 70; background-image: url(IMAGES/WINDOW10.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[22]/@VALUE = 2">
<div id="INPUT65" style="position: absolute; top: 269px; left: 84px; z-index: 70; background-image: url(IMAGES/WINDOW11.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[22]/@VALUE = 3">
<div id="INPUT65" style="position: absolute; top: 269px; left: 84px; z-index: 70; background-image: url(IMAGES/WINDOW12.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[22]/@VALUE = 4">
<div id="INPUT65" style="position: absolute; top: 269px; left: 84px; z-index: 70; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT65" style="position: absolute; top: 269px; left: 84px; z-index: 70; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[22]/@VALUE = 0">
<div id="INPUT65" style="position: absolute; top: 269px; left: 84px; z-index: 70; background-image: url(IMAGES/WINDOW9.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[22]/@VALUE = 1">
<div id="INPUT65" style="position: absolute; top: 269px; left: 84px; z-index: 70; background-image: url(IMAGES/WINDOW10.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[22]/@VALUE = 2">
<div id="INPUT65" style="position: absolute; top: 269px; left: 84px; z-index: 70; background-image: url(IMAGES/WINDOW11.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[22]/@VALUE = 3">
<div id="INPUT65" style="position: absolute; top: 269px; left: 84px; z-index: 70; background-image: url(IMAGES/WINDOW12.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[22]/@VALUE = 4">
<div id="INPUT65" style="position: absolute; top: 269px; left: 84px; z-index: 70; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT65" style="position: absolute; top: 269px; left: 84px; z-index: 70; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE = 0">
<div style="position: absolute; top: 375px; left: 150px; z-index: 72; font-size: 15px; color: #272727; visibility: hidden;" id="INPUT67">%</div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<div style="position: absolute; top: 375px; left: 150px; z-index: 72; font-size: 15px; color: #272727;" id="INPUT67">%</div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE = 0">
<xsl:if test="INPUT[24]/@VALUE = 0">
<div id="INPUT68" style="position: absolute; top: 405px; left: 144px; z-index: 73; background-image: url(IMAGES/BTN_BL_5.PNG); line-height: 51px; height: 51px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[24]/@VALUE != 0">
<div id="INPUT68" style="position: absolute; top: 405px; left: 144px; z-index: 73; background-image: url(IMAGES/BTN_GREE.PNG); line-height: 50px; height: 50px; width: 50px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<xsl:if test="INPUT[24]/@VALUE = 0">
<div id="INPUT68" style="position: absolute; top: 405px; left: 144px; z-index: 73; background-image: url(IMAGES/BTN_BL_5.PNG); line-height: 51px; height: 51px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[24]/@VALUE != 0">
<div id="INPUT68" style="position: absolute; top: 405px; left: 144px; z-index: 73; background-image: url(IMAGES/BTN_GREE.PNG); line-height: 50px; height: 50px; width: 50px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE = 0">
<xsl:if test="INPUT[25]/@VALUE = 0">
<div id="INPUT69" style="position: absolute; top: 405px; left: 76px; z-index: 74; background-image: url(IMAGES/BTN_BL_7.PNG); line-height: 51px; height: 51px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[25]/@VALUE != 0">
<div id="INPUT69" style="position: absolute; top: 405px; left: 76px; z-index: 74; background-image: url(IMAGES/BTN_GRE1.PNG); line-height: 50px; height: 50px; width: 50px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<xsl:if test="INPUT[25]/@VALUE = 0">
<div id="INPUT69" style="position: absolute; top: 405px; left: 76px; z-index: 74; background-image: url(IMAGES/BTN_BL_7.PNG); line-height: 51px; height: 51px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[25]/@VALUE != 0">
<div id="INPUT69" style="position: absolute; top: 405px; left: 76px; z-index: 74; background-image: url(IMAGES/BTN_GRE1.PNG); line-height: 50px; height: 50px; width: 50px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[26]/@VALUE = 0">
<div id="INPUT70" style="position: absolute; top: 271px; left: 223px; z-index: 75; background-image: url(IMAGES/WINDOW9.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[26]/@VALUE = 1">
<div id="INPUT70" style="position: absolute; top: 271px; left: 223px; z-index: 75; background-image: url(IMAGES/WINDOW10.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[26]/@VALUE = 2">
<div id="INPUT70" style="position: absolute; top: 271px; left: 223px; z-index: 75; background-image: url(IMAGES/WINDOW11.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[26]/@VALUE = 3">
<div id="INPUT70" style="position: absolute; top: 271px; left: 223px; z-index: 75; background-image: url(IMAGES/WINDOW12.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[26]/@VALUE = 4">
<div id="INPUT70" style="position: absolute; top: 271px; left: 223px; z-index: 75; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT70" style="position: absolute; top: 271px; left: 223px; z-index: 75; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[26]/@VALUE = 0">
<div id="INPUT70" style="position: absolute; top: 271px; left: 223px; z-index: 75; background-image: url(IMAGES/WINDOW9.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[26]/@VALUE = 1">
<div id="INPUT70" style="position: absolute; top: 271px; left: 223px; z-index: 75; background-image: url(IMAGES/WINDOW10.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[26]/@VALUE = 2">
<div id="INPUT70" style="position: absolute; top: 271px; left: 223px; z-index: 75; background-image: url(IMAGES/WINDOW11.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[26]/@VALUE = 3">
<div id="INPUT70" style="position: absolute; top: 271px; left: 223px; z-index: 75; background-image: url(IMAGES/WINDOW12.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[26]/@VALUE = 4">
<div id="INPUT70" style="position: absolute; top: 271px; left: 223px; z-index: 75; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT70" style="position: absolute; top: 271px; left: 223px; z-index: 75; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE = 0">
<div style="position: absolute; top: 377px; left: 289px; z-index: 77; font-size: 15px; color: #272727; visibility: hidden;" id="INPUT72">%</div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<div style="position: absolute; top: 377px; left: 289px; z-index: 77; font-size: 15px; color: #272727;" id="INPUT72">%</div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE = 0">
<xsl:if test="INPUT[28]/@VALUE = 0">
<div id="INPUT73" style="position: absolute; top: 407px; left: 280px; z-index: 78; background-image: url(IMAGES/BTN_BL_5.PNG); line-height: 51px; height: 51px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[28]/@VALUE != 0">
<div id="INPUT73" style="position: absolute; top: 407px; left: 280px; z-index: 78; background-image: url(IMAGES/BTN_GREE.PNG); line-height: 50px; height: 50px; width: 50px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<xsl:if test="INPUT[28]/@VALUE = 0">
<div id="INPUT73" style="position: absolute; top: 407px; left: 280px; z-index: 78; background-image: url(IMAGES/BTN_BL_5.PNG); line-height: 51px; height: 51px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[28]/@VALUE != 0">
<div id="INPUT73" style="position: absolute; top: 407px; left: 280px; z-index: 78; background-image: url(IMAGES/BTN_GREE.PNG); line-height: 50px; height: 50px; width: 50px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE = 0">
<xsl:if test="INPUT[29]/@VALUE = 0">
<div id="INPUT74" style="position: absolute; top: 407px; left: 214px; z-index: 79; background-image: url(IMAGES/BTN_BL_7.PNG); line-height: 51px; height: 51px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[29]/@VALUE != 0">
<div id="INPUT74" style="position: absolute; top: 407px; left: 214px; z-index: 79; background-image: url(IMAGES/BTN_GRE1.PNG); line-height: 50px; height: 50px; width: 50px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<xsl:if test="INPUT[29]/@VALUE = 0">
<div id="INPUT74" style="position: absolute; top: 407px; left: 214px; z-index: 79; background-image: url(IMAGES/BTN_BL_7.PNG); line-height: 51px; height: 51px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[29]/@VALUE != 0">
<div id="INPUT74" style="position: absolute; top: 407px; left: 214px; z-index: 79; background-image: url(IMAGES/BTN_GRE1.PNG); line-height: 50px; height: 50px; width: 50px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE = 0">
<div onclick="PostXML75()" id="INPUT75" style="position: absolute; top: 406px; left: 146px; z-index: 80;cursor:pointer;height:50px; width:50px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<div onclick="PostXML75()" id="INPUT75" style="position: absolute; top: 406px; left: 146px; z-index: 80;cursor:pointer;height:50px; width:50px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE = 0">
<div onclick="PostXML76()" id="INPUT76" style="position: absolute; top: 406px; left: 75px; z-index: 81;cursor:pointer;height:50px; width:50px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<div onclick="PostXML76()" id="INPUT76" style="position: absolute; top: 406px; left: 75px; z-index: 81;cursor:pointer;height:50px; width:50px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE = 0">
<div onclick="PostXML77()" id="INPUT77" style="position: absolute; top: 406px; left: 281px; z-index: 82;cursor:pointer;height:50px; width:50px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<div onclick="PostXML77()" id="INPUT77" style="position: absolute; top: 406px; left: 281px; z-index: 82;cursor:pointer;height:50px; width:50px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE = 0">
<div onclick="PostXML78()" id="INPUT78" style="position: absolute; top: 406px; left: 214px; z-index: 83;cursor:pointer;height:50px; width:50px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<div onclick="PostXML78()" id="INPUT78" style="position: absolute; top: 406px; left: 214px; z-index: 83;cursor:pointer;height:50px; width:50px; border: none; background: none;"></div>
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
