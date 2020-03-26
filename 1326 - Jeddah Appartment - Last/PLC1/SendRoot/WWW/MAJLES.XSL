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
Majles</title>
<script src="MAJLES.JS?U=1585229296" language="JavaScript" charset="utf-8" />
<style type="text/css">.mono {font-family: Verdana, Arial, FreeSans, sans-serif;}</style>
</head>
<body onload="GetXML('MAJLES.XML'); FunWatchDog();" style="margin: 0px 0px 0px 0px">
<xsl:if test="1585229296 != ACCESS/@UCID">
<xsl:attribute name="onload">
null;
</xsl:attribute>
<div id="cachewarning" style="text-align: left;"></div>
<script src="REFCLR.JS" language="JavaScript" charset="utf-8"></script>
</xsl:if>
<xsl:if test="1585229296 = ACCESS/@UCID">
<table cellpadding="0" cellspacing="0">
<tr>
<!--menu-->
<!--plan-->
<td id="page" style="border-left: 1px solid black; border-top: 1px solid black;">
<div style="background-color:#969696;position: relative; width: 412px; height: 734px;">
<form action="javascript:PostGlobal();">
<xsl:if test="INPUT[19]/@VALUE = 0">
<input class="mono" tabindex="1" type="text" id="INPUT18" style="position: absolute; top: 284px; left: 51px; width: 30px; z-index: 19; height: 18px; background-color: #DCDCDC; border: none; visibility: hidden;" value="{INPUT[21]/@VALUE}" name="{INPUT[21]/@NAME}" onfocus="SetInputEdited(18, event);" onblur="InputFocused[17]=0" onkeydown="SetInputEdited(18, event);"></input>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<input class="mono" tabindex="1" type="text" id="INPUT18" style="position: absolute; top: 284px; left: 51px; width: 30px; z-index: 19; height: 18px; background-color: #DCDCDC; border: none;" value="{INPUT[21]/@VALUE}" name="{INPUT[21]/@NAME}" onfocus="SetInputEdited(18, event);" onblur="InputFocused[17]=0" onkeydown="SetInputEdited(18, event);"></input>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<input class="mono" tabindex="2" type="text" id="INPUT38" style="position: absolute; top: 284px; left: 326px; width: 30px; z-index: 41; height: 18px; background-color: #DCDCDC; border: none; visibility: hidden;" value="{INPUT[25]/@VALUE}" name="{INPUT[25]/@NAME}" onfocus="SetInputEdited(38, event);" onblur="InputFocused[37]=0" onkeydown="SetInputEdited(38, event);"></input>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<input class="mono" tabindex="2" type="text" id="INPUT38" style="position: absolute; top: 284px; left: 326px; width: 30px; z-index: 41; height: 18px; background-color: #DCDCDC; border: none;" value="{INPUT[25]/@VALUE}" name="{INPUT[25]/@NAME}" onfocus="SetInputEdited(38, event);" onblur="InputFocused[37]=0" onkeydown="SetInputEdited(38, event);"></input>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<input class="mono" tabindex="4" type="text" id="INPUT43" style="position: absolute; top: 532px; left: 86px; width: 30px; z-index: 46; height: 18px; background-color: #DCDCDC; border: none; visibility: hidden;" value="{INPUT[29]/@VALUE}" name="{INPUT[29]/@NAME}" onfocus="SetInputEdited(43, event);" onblur="InputFocused[42]=0" onkeydown="SetInputEdited(43, event);"></input>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<input class="mono" tabindex="4" type="text" id="INPUT43" style="position: absolute; top: 532px; left: 86px; width: 30px; z-index: 46; height: 18px; background-color: #DCDCDC; border: none;" value="{INPUT[29]/@VALUE}" name="{INPUT[29]/@NAME}" onfocus="SetInputEdited(43, event);" onblur="InputFocused[42]=0" onkeydown="SetInputEdited(43, event);"></input>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<input class="mono" tabindex="6" type="text" id="INPUT48" style="position: absolute; top: 532px; left: 291px; width: 30px; z-index: 51; height: 18px; background-color: #DCDCDC; border: none; visibility: hidden;" value="{INPUT[33]/@VALUE}" name="{INPUT[33]/@NAME}" onfocus="SetInputEdited(48, event);" onblur="InputFocused[47]=0" onkeydown="SetInputEdited(48, event);"></input>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<input class="mono" tabindex="6" type="text" id="INPUT48" style="position: absolute; top: 532px; left: 291px; width: 30px; z-index: 51; height: 18px; background-color: #DCDCDC; border: none;" value="{INPUT[33]/@VALUE}" name="{INPUT[33]/@NAME}" onfocus="SetInputEdited(48, event);" onblur="InputFocused[47]=0" onkeydown="SetInputEdited(48, event);"></input>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<input class="mono" tabindex="7" type="text" id="INPUT53" style="position: absolute; top: 286px; left: 190px; width: 30px; z-index: 56; height: 18px; background-color: #DCDCDC; border: none; visibility: hidden;" value="{INPUT[37]/@VALUE}" name="{INPUT[37]/@NAME}" onfocus="SetInputEdited(53, event);" onblur="InputFocused[52]=0" onkeydown="SetInputEdited(53, event);"></input>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<input class="mono" tabindex="7" type="text" id="INPUT53" style="position: absolute; top: 286px; left: 190px; width: 30px; z-index: 56; height: 18px; background-color: #DCDCDC; border: none;" value="{INPUT[37]/@VALUE}" name="{INPUT[37]/@NAME}" onfocus="SetInputEdited(53, event);" onblur="InputFocused[52]=0" onkeydown="SetInputEdited(53, event);"></input>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE = 0">
<input class="mono" tabindex="5" type="text" id="INPUT81" style="position: absolute; top: 239px; left: 349px; width: 36px; z-index: 84; background: none; visibility: hidden;" value="{INPUT[49]/@VALUE}" readonly="readonly" />
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE != 0">
<input class="mono" tabindex="5" type="text" id="INPUT81" style="position: absolute; top: 239px; left: 349px; width: 36px; z-index: 84; background: none;" value="{INPUT[49]/@VALUE}" readonly="readonly" />
</xsl:if>
</form>
<div style="position: absolute; top: 170px; left: 6px; z-index: 1; background-image: url(IMAGES/CONSOLE.PNG); line-height: 450px; height: 450px; width: 400px;"></div>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[2]/@VALUE = 0">
<div id="INPUT1" style="position: absolute; top: 207px; left: 25px; z-index: 2; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div id="INPUT1" style="position: absolute; top: 207px; left: 25px; z-index: 2; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[2]/@VALUE = 0">
<div id="INPUT1" style="position: absolute; top: 207px; left: 25px; z-index: 2; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div id="INPUT1" style="position: absolute; top: 207px; left: 25px; z-index: 2; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[3]/@VALUE = 0">
<div id="INPUT2" style="position: absolute; top: 207px; left: 96px; z-index: 3; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div id="INPUT2" style="position: absolute; top: 207px; left: 96px; z-index: 3; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[3]/@VALUE = 0">
<div id="INPUT2" style="position: absolute; top: 207px; left: 96px; z-index: 3; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div id="INPUT2" style="position: absolute; top: 207px; left: 96px; z-index: 3; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[4]/@VALUE = 0">
<div id="INPUT3" style="position: absolute; top: 207px; left: 168px; z-index: 4; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div id="INPUT3" style="position: absolute; top: 207px; left: 168px; z-index: 4; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[4]/@VALUE = 0">
<div id="INPUT3" style="position: absolute; top: 207px; left: 168px; z-index: 4; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div id="INPUT3" style="position: absolute; top: 207px; left: 168px; z-index: 4; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[5]/@VALUE = 0">
<div id="INPUT4" style="position: absolute; top: 207px; left: 239px; z-index: 5; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE != 0">
<div id="INPUT4" style="position: absolute; top: 207px; left: 239px; z-index: 5; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[5]/@VALUE = 0">
<div id="INPUT4" style="position: absolute; top: 207px; left: 239px; z-index: 5; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE != 0">
<div id="INPUT4" style="position: absolute; top: 207px; left: 239px; z-index: 5; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[6]/@VALUE = 0">
<div id="INPUT5" style="position: absolute; top: 207px; left: 310px; z-index: 6; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div id="INPUT5" style="position: absolute; top: 207px; left: 310px; z-index: 6; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[6]/@VALUE = 0">
<div id="INPUT5" style="position: absolute; top: 207px; left: 310px; z-index: 6; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div id="INPUT5" style="position: absolute; top: 207px; left: 310px; z-index: 6; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[7]/@VALUE = 0">
<div id="INPUT6" style="position: absolute; top: 326px; left: 25px; z-index: 7; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div id="INPUT6" style="position: absolute; top: 326px; left: 25px; z-index: 7; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[7]/@VALUE = 0">
<div id="INPUT6" style="position: absolute; top: 326px; left: 25px; z-index: 7; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div id="INPUT6" style="position: absolute; top: 326px; left: 25px; z-index: 7; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[8]/@VALUE = 0">
<div id="INPUT7" style="position: absolute; top: 326px; left: 96px; z-index: 8; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<div id="INPUT7" style="position: absolute; top: 326px; left: 96px; z-index: 8; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[8]/@VALUE = 0">
<div id="INPUT7" style="position: absolute; top: 326px; left: 96px; z-index: 8; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<div id="INPUT7" style="position: absolute; top: 326px; left: 96px; z-index: 8; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[9]/@VALUE = 0">
<div id="INPUT8" style="position: absolute; top: 326px; left: 170px; z-index: 9; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div id="INPUT8" style="position: absolute; top: 326px; left: 170px; z-index: 9; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[9]/@VALUE = 0">
<div id="INPUT8" style="position: absolute; top: 326px; left: 170px; z-index: 9; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div id="INPUT8" style="position: absolute; top: 326px; left: 170px; z-index: 9; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[10]/@VALUE = 0">
<div id="INPUT9" style="position: absolute; top: 326px; left: 239px; z-index: 10; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div id="INPUT9" style="position: absolute; top: 326px; left: 239px; z-index: 10; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[10]/@VALUE = 0">
<div id="INPUT9" style="position: absolute; top: 326px; left: 239px; z-index: 10; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div id="INPUT9" style="position: absolute; top: 326px; left: 239px; z-index: 10; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[11]/@VALUE = 0">
<div id="INPUT10" style="position: absolute; top: 326px; left: 310px; z-index: 11; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<div id="INPUT10" style="position: absolute; top: 326px; left: 310px; z-index: 11; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[11]/@VALUE = 0">
<div id="INPUT10" style="position: absolute; top: 326px; left: 310px; z-index: 11; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<div id="INPUT10" style="position: absolute; top: 326px; left: 310px; z-index: 11; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[12]/@VALUE = 0">
<div id="INPUT11" style="position: absolute; top: 445px; left: 25px; z-index: 12; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div id="INPUT11" style="position: absolute; top: 445px; left: 25px; z-index: 12; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[12]/@VALUE = 0">
<div id="INPUT11" style="position: absolute; top: 445px; left: 25px; z-index: 12; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div id="INPUT11" style="position: absolute; top: 445px; left: 25px; z-index: 12; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[13]/@VALUE = 0">
<div id="INPUT12" style="position: absolute; top: 445px; left: 96px; z-index: 13; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div id="INPUT12" style="position: absolute; top: 445px; left: 96px; z-index: 13; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[13]/@VALUE = 0">
<div id="INPUT12" style="position: absolute; top: 445px; left: 96px; z-index: 13; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div id="INPUT12" style="position: absolute; top: 445px; left: 96px; z-index: 13; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[14]/@VALUE = 0">
<div id="INPUT13" style="position: absolute; top: 445px; left: 170px; z-index: 14; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div id="INPUT13" style="position: absolute; top: 445px; left: 170px; z-index: 14; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[14]/@VALUE = 0">
<div id="INPUT13" style="position: absolute; top: 445px; left: 170px; z-index: 14; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div id="INPUT13" style="position: absolute; top: 445px; left: 170px; z-index: 14; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[15]/@VALUE = 0">
<div id="INPUT14" style="position: absolute; top: 445px; left: 239px; z-index: 15; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[15]/@VALUE != 0">
<div id="INPUT14" style="position: absolute; top: 445px; left: 239px; z-index: 15; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[15]/@VALUE = 0">
<div id="INPUT14" style="position: absolute; top: 445px; left: 239px; z-index: 15; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[15]/@VALUE != 0">
<div id="INPUT14" style="position: absolute; top: 445px; left: 239px; z-index: 15; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[16]/@VALUE = 0">
<div id="INPUT15" style="position: absolute; top: 445px; left: 310px; z-index: 16; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[16]/@VALUE != 0">
<div id="INPUT15" style="position: absolute; top: 445px; left: 310px; z-index: 16; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[16]/@VALUE = 0">
<div id="INPUT15" style="position: absolute; top: 445px; left: 310px; z-index: 16; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[16]/@VALUE != 0">
<div id="INPUT15" style="position: absolute; top: 445px; left: 310px; z-index: 16; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE = 0">
<xsl:if test="INPUT[18]/@VALUE = 0">
<div id="INPUT16" style="position: absolute; top: 375px; left: 185px; z-index: 17; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[18]/@VALUE != 0">
<div id="INPUT16" style="position: absolute; top: 375px; left: 185px; z-index: 17; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE != 0">
<xsl:if test="INPUT[18]/@VALUE = 0">
<div id="INPUT16" style="position: absolute; top: 375px; left: 185px; z-index: 17; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[18]/@VALUE != 0">
<div id="INPUT16" style="position: absolute; top: 375px; left: 185px; z-index: 17; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[20]/@VALUE = 0">
<div id="INPUT17" style="position: absolute; top: 179px; left: 19px; z-index: 18; background-image: url(IMAGES/WINDOW9.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[20]/@VALUE = 1">
<div id="INPUT17" style="position: absolute; top: 179px; left: 19px; z-index: 18; background-image: url(IMAGES/WINDOW10.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[20]/@VALUE = 2">
<div id="INPUT17" style="position: absolute; top: 179px; left: 19px; z-index: 18; background-image: url(IMAGES/WINDOW11.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[20]/@VALUE = 3">
<div id="INPUT17" style="position: absolute; top: 179px; left: 19px; z-index: 18; background-image: url(IMAGES/WINDOW12.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[20]/@VALUE = 4">
<div id="INPUT17" style="position: absolute; top: 179px; left: 19px; z-index: 18; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT17" style="position: absolute; top: 179px; left: 19px; z-index: 18; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[20]/@VALUE = 0">
<div id="INPUT17" style="position: absolute; top: 179px; left: 19px; z-index: 18; background-image: url(IMAGES/WINDOW9.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[20]/@VALUE = 1">
<div id="INPUT17" style="position: absolute; top: 179px; left: 19px; z-index: 18; background-image: url(IMAGES/WINDOW10.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[20]/@VALUE = 2">
<div id="INPUT17" style="position: absolute; top: 179px; left: 19px; z-index: 18; background-image: url(IMAGES/WINDOW11.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[20]/@VALUE = 3">
<div id="INPUT17" style="position: absolute; top: 179px; left: 19px; z-index: 18; background-image: url(IMAGES/WINDOW12.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[20]/@VALUE = 4">
<div id="INPUT17" style="position: absolute; top: 179px; left: 19px; z-index: 18; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT17" style="position: absolute; top: 179px; left: 19px; z-index: 18; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<div style="position: absolute; top: 285px; left: 85px; z-index: 20; font-size: 15px; color: #272727; visibility: hidden;" id="INPUT19">%</div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<div style="position: absolute; top: 285px; left: 85px; z-index: 20; font-size: 15px; color: #272727;" id="INPUT19">%</div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<xsl:if test="INPUT[22]/@VALUE = 0">
<div id="INPUT20" style="position: absolute; top: 315px; left: 79px; z-index: 21; background-image: url(IMAGES/BTN_BL_5.PNG); line-height: 51px; height: 51px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[22]/@VALUE != 0">
<div id="INPUT20" style="position: absolute; top: 315px; left: 79px; z-index: 21; background-image: url(IMAGES/BTN_GREE.PNG); line-height: 50px; height: 50px; width: 50px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<xsl:if test="INPUT[22]/@VALUE = 0">
<div id="INPUT20" style="position: absolute; top: 315px; left: 79px; z-index: 21; background-image: url(IMAGES/BTN_BL_5.PNG); line-height: 51px; height: 51px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[22]/@VALUE != 0">
<div id="INPUT20" style="position: absolute; top: 315px; left: 79px; z-index: 21; background-image: url(IMAGES/BTN_GREE.PNG); line-height: 50px; height: 50px; width: 50px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<xsl:if test="INPUT[23]/@VALUE = 0">
<div id="INPUT21" style="position: absolute; top: 315px; left: 11px; z-index: 22; background-image: url(IMAGES/BTN_BL_7.PNG); line-height: 51px; height: 51px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[23]/@VALUE != 0">
<div id="INPUT21" style="position: absolute; top: 315px; left: 11px; z-index: 22; background-image: url(IMAGES/BTN_GRE1.PNG); line-height: 50px; height: 50px; width: 50px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<xsl:if test="INPUT[23]/@VALUE = 0">
<div id="INPUT21" style="position: absolute; top: 315px; left: 11px; z-index: 22; background-image: url(IMAGES/BTN_BL_7.PNG); line-height: 51px; height: 51px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[23]/@VALUE != 0">
<div id="INPUT21" style="position: absolute; top: 315px; left: 11px; z-index: 22; background-image: url(IMAGES/BTN_GRE1.PNG); line-height: 50px; height: 50px; width: 50px;"></div>
</xsl:if>
</xsl:if>
<div style="position: absolute; top: 14px; left: 10px; z-index: 23; background-image: url(IMAGES/TECO-LOG.PNG); line-height: 31px; height: 31px; width: 150px;"></div>
<div style="position: absolute; top: 60px; left: 6px; z-index: 24; background-image: url(IMAGES/BAR_-_WI.PNG); line-height: 65px; height: 65px; width: 400px;"></div>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 31px; z-index: 25;height: 5px; width: 90px; border: none; background-color: #F0F0F0; visibility: hidden;" id="INPUT22"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 31px; z-index: 25;height: 5px; width: 90px; border: none; background-color: #F0F0F0;" id="INPUT22"></div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 121px; z-index: 26;height: 5px; width: 90px; border: none; background-color: #F0F0F0; visibility: hidden;" id="INPUT23"></div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 121px; z-index: 26;height: 5px; width: 90px; border: none; background-color: #F0F0F0;" id="INPUT23"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 211px; z-index: 27;height: 5px; width: 90px; border: none; background-color: #F0F0F0; visibility: hidden;" id="INPUT24"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 211px; z-index: 27;height: 5px; width: 90px; border: none; background-color: #F0F0F0;" id="INPUT24"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 50px; z-index: 28; color: #646464; font-weight: bold; visibility: hidden;" id="INPUT25">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 50px; z-index: 28; color: #646464; font-weight: bold;" id="INPUT25">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 134px; z-index: 29; color: #646464; font-weight: bold; visibility: hidden;" id="INPUT26">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 134px; z-index: 29; color: #646464; font-weight: bold;" id="INPUT26">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 220px; z-index: 30; color: #646464; font-weight: bold; visibility: hidden;" id="INPUT27">CURTAINS</div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 220px; z-index: 30; color: #646464; font-weight: bold;" id="INPUT27">CURTAINS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 50px; z-index: 31; color: #6200EE; font-weight: bold; visibility: hidden;" id="INPUT28">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 50px; z-index: 31; color: #6200EE; font-weight: bold;" id="INPUT28">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 134px; z-index: 32; color: #6200EE; font-weight: bold; visibility: hidden;" id="INPUT29">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 134px; z-index: 32; color: #6200EE; font-weight: bold;" id="INPUT29">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 220px; z-index: 33; color: #6200EE; font-weight: bold; visibility: hidden;" id="INPUT30">CURTAINS</div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 220px; z-index: 33; color: #6200EE; font-weight: bold;" id="INPUT30">CURTAINS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 31px; z-index: 34;height: 5px; width: 90px; border: none; background-color: #6200EE; visibility: hidden;" id="INPUT31"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 31px; z-index: 34;height: 5px; width: 90px; border: none; background-color: #6200EE;" id="INPUT31"></div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 121px; z-index: 35;height: 5px; width: 90px; border: none; background-color: #6200EE; visibility: hidden;" id="INPUT32"></div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 121px; z-index: 35;height: 5px; width: 90px; border: none; background-color: #6200EE;" id="INPUT32"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 211px; z-index: 36;height: 5px; width: 90px; border: none; background-color: #6200EE; visibility: hidden;" id="INPUT33"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 211px; z-index: 36;height: 5px; width: 90px; border: none; background-color: #6200EE;" id="INPUT33"></div>
</xsl:if>
<div onclick="PostXML34()" id="INPUT34" style="position: absolute; top: 75px; left: 30px; z-index: 37;cursor:pointer;height:35px; width:90px; border: none; background: none;"></div>
<div onclick="PostXML35()" id="INPUT35" style="position: absolute; top: 75px; left: 121px; z-index: 38;cursor:pointer;height:35px; width:90px; border: none; background: none;"></div>
<div onclick="PostXML36()" id="INPUT36" style="position: absolute; top: 75px; left: 211px; z-index: 39;cursor:pointer;height:35px; width:90px; border: none; background: none;"></div>
<xsl:if test="INPUT[19]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[24]/@VALUE = 0">
<div id="INPUT37" style="position: absolute; top: 179px; left: 294px; z-index: 40; background-image: url(IMAGES/WINDOW9.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[24]/@VALUE = 1">
<div id="INPUT37" style="position: absolute; top: 179px; left: 294px; z-index: 40; background-image: url(IMAGES/WINDOW10.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[24]/@VALUE = 2">
<div id="INPUT37" style="position: absolute; top: 179px; left: 294px; z-index: 40; background-image: url(IMAGES/WINDOW11.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[24]/@VALUE = 3">
<div id="INPUT37" style="position: absolute; top: 179px; left: 294px; z-index: 40; background-image: url(IMAGES/WINDOW12.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[24]/@VALUE = 4">
<div id="INPUT37" style="position: absolute; top: 179px; left: 294px; z-index: 40; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT37" style="position: absolute; top: 179px; left: 294px; z-index: 40; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[24]/@VALUE = 0">
<div id="INPUT37" style="position: absolute; top: 179px; left: 294px; z-index: 40; background-image: url(IMAGES/WINDOW9.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[24]/@VALUE = 1">
<div id="INPUT37" style="position: absolute; top: 179px; left: 294px; z-index: 40; background-image: url(IMAGES/WINDOW10.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[24]/@VALUE = 2">
<div id="INPUT37" style="position: absolute; top: 179px; left: 294px; z-index: 40; background-image: url(IMAGES/WINDOW11.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[24]/@VALUE = 3">
<div id="INPUT37" style="position: absolute; top: 179px; left: 294px; z-index: 40; background-image: url(IMAGES/WINDOW12.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[24]/@VALUE = 4">
<div id="INPUT37" style="position: absolute; top: 179px; left: 294px; z-index: 40; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT37" style="position: absolute; top: 179px; left: 294px; z-index: 40; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<div style="position: absolute; top: 285px; left: 360px; z-index: 42; font-size: 15px; color: #272727; visibility: hidden;" id="INPUT39">%</div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<div style="position: absolute; top: 285px; left: 360px; z-index: 42; font-size: 15px; color: #272727;" id="INPUT39">%</div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<xsl:if test="INPUT[26]/@VALUE = 0">
<div id="INPUT40" style="position: absolute; top: 315px; left: 354px; z-index: 43; background-image: url(IMAGES/BTN_BL_5.PNG); line-height: 51px; height: 51px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[26]/@VALUE != 0">
<div id="INPUT40" style="position: absolute; top: 315px; left: 354px; z-index: 43; background-image: url(IMAGES/BTN_GREE.PNG); line-height: 50px; height: 50px; width: 50px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<xsl:if test="INPUT[26]/@VALUE = 0">
<div id="INPUT40" style="position: absolute; top: 315px; left: 354px; z-index: 43; background-image: url(IMAGES/BTN_BL_5.PNG); line-height: 51px; height: 51px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[26]/@VALUE != 0">
<div id="INPUT40" style="position: absolute; top: 315px; left: 354px; z-index: 43; background-image: url(IMAGES/BTN_GREE.PNG); line-height: 50px; height: 50px; width: 50px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<xsl:if test="INPUT[27]/@VALUE = 0">
<div id="INPUT41" style="position: absolute; top: 315px; left: 283px; z-index: 44; background-image: url(IMAGES/BTN_BL_7.PNG); line-height: 51px; height: 51px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[27]/@VALUE != 0">
<div id="INPUT41" style="position: absolute; top: 315px; left: 283px; z-index: 44; background-image: url(IMAGES/BTN_GRE1.PNG); line-height: 50px; height: 50px; width: 50px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<xsl:if test="INPUT[27]/@VALUE = 0">
<div id="INPUT41" style="position: absolute; top: 315px; left: 283px; z-index: 44; background-image: url(IMAGES/BTN_BL_7.PNG); line-height: 51px; height: 51px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[27]/@VALUE != 0">
<div id="INPUT41" style="position: absolute; top: 315px; left: 283px; z-index: 44; background-image: url(IMAGES/BTN_GRE1.PNG); line-height: 50px; height: 50px; width: 50px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[28]/@VALUE = 0">
<div id="INPUT42" style="position: absolute; top: 427px; left: 54px; z-index: 45; background-image: url(IMAGES/WINDOW9.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[28]/@VALUE = 1">
<div id="INPUT42" style="position: absolute; top: 427px; left: 54px; z-index: 45; background-image: url(IMAGES/WINDOW10.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[28]/@VALUE = 2">
<div id="INPUT42" style="position: absolute; top: 427px; left: 54px; z-index: 45; background-image: url(IMAGES/WINDOW11.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[28]/@VALUE = 3">
<div id="INPUT42" style="position: absolute; top: 427px; left: 54px; z-index: 45; background-image: url(IMAGES/WINDOW12.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[28]/@VALUE = 4">
<div id="INPUT42" style="position: absolute; top: 427px; left: 54px; z-index: 45; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT42" style="position: absolute; top: 427px; left: 54px; z-index: 45; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[28]/@VALUE = 0">
<div id="INPUT42" style="position: absolute; top: 427px; left: 54px; z-index: 45; background-image: url(IMAGES/WINDOW9.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[28]/@VALUE = 1">
<div id="INPUT42" style="position: absolute; top: 427px; left: 54px; z-index: 45; background-image: url(IMAGES/WINDOW10.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[28]/@VALUE = 2">
<div id="INPUT42" style="position: absolute; top: 427px; left: 54px; z-index: 45; background-image: url(IMAGES/WINDOW11.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[28]/@VALUE = 3">
<div id="INPUT42" style="position: absolute; top: 427px; left: 54px; z-index: 45; background-image: url(IMAGES/WINDOW12.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[28]/@VALUE = 4">
<div id="INPUT42" style="position: absolute; top: 427px; left: 54px; z-index: 45; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT42" style="position: absolute; top: 427px; left: 54px; z-index: 45; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<div style="position: absolute; top: 533px; left: 120px; z-index: 47; font-size: 15px; color: #272727; visibility: hidden;" id="INPUT44">%</div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<div style="position: absolute; top: 533px; left: 120px; z-index: 47; font-size: 15px; color: #272727;" id="INPUT44">%</div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<xsl:if test="INPUT[30]/@VALUE = 0">
<div id="INPUT45" style="position: absolute; top: 563px; left: 113px; z-index: 48; background-image: url(IMAGES/BTN_BL_5.PNG); line-height: 51px; height: 51px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[30]/@VALUE != 0">
<div id="INPUT45" style="position: absolute; top: 563px; left: 113px; z-index: 48; background-image: url(IMAGES/BTN_GREE.PNG); line-height: 50px; height: 50px; width: 50px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<xsl:if test="INPUT[30]/@VALUE = 0">
<div id="INPUT45" style="position: absolute; top: 563px; left: 113px; z-index: 48; background-image: url(IMAGES/BTN_BL_5.PNG); line-height: 51px; height: 51px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[30]/@VALUE != 0">
<div id="INPUT45" style="position: absolute; top: 563px; left: 113px; z-index: 48; background-image: url(IMAGES/BTN_GREE.PNG); line-height: 50px; height: 50px; width: 50px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<xsl:if test="INPUT[31]/@VALUE = 0">
<div id="INPUT46" style="position: absolute; top: 563px; left: 44px; z-index: 49; background-image: url(IMAGES/BTN_BL_7.PNG); line-height: 51px; height: 51px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[31]/@VALUE != 0">
<div id="INPUT46" style="position: absolute; top: 563px; left: 44px; z-index: 49; background-image: url(IMAGES/BTN_GRE1.PNG); line-height: 50px; height: 50px; width: 50px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<xsl:if test="INPUT[31]/@VALUE = 0">
<div id="INPUT46" style="position: absolute; top: 563px; left: 44px; z-index: 49; background-image: url(IMAGES/BTN_BL_7.PNG); line-height: 51px; height: 51px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[31]/@VALUE != 0">
<div id="INPUT46" style="position: absolute; top: 563px; left: 44px; z-index: 49; background-image: url(IMAGES/BTN_GRE1.PNG); line-height: 50px; height: 50px; width: 50px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[32]/@VALUE = 0">
<div id="INPUT47" style="position: absolute; top: 427px; left: 259px; z-index: 50; background-image: url(IMAGES/WINDOW9.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[32]/@VALUE = 1">
<div id="INPUT47" style="position: absolute; top: 427px; left: 259px; z-index: 50; background-image: url(IMAGES/WINDOW10.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[32]/@VALUE = 2">
<div id="INPUT47" style="position: absolute; top: 427px; left: 259px; z-index: 50; background-image: url(IMAGES/WINDOW11.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[32]/@VALUE = 3">
<div id="INPUT47" style="position: absolute; top: 427px; left: 259px; z-index: 50; background-image: url(IMAGES/WINDOW12.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[32]/@VALUE = 4">
<div id="INPUT47" style="position: absolute; top: 427px; left: 259px; z-index: 50; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT47" style="position: absolute; top: 427px; left: 259px; z-index: 50; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[32]/@VALUE = 0">
<div id="INPUT47" style="position: absolute; top: 427px; left: 259px; z-index: 50; background-image: url(IMAGES/WINDOW9.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[32]/@VALUE = 1">
<div id="INPUT47" style="position: absolute; top: 427px; left: 259px; z-index: 50; background-image: url(IMAGES/WINDOW10.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[32]/@VALUE = 2">
<div id="INPUT47" style="position: absolute; top: 427px; left: 259px; z-index: 50; background-image: url(IMAGES/WINDOW11.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[32]/@VALUE = 3">
<div id="INPUT47" style="position: absolute; top: 427px; left: 259px; z-index: 50; background-image: url(IMAGES/WINDOW12.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[32]/@VALUE = 4">
<div id="INPUT47" style="position: absolute; top: 427px; left: 259px; z-index: 50; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT47" style="position: absolute; top: 427px; left: 259px; z-index: 50; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<div style="position: absolute; top: 533px; left: 325px; z-index: 52; font-size: 15px; color: #272727; visibility: hidden;" id="INPUT49">%</div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<div style="position: absolute; top: 533px; left: 325px; z-index: 52; font-size: 15px; color: #272727;" id="INPUT49">%</div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<xsl:if test="INPUT[34]/@VALUE = 0">
<div id="INPUT50" style="position: absolute; top: 563px; left: 319px; z-index: 53; background-image: url(IMAGES/BTN_BL_5.PNG); line-height: 51px; height: 51px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[34]/@VALUE != 0">
<div id="INPUT50" style="position: absolute; top: 563px; left: 319px; z-index: 53; background-image: url(IMAGES/BTN_GREE.PNG); line-height: 50px; height: 50px; width: 50px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<xsl:if test="INPUT[34]/@VALUE = 0">
<div id="INPUT50" style="position: absolute; top: 563px; left: 319px; z-index: 53; background-image: url(IMAGES/BTN_BL_5.PNG); line-height: 51px; height: 51px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[34]/@VALUE != 0">
<div id="INPUT50" style="position: absolute; top: 563px; left: 319px; z-index: 53; background-image: url(IMAGES/BTN_GREE.PNG); line-height: 50px; height: 50px; width: 50px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<xsl:if test="INPUT[35]/@VALUE = 0">
<div id="INPUT51" style="position: absolute; top: 563px; left: 251px; z-index: 54; background-image: url(IMAGES/BTN_BL_7.PNG); line-height: 51px; height: 51px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[35]/@VALUE != 0">
<div id="INPUT51" style="position: absolute; top: 563px; left: 251px; z-index: 54; background-image: url(IMAGES/BTN_GRE1.PNG); line-height: 50px; height: 50px; width: 50px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<xsl:if test="INPUT[35]/@VALUE = 0">
<div id="INPUT51" style="position: absolute; top: 563px; left: 251px; z-index: 54; background-image: url(IMAGES/BTN_BL_7.PNG); line-height: 51px; height: 51px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[35]/@VALUE != 0">
<div id="INPUT51" style="position: absolute; top: 563px; left: 251px; z-index: 54; background-image: url(IMAGES/BTN_GRE1.PNG); line-height: 50px; height: 50px; width: 50px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[36]/@VALUE = 0">
<div id="INPUT52" style="position: absolute; top: 181px; left: 158px; z-index: 55; background-image: url(IMAGES/WINDOW9.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[36]/@VALUE = 1">
<div id="INPUT52" style="position: absolute; top: 181px; left: 158px; z-index: 55; background-image: url(IMAGES/WINDOW10.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[36]/@VALUE = 2">
<div id="INPUT52" style="position: absolute; top: 181px; left: 158px; z-index: 55; background-image: url(IMAGES/WINDOW11.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[36]/@VALUE = 3">
<div id="INPUT52" style="position: absolute; top: 181px; left: 158px; z-index: 55; background-image: url(IMAGES/WINDOW12.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[36]/@VALUE = 4">
<div id="INPUT52" style="position: absolute; top: 181px; left: 158px; z-index: 55; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT52" style="position: absolute; top: 181px; left: 158px; z-index: 55; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[36]/@VALUE = 0">
<div id="INPUT52" style="position: absolute; top: 181px; left: 158px; z-index: 55; background-image: url(IMAGES/WINDOW9.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[36]/@VALUE = 1">
<div id="INPUT52" style="position: absolute; top: 181px; left: 158px; z-index: 55; background-image: url(IMAGES/WINDOW10.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[36]/@VALUE = 2">
<div id="INPUT52" style="position: absolute; top: 181px; left: 158px; z-index: 55; background-image: url(IMAGES/WINDOW11.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[36]/@VALUE = 3">
<div id="INPUT52" style="position: absolute; top: 181px; left: 158px; z-index: 55; background-image: url(IMAGES/WINDOW12.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:when test="INPUT[36]/@VALUE = 4">
<div id="INPUT52" style="position: absolute; top: 181px; left: 158px; z-index: 55; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT52" style="position: absolute; top: 181px; left: 158px; z-index: 55; background-image: url(IMAGES/WINDOW13.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<div style="position: absolute; top: 287px; left: 224px; z-index: 57; font-size: 15px; color: #272727; visibility: hidden;" id="INPUT54">%</div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<div style="position: absolute; top: 287px; left: 224px; z-index: 57; font-size: 15px; color: #272727;" id="INPUT54">%</div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<xsl:if test="INPUT[38]/@VALUE = 0">
<div id="INPUT55" style="position: absolute; top: 317px; left: 220px; z-index: 58; background-image: url(IMAGES/BTN_BL_5.PNG); line-height: 51px; height: 51px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[38]/@VALUE != 0">
<div id="INPUT55" style="position: absolute; top: 317px; left: 220px; z-index: 58; background-image: url(IMAGES/BTN_GREE.PNG); line-height: 50px; height: 50px; width: 50px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<xsl:if test="INPUT[38]/@VALUE = 0">
<div id="INPUT55" style="position: absolute; top: 317px; left: 220px; z-index: 58; background-image: url(IMAGES/BTN_BL_5.PNG); line-height: 51px; height: 51px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[38]/@VALUE != 0">
<div id="INPUT55" style="position: absolute; top: 317px; left: 220px; z-index: 58; background-image: url(IMAGES/BTN_GREE.PNG); line-height: 50px; height: 50px; width: 50px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<xsl:if test="INPUT[39]/@VALUE = 0">
<div id="INPUT56" style="position: absolute; top: 317px; left: 149px; z-index: 59; background-image: url(IMAGES/BTN_BL_7.PNG); line-height: 51px; height: 51px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[39]/@VALUE != 0">
<div id="INPUT56" style="position: absolute; top: 317px; left: 149px; z-index: 59; background-image: url(IMAGES/BTN_GRE1.PNG); line-height: 50px; height: 50px; width: 50px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<xsl:if test="INPUT[39]/@VALUE = 0">
<div id="INPUT56" style="position: absolute; top: 317px; left: 149px; z-index: 59; background-image: url(IMAGES/BTN_BL_7.PNG); line-height: 51px; height: 51px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[39]/@VALUE != 0">
<div id="INPUT56" style="position: absolute; top: 317px; left: 149px; z-index: 59; background-image: url(IMAGES/BTN_GRE1.PNG); line-height: 50px; height: 50px; width: 50px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 301px; z-index: 60;height: 5px; width: 90px; border: none; background-color: #F0F0F0; visibility: hidden;" id="INPUT57"></div>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 301px; z-index: 60;height: 5px; width: 90px; border: none; background-color: #F0F0F0;" id="INPUT57"></div>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 336px; z-index: 61; color: #646464; font-weight: bold; visibility: hidden;" id="INPUT58">AC</div>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 336px; z-index: 61; color: #646464; font-weight: bold;" id="INPUT58">AC</div>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 336px; z-index: 62; color: #6200EE; font-weight: bold; visibility: hidden;" id="INPUT59">AC</div>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 336px; z-index: 62; color: #6200EE; font-weight: bold;" id="INPUT59">AC</div>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 301px; z-index: 63;height: 5px; width: 90px; border: none; background-color: #6200EE; visibility: hidden;" id="INPUT60"></div>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 301px; z-index: 63;height: 5px; width: 90px; border: none; background-color: #6200EE;" id="INPUT60"></div>
</xsl:if>
<div onclick="PostXML61()" id="INPUT61" style="position: absolute; top: 75px; left: 301px; z-index: 64;cursor:pointer;height:35px; width:90px; border: none; background: none;"></div>
<xsl:if test="INPUT[41]/@VALUE = 0">
<div id="INPUT62" style="position: absolute; top: 640px; left: 174px; z-index: 65; background-image: url(IMAGES/MOTION_S.PNG); line-height: 78px; height: 78px; width: 63px;"></div>
</xsl:if>
<xsl:if test="INPUT[41]/@VALUE != 0">
<div id="INPUT62" style="position: absolute; top: 640px; left: 174px; z-index: 65; background-image: url(IMAGES/MOTION_S.GIF); line-height: 78px; height: 78px; width: 63px;"></div>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE = 0">
<form style="position: absolute; top: 189px; left: 24px; z-index: 66;">
<xsl:if test="INPUT[43]/@VALUE = 0">
<input id="INPUT63h" type="hidden" name="{INPUT[43]/@NAME}" value="1" />
<div id="INPUT63" class="imgsub" onclick="PostXML63()" style="background-image: url(IMAGES/OFF.PNG); line-height: 31px; height: 31px; width: 65px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[43]/@VALUE != 0">
<input id="INPUT63h" type="hidden" name="{INPUT[43]/@NAME}" value="0" />
<div id="INPUT63" class="imgsub" onclick="PostXML63()" style="background-image: url(IMAGES/ON.PNG); line-height: 31px; height: 31px; width: 65px; display: none;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE != 0">
<form style="position: absolute; top: 189px; left: 24px; z-index: 66;">
<xsl:if test="INPUT[43]/@VALUE = 0">
<input id="INPUT63h" type="hidden" name="{INPUT[43]/@NAME}" value="1" />
<div id="INPUT63" class="imgsub" onclick="PostXML63()" style="background-image: url(IMAGES/OFF.PNG); line-height: 31px; height: 31px; width: 65px;"></div>
</xsl:if>
<xsl:if test="INPUT[43]/@VALUE != 0">
<input id="INPUT63h" type="hidden" name="{INPUT[43]/@NAME}" value="0" />
<div id="INPUT63" class="imgsub" onclick="PostXML63()" style="background-image: url(IMAGES/ON.PNG); line-height: 31px; height: 31px; width: 65px;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[44]/@VALUE = 0">
<div id="INPUT64" style="position: absolute; top: 323px; left: 29px; z-index: 67; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[44]/@VALUE = 1">
<div id="INPUT64" style="position: absolute; top: 323px; left: 29px; z-index: 67; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[44]/@VALUE = 2">
<div id="INPUT64" style="position: absolute; top: 323px; left: 29px; z-index: 67; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[44]/@VALUE = 3">
<div id="INPUT64" style="position: absolute; top: 323px; left: 29px; z-index: 67; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT64" style="position: absolute; top: 323px; left: 29px; z-index: 67; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[44]/@VALUE = 0">
<div id="INPUT64" style="position: absolute; top: 323px; left: 29px; z-index: 67; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[44]/@VALUE = 1">
<div id="INPUT64" style="position: absolute; top: 323px; left: 29px; z-index: 67; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[44]/@VALUE = 2">
<div id="INPUT64" style="position: absolute; top: 323px; left: 29px; z-index: 67; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[44]/@VALUE = 3">
<div id="INPUT64" style="position: absolute; top: 323px; left: 29px; z-index: 67; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT64" style="position: absolute; top: 323px; left: 29px; z-index: 67; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[44]/@VALUE = 0">
<div id="INPUT65" style="position: absolute; top: 323px; left: 81px; z-index: 68; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[44]/@VALUE = 1">
<div id="INPUT65" style="position: absolute; top: 323px; left: 81px; z-index: 68; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[44]/@VALUE = 2">
<div id="INPUT65" style="position: absolute; top: 323px; left: 81px; z-index: 68; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[44]/@VALUE = 3">
<div id="INPUT65" style="position: absolute; top: 323px; left: 81px; z-index: 68; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT65" style="position: absolute; top: 323px; left: 81px; z-index: 68; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[44]/@VALUE = 0">
<div id="INPUT65" style="position: absolute; top: 323px; left: 81px; z-index: 68; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[44]/@VALUE = 1">
<div id="INPUT65" style="position: absolute; top: 323px; left: 81px; z-index: 68; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[44]/@VALUE = 2">
<div id="INPUT65" style="position: absolute; top: 323px; left: 81px; z-index: 68; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[44]/@VALUE = 3">
<div id="INPUT65" style="position: absolute; top: 323px; left: 81px; z-index: 68; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT65" style="position: absolute; top: 323px; left: 81px; z-index: 68; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[44]/@VALUE = 0">
<div id="INPUT66" style="position: absolute; top: 323px; left: 132px; z-index: 69; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[44]/@VALUE = 1">
<div id="INPUT66" style="position: absolute; top: 323px; left: 132px; z-index: 69; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[44]/@VALUE = 2">
<div id="INPUT66" style="position: absolute; top: 323px; left: 132px; z-index: 69; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[44]/@VALUE = 3">
<div id="INPUT66" style="position: absolute; top: 323px; left: 132px; z-index: 69; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT66" style="position: absolute; top: 323px; left: 132px; z-index: 69; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[44]/@VALUE = 0">
<div id="INPUT66" style="position: absolute; top: 323px; left: 132px; z-index: 69; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[44]/@VALUE = 1">
<div id="INPUT66" style="position: absolute; top: 323px; left: 132px; z-index: 69; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[44]/@VALUE = 2">
<div id="INPUT66" style="position: absolute; top: 323px; left: 132px; z-index: 69; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[44]/@VALUE = 3">
<div id="INPUT66" style="position: absolute; top: 323px; left: 132px; z-index: 69; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT66" style="position: absolute; top: 323px; left: 132px; z-index: 69; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[44]/@VALUE = 0">
<div id="INPUT67" style="position: absolute; top: 323px; left: 184px; z-index: 70; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[44]/@VALUE = 1">
<div id="INPUT67" style="position: absolute; top: 323px; left: 184px; z-index: 70; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[44]/@VALUE = 2">
<div id="INPUT67" style="position: absolute; top: 323px; left: 184px; z-index: 70; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[44]/@VALUE = 3">
<div id="INPUT67" style="position: absolute; top: 323px; left: 184px; z-index: 70; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT67" style="position: absolute; top: 323px; left: 184px; z-index: 70; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[44]/@VALUE = 0">
<div id="INPUT67" style="position: absolute; top: 323px; left: 184px; z-index: 70; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[44]/@VALUE = 1">
<div id="INPUT67" style="position: absolute; top: 323px; left: 184px; z-index: 70; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[44]/@VALUE = 2">
<div id="INPUT67" style="position: absolute; top: 323px; left: 184px; z-index: 70; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[44]/@VALUE = 3">
<div id="INPUT67" style="position: absolute; top: 323px; left: 184px; z-index: 70; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT67" style="position: absolute; top: 323px; left: 184px; z-index: 70; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE = 0">
<div style="position: absolute; top: 363px; left: 29px; z-index: 71; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT68">Auto</div>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE != 0">
<div style="position: absolute; top: 363px; left: 29px; z-index: 71; color: #323232; font-weight: bold;" id="INPUT68">Auto</div>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE = 0">
<div style="position: absolute; top: 363px; left: 79px; z-index: 72; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT69">Low</div>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE != 0">
<div style="position: absolute; top: 363px; left: 79px; z-index: 72; color: #323232; font-weight: bold;" id="INPUT69">Low</div>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE = 0">
<div style="position: absolute; top: 363px; left: 129px; z-index: 73; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT70">Med</div>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE != 0">
<div style="position: absolute; top: 363px; left: 129px; z-index: 73; color: #323232; font-weight: bold;" id="INPUT70">Med</div>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE = 0">
<div style="position: absolute; top: 363px; left: 184px; z-index: 74; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT71">High</div>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE != 0">
<div style="position: absolute; top: 363px; left: 184px; z-index: 74; color: #323232; font-weight: bold;" id="INPUT71">High</div>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE = 0">
<div onclick="PostXML72()" id="INPUT72" style="position: absolute; top: 324px; left: 30px; z-index: 75;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE != 0">
<div onclick="PostXML72()" id="INPUT72" style="position: absolute; top: 324px; left: 30px; z-index: 75;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE = 0">
<div onclick="PostXML73()" id="INPUT73" style="position: absolute; top: 324px; left: 80px; z-index: 76;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE != 0">
<div onclick="PostXML73()" id="INPUT73" style="position: absolute; top: 324px; left: 80px; z-index: 76;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE = 0">
<div onclick="PostXML74()" id="INPUT74" style="position: absolute; top: 324px; left: 132px; z-index: 77;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE != 0">
<div onclick="PostXML74()" id="INPUT74" style="position: absolute; top: 324px; left: 132px; z-index: 77;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE = 0">
<div onclick="PostXML75()" id="INPUT75" style="position: absolute; top: 324px; left: 185px; z-index: 78;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE != 0">
<div onclick="PostXML75()" id="INPUT75" style="position: absolute; top: 324px; left: 185px; z-index: 78;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[45]/@VALUE = 0">
<div id="INPUT76" style="position: absolute; top: 274px; left: 274px; z-index: 79; background-image: url(IMAGES/FAN_OFF.PNG); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[45]/@VALUE = 1">
<div id="INPUT76" style="position: absolute; top: 274px; left: 274px; z-index: 79; background-image: url(IMAGES/80.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[45]/@VALUE = 2">
<div id="INPUT76" style="position: absolute; top: 274px; left: 274px; z-index: 79; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[45]/@VALUE = 3">
<div id="INPUT76" style="position: absolute; top: 274px; left: 274px; z-index: 79; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[45]/@VALUE = 4">
<div id="INPUT76" style="position: absolute; top: 274px; left: 274px; z-index: 79; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT76" style="position: absolute; top: 274px; left: 274px; z-index: 79; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[45]/@VALUE = 0">
<div id="INPUT76" style="position: absolute; top: 274px; left: 274px; z-index: 79; background-image: url(IMAGES/FAN_OFF.PNG); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[45]/@VALUE = 1">
<div id="INPUT76" style="position: absolute; top: 274px; left: 274px; z-index: 79; background-image: url(IMAGES/80.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[45]/@VALUE = 2">
<div id="INPUT76" style="position: absolute; top: 274px; left: 274px; z-index: 79; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[45]/@VALUE = 3">
<div id="INPUT76" style="position: absolute; top: 274px; left: 274px; z-index: 79; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[45]/@VALUE = 4">
<div id="INPUT76" style="position: absolute; top: 274px; left: 274px; z-index: 79; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT76" style="position: absolute; top: 274px; left: 274px; z-index: 79; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE = 0">
<form style="position: absolute; top: 268px; left: 24px; z-index: 80;">
<xsl:if test="INPUT[46]/@VALUE = 0">
<input id="INPUT77h" type="hidden" name="{INPUT[46]/@NAME}" value="1" />
<div id="INPUT77" class="imgsub" onclick="PostXML77()" style="background-image: url(IMAGES/AIR-CON1.PNG); line-height: 45px; height: 45px; width: 45px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[46]/@VALUE != 0">
<input id="INPUT77h" type="hidden" name="{INPUT[46]/@NAME}" value="0" />
<div id="INPUT77" class="imgsub" onclick="PostXML77()" style="background-image: url(IMAGES/VENTILA1.PNG); line-height: 45px; height: 45px; width: 45px; display: none;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE != 0">
<form style="position: absolute; top: 268px; left: 24px; z-index: 80;">
<xsl:if test="INPUT[46]/@VALUE = 0">
<input id="INPUT77h" type="hidden" name="{INPUT[46]/@NAME}" value="1" />
<div id="INPUT77" class="imgsub" onclick="PostXML77()" style="background-image: url(IMAGES/AIR-CON1.PNG); line-height: 45px; height: 45px; width: 45px;"></div>
</xsl:if>
<xsl:if test="INPUT[46]/@VALUE != 0">
<input id="INPUT77h" type="hidden" name="{INPUT[46]/@NAME}" value="0" />
<div id="INPUT77" class="imgsub" onclick="PostXML77()" style="background-image: url(IMAGES/VENTILA1.PNG); line-height: 45px; height: 45px; width: 45px;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE = 0">
<form action="javascript:PostXML78()" style="position: absolute; top: 239px; left: 104px; z-index: 81; font-size: 13px;">
<input id="INPUT78" onfocus="document.getElementById('INPUT78x').style.visibility='visible';SetInputEdited(78, event);" onblur="InputFocused[77]=0" onkeydown="SetInputEdited(78, event);" class="mono" tabindex="3" type="text" style="width: 36px; color: #3C3C3C; background: none; display: none;" name="{INPUT[47]/@NAME}" value="{INPUT[47]/@VALUE}" />
<input type="submit" id="INPUT78x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE != 0">
<form action="javascript:PostXML78()" style="position: absolute; top: 239px; left: 104px; z-index: 81; font-size: 13px;">
<input id="INPUT78" onfocus="document.getElementById('INPUT78x').style.visibility='visible';SetInputEdited(78, event);" onblur="InputFocused[77]=0" onkeydown="SetInputEdited(78, event);" class="mono" tabindex="3" type="text" style="width: 36px; color: #3C3C3C; background: none;" name="{INPUT[47]/@NAME}" value="{INPUT[47]/@VALUE}" />
<input type="submit" id="INPUT78x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE = 0">
<form style="position: absolute; top: 178px; left: 329px; z-index: 82;">
<xsl:if test="INPUT[48]/@VALUE = 0">
<input id="INPUT79h" type="hidden" name="{INPUT[48]/@NAME}" value="1" />
<div id="INPUT79" class="imgsub" onclick="PostXML79()" style="background-image: url(IMAGES/CONTROL-.PNG); line-height: 40px; height: 40px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[48]/@VALUE != 0">
<input id="INPUT79h" type="hidden" name="{INPUT[48]/@NAME}" value="0" />
<div id="INPUT79" class="imgsub" onclick="PostXML79()" style="background-image: url(IMAGES/CONTROL1.PNG); line-height: 40px; height: 40px; width: 50px; display: none;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE != 0">
<form style="position: absolute; top: 178px; left: 329px; z-index: 82;">
<xsl:if test="INPUT[48]/@VALUE = 0">
<input id="INPUT79h" type="hidden" name="{INPUT[48]/@NAME}" value="1" />
<div id="INPUT79" class="imgsub" onclick="PostXML79()" style="background-image: url(IMAGES/CONTROL-.PNG); line-height: 40px; height: 40px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[48]/@VALUE != 0">
<input id="INPUT79h" type="hidden" name="{INPUT[48]/@NAME}" value="0" />
<div id="INPUT79" class="imgsub" onclick="PostXML79()" style="background-image: url(IMAGES/CONTROL1.PNG); line-height: 40px; height: 40px; width: 50px;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE = 0">
<div style="position: absolute; top: 242px; left: 24px; z-index: 83; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT80">Set Temp</div>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE != 0">
<div style="position: absolute; top: 242px; left: 24px; z-index: 83; color: #323232; font-weight: bold;" id="INPUT80">Set Temp</div>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE = 0">
<div style="position: absolute; top: 242px; left: 279px; z-index: 85; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT82">Room</div>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE != 0">
<div style="position: absolute; top: 242px; left: 279px; z-index: 85; color: #323232; font-weight: bold;" id="INPUT82">Room</div>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE = 0">
<div style="position: absolute; top: 224px; left: 329px; z-index: 86; background-image: url(IMAGES/THERMOME.PNG); line-height: 40px; height: 40px; width: 14px; visibility: hidden;" id="INPUT83"></div>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE != 0">
<div style="position: absolute; top: 224px; left: 329px; z-index: 86; background-image: url(IMAGES/THERMOME.PNG); line-height: 40px; height: 40px; width: 14px;" id="INPUT83"></div>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE = 0">
<div style="position: absolute; top: 197px; left: 279px; z-index: 87; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT84">Valve</div>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE != 0">
<div style="position: absolute; top: 197px; left: 279px; z-index: 87; color: #323232; font-weight: bold;" id="INPUT84">Valve</div>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE = 0">
<div style="position: absolute; top: 243px; left: 171px; z-index: 88; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT85">C</div>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE != 0">
<div style="position: absolute; top: 243px; left: 171px; z-index: 88; color: #323232; font-weight: bold;" id="INPUT85">C</div>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE = 0">
<div style="position: absolute; top: 242px; left: 394px; z-index: 89; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT86">C</div>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE != 0">
<div style="position: absolute; top: 242px; left: 394px; z-index: 89; color: #323232; font-weight: bold;" id="INPUT86">C</div>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE = 0">
<xsl:if test="INPUT[46]/@VALUE = 0">
<div id="INPUT87" style="position: absolute; top: 259px; left: 70px; z-index: 90; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold; display: none;">Cooling</div>
</xsl:if>
<xsl:if test="INPUT[46]/@VALUE != 0">
<div id="INPUT87" style="position: absolute; top: 259px; left: 70px; z-index: 90; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold; display: none;">Fan only</div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[42]/@VALUE != 0">
<xsl:if test="INPUT[46]/@VALUE = 0">
<div id="INPUT87" style="position: absolute; top: 259px; left: 70px; z-index: 90; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold;">Cooling</div>
</xsl:if>
<xsl:if test="INPUT[46]/@VALUE != 0">
<div id="INPUT87" style="position: absolute; top: 259px; left: 70px; z-index: 90; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold;">Fan only</div>
</xsl:if>
</xsl:if>
<div style="position: absolute; top: 135px; left: 160px; z-index: 91; font-size: 20px; color: #323232; font-weight: bold;">MAJLES</div>
<xsl:if test="INPUT[17]/@VALUE = 0">
<div onclick="PostXML88()" id="INPUT88" style="position: absolute; top: 360px; left: 175px; z-index: 92;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE != 0">
<div onclick="PostXML88()" id="INPUT88" style="position: absolute; top: 360px; left: 175px; z-index: 92;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML89()" id="INPUT89" style="position: absolute; top: 205px; left: 27px; z-index: 93;cursor:pointer;height:70px; width:60px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML89()" id="INPUT89" style="position: absolute; top: 205px; left: 27px; z-index: 93;cursor:pointer;height:70px; width:60px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML90()" id="INPUT90" style="position: absolute; top: 205px; left: 99px; z-index: 94;cursor:pointer;height:70px; width:60px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML90()" id="INPUT90" style="position: absolute; top: 205px; left: 99px; z-index: 94;cursor:pointer;height:70px; width:60px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML91()" id="INPUT91" style="position: absolute; top: 205px; left: 170px; z-index: 95;cursor:pointer;height:70px; width:60px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML91()" id="INPUT91" style="position: absolute; top: 205px; left: 170px; z-index: 95;cursor:pointer;height:70px; width:60px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML92()" id="INPUT92" style="position: absolute; top: 205px; left: 241px; z-index: 96;cursor:pointer;height:70px; width:60px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML92()" id="INPUT92" style="position: absolute; top: 205px; left: 241px; z-index: 96;cursor:pointer;height:70px; width:60px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML93()" id="INPUT93" style="position: absolute; top: 205px; left: 313px; z-index: 97;cursor:pointer;height:70px; width:60px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML93()" id="INPUT93" style="position: absolute; top: 205px; left: 313px; z-index: 97;cursor:pointer;height:70px; width:60px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML94()" id="INPUT94" style="position: absolute; top: 325px; left: 27px; z-index: 98;cursor:pointer;height:70px; width:60px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML94()" id="INPUT94" style="position: absolute; top: 325px; left: 27px; z-index: 98;cursor:pointer;height:70px; width:60px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML95()" id="INPUT95" style="position: absolute; top: 325px; left: 99px; z-index: 99;cursor:pointer;height:70px; width:60px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML95()" id="INPUT95" style="position: absolute; top: 325px; left: 99px; z-index: 99;cursor:pointer;height:70px; width:60px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML96()" id="INPUT96" style="position: absolute; top: 325px; left: 170px; z-index: 100;cursor:pointer;height:70px; width:60px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML96()" id="INPUT96" style="position: absolute; top: 325px; left: 170px; z-index: 100;cursor:pointer;height:70px; width:60px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML97()" id="INPUT97" style="position: absolute; top: 325px; left: 241px; z-index: 101;cursor:pointer;height:70px; width:60px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML97()" id="INPUT97" style="position: absolute; top: 325px; left: 241px; z-index: 101;cursor:pointer;height:70px; width:60px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML98()" id="INPUT98" style="position: absolute; top: 325px; left: 313px; z-index: 102;cursor:pointer;height:70px; width:60px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML98()" id="INPUT98" style="position: absolute; top: 325px; left: 313px; z-index: 102;cursor:pointer;height:70px; width:60px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML99()" id="INPUT99" style="position: absolute; top: 444px; left: 27px; z-index: 103;cursor:pointer;height:70px; width:60px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML99()" id="INPUT99" style="position: absolute; top: 444px; left: 27px; z-index: 103;cursor:pointer;height:70px; width:60px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML100()" id="INPUT100" style="position: absolute; top: 444px; left: 99px; z-index: 104;cursor:pointer;height:70px; width:60px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML100()" id="INPUT100" style="position: absolute; top: 444px; left: 99px; z-index: 104;cursor:pointer;height:70px; width:60px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML101()" id="INPUT101" style="position: absolute; top: 444px; left: 170px; z-index: 105;cursor:pointer;height:70px; width:60px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML101()" id="INPUT101" style="position: absolute; top: 444px; left: 170px; z-index: 105;cursor:pointer;height:70px; width:60px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML102()" id="INPUT102" style="position: absolute; top: 444px; left: 241px; z-index: 106;cursor:pointer;height:70px; width:60px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML102()" id="INPUT102" style="position: absolute; top: 444px; left: 241px; z-index: 106;cursor:pointer;height:70px; width:60px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML103()" id="INPUT103" style="position: absolute; top: 444px; left: 313px; z-index: 107;cursor:pointer;height:70px; width:60px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML103()" id="INPUT103" style="position: absolute; top: 444px; left: 313px; z-index: 107;cursor:pointer;height:70px; width:60px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<div onclick="PostXML104()" id="INPUT104" style="position: absolute; top: 316px; left: 81px; z-index: 108;cursor:pointer;height:50px; width:50px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<div onclick="PostXML104()" id="INPUT104" style="position: absolute; top: 316px; left: 81px; z-index: 108;cursor:pointer;height:50px; width:50px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<div onclick="PostXML105()" id="INPUT105" style="position: absolute; top: 316px; left: 10px; z-index: 109;cursor:pointer;height:50px; width:50px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<div onclick="PostXML105()" id="INPUT105" style="position: absolute; top: 316px; left: 10px; z-index: 109;cursor:pointer;height:50px; width:50px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<div onclick="PostXML106()" id="INPUT106" style="position: absolute; top: 316px; left: 220px; z-index: 110;cursor:pointer;height:50px; width:50px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<div onclick="PostXML106()" id="INPUT106" style="position: absolute; top: 316px; left: 220px; z-index: 110;cursor:pointer;height:50px; width:50px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<div onclick="PostXML107()" id="INPUT107" style="position: absolute; top: 316px; left: 149px; z-index: 111;cursor:pointer;height:50px; width:50px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<div onclick="PostXML107()" id="INPUT107" style="position: absolute; top: 316px; left: 149px; z-index: 111;cursor:pointer;height:50px; width:50px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<div onclick="PostXML108()" id="INPUT108" style="position: absolute; top: 316px; left: 355px; z-index: 112;cursor:pointer;height:50px; width:50px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<div onclick="PostXML108()" id="INPUT108" style="position: absolute; top: 316px; left: 355px; z-index: 112;cursor:pointer;height:50px; width:50px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<div onclick="PostXML109()" id="INPUT109" style="position: absolute; top: 316px; left: 284px; z-index: 113;cursor:pointer;height:50px; width:50px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<div onclick="PostXML109()" id="INPUT109" style="position: absolute; top: 316px; left: 284px; z-index: 113;cursor:pointer;height:50px; width:50px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<div onclick="PostXML110()" id="INPUT110" style="position: absolute; top: 563px; left: 116px; z-index: 114;cursor:pointer;height:50px; width:50px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<div onclick="PostXML110()" id="INPUT110" style="position: absolute; top: 563px; left: 116px; z-index: 114;cursor:pointer;height:50px; width:50px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<div onclick="PostXML111()" id="INPUT111" style="position: absolute; top: 563px; left: 45px; z-index: 115;cursor:pointer;height:50px; width:50px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<div onclick="PostXML111()" id="INPUT111" style="position: absolute; top: 563px; left: 45px; z-index: 115;cursor:pointer;height:50px; width:50px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<div onclick="PostXML112()" id="INPUT112" style="position: absolute; top: 564px; left: 322px; z-index: 116;cursor:pointer;height:50px; width:50px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<div onclick="PostXML112()" id="INPUT112" style="position: absolute; top: 564px; left: 322px; z-index: 116;cursor:pointer;height:50px; width:50px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<div onclick="PostXML113()" id="INPUT113" style="position: absolute; top: 564px; left: 251px; z-index: 117;cursor:pointer;height:50px; width:50px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<div onclick="PostXML113()" id="INPUT113" style="position: absolute; top: 564px; left: 251px; z-index: 117;cursor:pointer;height:50px; width:50px; border: none; background: none;"></div>
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
