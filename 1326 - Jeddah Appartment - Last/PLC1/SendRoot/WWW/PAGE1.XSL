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
sapre</title>
<script src="PAGE1.JS?U=1584613442" language="JavaScript" charset="utf-8" />
<style type="text/css">.mono {font-family: Verdana, Arial, FreeSans, sans-serif;}</style>
</head>
<body onload="GetXML('PAGE1.XML'); FunWatchDog();" style="margin: 0px 0px 0px 0px">
<xsl:if test="1584613442 != ACCESS/@UCID">
<xsl:attribute name="onload">
null;
</xsl:attribute>
<div id="cachewarning" style="text-align: left;"></div>
<script src="REFCLR.JS" language="JavaScript" charset="utf-8"></script>
</xsl:if>
<xsl:if test="1584613442 = ACCESS/@UCID">
<table cellpadding="0" cellspacing="0">
<tr>
<!--menu-->
<!--plan-->
<td id="page" style="border-left: 1px solid black; border-top: 1px solid black;">
<div style="background-color:#FFFFFF;position: relative; width: 412px; height: 734px;">
<form action="javascript:PostGlobal();">
<xsl:if test="INPUT[1]/@VALUE = 0">
<input class="mono" tabindex="2" type="text" id="INPUT19" style="position: absolute; top: 71px; left: 340px; width: 36px; z-index: 19; background: none; visibility: hidden;" value="{INPUT[9]/@VALUE}" readonly="readonly" />
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<input class="mono" tabindex="2" type="text" id="INPUT19" style="position: absolute; top: 71px; left: 340px; width: 36px; z-index: 19; background: none;" value="{INPUT[9]/@VALUE}" readonly="readonly" />
</xsl:if>
</form>
<xsl:if test="INPUT[1]/@VALUE = 0">
<form style="position: absolute; top: 21px; left: 15px; z-index: 1;">
<xsl:if test="INPUT[2]/@VALUE = 0">
<input id="INPUT1h" type="hidden" name="{INPUT[2]/@NAME}" value="1" />
<div id="INPUT1" class="imgsub" onclick="PostXML1()" style="background-image: url(IMAGES/OFF.PNG); line-height: 31px; height: 31px; width: 65px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<input id="INPUT1h" type="hidden" name="{INPUT[2]/@NAME}" value="0" />
<div id="INPUT1" class="imgsub" onclick="PostXML1()" style="background-image: url(IMAGES/ON.PNG); line-height: 31px; height: 31px; width: 65px; display: none;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<form style="position: absolute; top: 21px; left: 15px; z-index: 1;">
<xsl:if test="INPUT[2]/@VALUE = 0">
<input id="INPUT1h" type="hidden" name="{INPUT[2]/@NAME}" value="1" />
<div id="INPUT1" class="imgsub" onclick="PostXML1()" style="background-image: url(IMAGES/OFF.PNG); line-height: 31px; height: 31px; width: 65px;"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<input id="INPUT1h" type="hidden" name="{INPUT[2]/@NAME}" value="0" />
<div id="INPUT1" class="imgsub" onclick="PostXML1()" style="background-image: url(IMAGES/ON.PNG); line-height: 31px; height: 31px; width: 65px;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[4]/@VALUE = 0">
<div id="INPUT2" style="position: absolute; top: 155px; left: 20px; z-index: 2; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[4]/@VALUE = 1">
<div id="INPUT2" style="position: absolute; top: 155px; left: 20px; z-index: 2; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[4]/@VALUE = 2">
<div id="INPUT2" style="position: absolute; top: 155px; left: 20px; z-index: 2; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[4]/@VALUE = 3">
<div id="INPUT2" style="position: absolute; top: 155px; left: 20px; z-index: 2; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT2" style="position: absolute; top: 155px; left: 20px; z-index: 2; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[4]/@VALUE = 0">
<div id="INPUT2" style="position: absolute; top: 155px; left: 20px; z-index: 2; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[4]/@VALUE = 1">
<div id="INPUT2" style="position: absolute; top: 155px; left: 20px; z-index: 2; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[4]/@VALUE = 2">
<div id="INPUT2" style="position: absolute; top: 155px; left: 20px; z-index: 2; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[4]/@VALUE = 3">
<div id="INPUT2" style="position: absolute; top: 155px; left: 20px; z-index: 2; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT2" style="position: absolute; top: 155px; left: 20px; z-index: 2; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[4]/@VALUE = 0">
<div id="INPUT3" style="position: absolute; top: 155px; left: 72px; z-index: 3; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[4]/@VALUE = 1">
<div id="INPUT3" style="position: absolute; top: 155px; left: 72px; z-index: 3; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[4]/@VALUE = 2">
<div id="INPUT3" style="position: absolute; top: 155px; left: 72px; z-index: 3; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[4]/@VALUE = 3">
<div id="INPUT3" style="position: absolute; top: 155px; left: 72px; z-index: 3; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT3" style="position: absolute; top: 155px; left: 72px; z-index: 3; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[4]/@VALUE = 0">
<div id="INPUT3" style="position: absolute; top: 155px; left: 72px; z-index: 3; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[4]/@VALUE = 1">
<div id="INPUT3" style="position: absolute; top: 155px; left: 72px; z-index: 3; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[4]/@VALUE = 2">
<div id="INPUT3" style="position: absolute; top: 155px; left: 72px; z-index: 3; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[4]/@VALUE = 3">
<div id="INPUT3" style="position: absolute; top: 155px; left: 72px; z-index: 3; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT3" style="position: absolute; top: 155px; left: 72px; z-index: 3; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[4]/@VALUE = 0">
<div id="INPUT4" style="position: absolute; top: 155px; left: 123px; z-index: 4; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[4]/@VALUE = 1">
<div id="INPUT4" style="position: absolute; top: 155px; left: 123px; z-index: 4; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[4]/@VALUE = 2">
<div id="INPUT4" style="position: absolute; top: 155px; left: 123px; z-index: 4; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[4]/@VALUE = 3">
<div id="INPUT4" style="position: absolute; top: 155px; left: 123px; z-index: 4; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT4" style="position: absolute; top: 155px; left: 123px; z-index: 4; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[4]/@VALUE = 0">
<div id="INPUT4" style="position: absolute; top: 155px; left: 123px; z-index: 4; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[4]/@VALUE = 1">
<div id="INPUT4" style="position: absolute; top: 155px; left: 123px; z-index: 4; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[4]/@VALUE = 2">
<div id="INPUT4" style="position: absolute; top: 155px; left: 123px; z-index: 4; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[4]/@VALUE = 3">
<div id="INPUT4" style="position: absolute; top: 155px; left: 123px; z-index: 4; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT4" style="position: absolute; top: 155px; left: 123px; z-index: 4; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[4]/@VALUE = 0">
<div id="INPUT5" style="position: absolute; top: 155px; left: 175px; z-index: 5; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[4]/@VALUE = 1">
<div id="INPUT5" style="position: absolute; top: 155px; left: 175px; z-index: 5; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[4]/@VALUE = 2">
<div id="INPUT5" style="position: absolute; top: 155px; left: 175px; z-index: 5; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[4]/@VALUE = 3">
<div id="INPUT5" style="position: absolute; top: 155px; left: 175px; z-index: 5; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT5" style="position: absolute; top: 155px; left: 175px; z-index: 5; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[4]/@VALUE = 0">
<div id="INPUT5" style="position: absolute; top: 155px; left: 175px; z-index: 5; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[4]/@VALUE = 1">
<div id="INPUT5" style="position: absolute; top: 155px; left: 175px; z-index: 5; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[4]/@VALUE = 2">
<div id="INPUT5" style="position: absolute; top: 155px; left: 175px; z-index: 5; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[4]/@VALUE = 3">
<div id="INPUT5" style="position: absolute; top: 155px; left: 175px; z-index: 5; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT5" style="position: absolute; top: 155px; left: 175px; z-index: 5; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 195px; left: 20px; z-index: 6; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT6">Auto</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 195px; left: 20px; z-index: 6; color: #323232; font-weight: bold;" id="INPUT6">Auto</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 195px; left: 70px; z-index: 7; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT7">Low</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 195px; left: 70px; z-index: 7; color: #323232; font-weight: bold;" id="INPUT7">Low</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 195px; left: 120px; z-index: 8; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT8">Med</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 195px; left: 120px; z-index: 8; color: #323232; font-weight: bold;" id="INPUT8">Med</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 195px; left: 175px; z-index: 9; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT9">High</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 195px; left: 175px; z-index: 9; color: #323232; font-weight: bold;" id="INPUT9">High</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div onclick="PostXML10()" id="INPUT10" style="position: absolute; top: 156px; left: 21px; z-index: 10;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div onclick="PostXML10()" id="INPUT10" style="position: absolute; top: 156px; left: 21px; z-index: 10;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div onclick="PostXML11()" id="INPUT11" style="position: absolute; top: 156px; left: 71px; z-index: 11;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div onclick="PostXML11()" id="INPUT11" style="position: absolute; top: 156px; left: 71px; z-index: 11;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div onclick="PostXML12()" id="INPUT12" style="position: absolute; top: 156px; left: 123px; z-index: 12;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div onclick="PostXML12()" id="INPUT12" style="position: absolute; top: 156px; left: 123px; z-index: 12;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div onclick="PostXML13()" id="INPUT13" style="position: absolute; top: 156px; left: 176px; z-index: 13;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div onclick="PostXML13()" id="INPUT13" style="position: absolute; top: 156px; left: 176px; z-index: 13;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[5]/@VALUE = 0">
<div id="INPUT14" style="position: absolute; top: 106px; left: 265px; z-index: 14; background-image: url(IMAGES/FAN_OFF.PNG); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[5]/@VALUE = 1">
<div id="INPUT14" style="position: absolute; top: 106px; left: 265px; z-index: 14; background-image: url(IMAGES/80.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[5]/@VALUE = 2">
<div id="INPUT14" style="position: absolute; top: 106px; left: 265px; z-index: 14; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[5]/@VALUE = 3">
<div id="INPUT14" style="position: absolute; top: 106px; left: 265px; z-index: 14; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[5]/@VALUE = 4">
<div id="INPUT14" style="position: absolute; top: 106px; left: 265px; z-index: 14; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT14" style="position: absolute; top: 106px; left: 265px; z-index: 14; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[5]/@VALUE = 0">
<div id="INPUT14" style="position: absolute; top: 106px; left: 265px; z-index: 14; background-image: url(IMAGES/FAN_OFF.PNG); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[5]/@VALUE = 1">
<div id="INPUT14" style="position: absolute; top: 106px; left: 265px; z-index: 14; background-image: url(IMAGES/80.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[5]/@VALUE = 2">
<div id="INPUT14" style="position: absolute; top: 106px; left: 265px; z-index: 14; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[5]/@VALUE = 3">
<div id="INPUT14" style="position: absolute; top: 106px; left: 265px; z-index: 14; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[5]/@VALUE = 4">
<div id="INPUT14" style="position: absolute; top: 106px; left: 265px; z-index: 14; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT14" style="position: absolute; top: 106px; left: 265px; z-index: 14; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<form style="position: absolute; top: 100px; left: 15px; z-index: 15;">
<xsl:if test="INPUT[6]/@VALUE = 0">
<input id="INPUT15h" type="hidden" name="{INPUT[6]/@NAME}" value="1" />
<div id="INPUT15" class="imgsub" onclick="PostXML15()" style="background-image: url(IMAGES/AIR-CON1.PNG); line-height: 45px; height: 45px; width: 45px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<input id="INPUT15h" type="hidden" name="{INPUT[6]/@NAME}" value="0" />
<div id="INPUT15" class="imgsub" onclick="PostXML15()" style="background-image: url(IMAGES/VENTILA1.PNG); line-height: 45px; height: 45px; width: 45px; display: none;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<form style="position: absolute; top: 100px; left: 15px; z-index: 15;">
<xsl:if test="INPUT[6]/@VALUE = 0">
<input id="INPUT15h" type="hidden" name="{INPUT[6]/@NAME}" value="1" />
<div id="INPUT15" class="imgsub" onclick="PostXML15()" style="background-image: url(IMAGES/AIR-CON1.PNG); line-height: 45px; height: 45px; width: 45px;"></div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<input id="INPUT15h" type="hidden" name="{INPUT[6]/@NAME}" value="0" />
<div id="INPUT15" class="imgsub" onclick="PostXML15()" style="background-image: url(IMAGES/VENTILA1.PNG); line-height: 45px; height: 45px; width: 45px;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<form action="javascript:PostXML16()" style="position: absolute; top: 71px; left: 95px; z-index: 16; font-size: 13px;">
<input id="INPUT16" onfocus="document.getElementById('INPUT16x').style.visibility='visible';SetInputEdited(16, event);" onblur="InputFocused[15]=0" onkeydown="SetInputEdited(16, event);" class="mono" tabindex="1" type="text" style="width: 36px; color: #3C3C3C; background: none; display: none;" name="{INPUT[7]/@NAME}" value="{INPUT[7]/@VALUE}" />
<input type="submit" id="INPUT16x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<form action="javascript:PostXML16()" style="position: absolute; top: 71px; left: 95px; z-index: 16; font-size: 13px;">
<input id="INPUT16" onfocus="document.getElementById('INPUT16x').style.visibility='visible';SetInputEdited(16, event);" onblur="InputFocused[15]=0" onkeydown="SetInputEdited(16, event);" class="mono" tabindex="1" type="text" style="width: 36px; color: #3C3C3C; background: none;" name="{INPUT[7]/@NAME}" value="{INPUT[7]/@VALUE}" />
<input type="submit" id="INPUT16x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<form style="position: absolute; top: 10px; left: 320px; z-index: 17;">
<xsl:if test="INPUT[8]/@VALUE = 0">
<input id="INPUT17h" type="hidden" name="{INPUT[8]/@NAME}" value="1" />
<div id="INPUT17" class="imgsub" onclick="PostXML17()" style="background-image: url(IMAGES/CONTROL-.PNG); line-height: 40px; height: 40px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<input id="INPUT17h" type="hidden" name="{INPUT[8]/@NAME}" value="0" />
<div id="INPUT17" class="imgsub" onclick="PostXML17()" style="background-image: url(IMAGES/CONTROL1.PNG); line-height: 40px; height: 40px; width: 50px; display: none;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<form style="position: absolute; top: 10px; left: 320px; z-index: 17;">
<xsl:if test="INPUT[8]/@VALUE = 0">
<input id="INPUT17h" type="hidden" name="{INPUT[8]/@NAME}" value="1" />
<div id="INPUT17" class="imgsub" onclick="PostXML17()" style="background-image: url(IMAGES/CONTROL-.PNG); line-height: 40px; height: 40px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<input id="INPUT17h" type="hidden" name="{INPUT[8]/@NAME}" value="0" />
<div id="INPUT17" class="imgsub" onclick="PostXML17()" style="background-image: url(IMAGES/CONTROL1.PNG); line-height: 40px; height: 40px; width: 50px;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 74px; left: 15px; z-index: 18; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT18">Set Temp</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 74px; left: 15px; z-index: 18; color: #323232; font-weight: bold;" id="INPUT18">Set Temp</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 74px; left: 270px; z-index: 20; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT20">Room</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 74px; left: 270px; z-index: 20; color: #323232; font-weight: bold;" id="INPUT20">Room</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 56px; left: 320px; z-index: 21; background-image: url(IMAGES/THERMOME.PNG); line-height: 40px; height: 40px; width: 14px; visibility: hidden;" id="INPUT21"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 56px; left: 320px; z-index: 21; background-image: url(IMAGES/THERMOME.PNG); line-height: 40px; height: 40px; width: 14px;" id="INPUT21"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 29px; left: 270px; z-index: 22; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT22">Valve</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 29px; left: 270px; z-index: 22; color: #323232; font-weight: bold;" id="INPUT22">Valve</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 75px; left: 162px; z-index: 23; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT23">C</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 75px; left: 162px; z-index: 23; color: #323232; font-weight: bold;" id="INPUT23">C</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 74px; left: 385px; z-index: 24; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT24">C</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 74px; left: 385px; z-index: 24; color: #323232; font-weight: bold;" id="INPUT24">C</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[6]/@VALUE = 0">
<div id="INPUT25" style="position: absolute; top: 91px; left: 61px; z-index: 25; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold; display: none;">Cooling</div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div id="INPUT25" style="position: absolute; top: 91px; left: 61px; z-index: 25; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold; display: none;">Fan only</div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[6]/@VALUE = 0">
<div id="INPUT25" style="position: absolute; top: 91px; left: 61px; z-index: 25; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold;">Cooling</div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div id="INPUT25" style="position: absolute; top: 91px; left: 61px; z-index: 25; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold;">Fan only</div>
</xsl:if>
</xsl:if>
<div style="position: absolute; top: 10px; left: 170px; z-index: 26; font-size: 15px; color: #4B4B4B; font-weight: bold;">FCU 2</div>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div id="INPUT26" style="border: solid red 2px; position: absolute; top: 347px; left: 118px; z-index: 27; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div id="INPUT26" style="border: solid red 2px; position: absolute; top: 347px; left: 118px; z-index: 27; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div id="INPUT27" style="border: solid red 2px; position: absolute; top: 347px; left: 258px; z-index: 28; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div id="INPUT27" style="border: solid red 2px; position: absolute; top: 347px; left: 258px; z-index: 28; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<xsl:if test="INPUT[11]/@VALUE = 0">
<div id="INPUT28" style="position: absolute; top: 347px; left: 118px; z-index: 29; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<div id="INPUT28" style="position: absolute; top: 347px; left: 118px; z-index: 29; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<xsl:if test="INPUT[11]/@VALUE = 0">
<div id="INPUT28" style="position: absolute; top: 347px; left: 118px; z-index: 29; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<div id="INPUT28" style="position: absolute; top: 347px; left: 118px; z-index: 29; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<xsl:if test="INPUT[12]/@VALUE = 0">
<div id="INPUT29" style="position: absolute; top: 347px; left: 258px; z-index: 30; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div id="INPUT29" style="position: absolute; top: 347px; left: 258px; z-index: 30; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<xsl:if test="INPUT[12]/@VALUE = 0">
<div id="INPUT29" style="position: absolute; top: 347px; left: 258px; z-index: 30; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div id="INPUT29" style="position: absolute; top: 347px; left: 258px; z-index: 30; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div onclick="PostXML30()" id="INPUT30" style="position: absolute; top: 334px; left: 106px; z-index: 31;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div onclick="PostXML30()" id="INPUT30" style="position: absolute; top: 334px; left: 106px; z-index: 31;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div onclick="PostXML31()" id="INPUT31" style="position: absolute; top: 334px; left: 246px; z-index: 32;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div onclick="PostXML31()" id="INPUT31" style="position: absolute; top: 334px; left: 246px; z-index: 32;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE = 0">
<xsl:if test="INPUT[14]/@VALUE = 0">
<div id="INPUT32" style="position: absolute; top: 463px; left: 80px; z-index: 33; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div id="INPUT32" style="position: absolute; top: 463px; left: 80px; z-index: 33; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<xsl:if test="INPUT[14]/@VALUE = 0">
<div id="INPUT32" style="position: absolute; top: 463px; left: 80px; z-index: 33; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div id="INPUT32" style="position: absolute; top: 463px; left: 80px; z-index: 33; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE = 0">
<xsl:if test="INPUT[15]/@VALUE = 0">
<div id="INPUT33" style="position: absolute; top: 463px; left: 195px; z-index: 34; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[15]/@VALUE != 0">
<div id="INPUT33" style="position: absolute; top: 463px; left: 195px; z-index: 34; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<xsl:if test="INPUT[15]/@VALUE = 0">
<div id="INPUT33" style="position: absolute; top: 463px; left: 195px; z-index: 34; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[15]/@VALUE != 0">
<div id="INPUT33" style="position: absolute; top: 463px; left: 195px; z-index: 34; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE = 0">
<xsl:if test="INPUT[16]/@VALUE = 0">
<div id="INPUT34" style="position: absolute; top: 463px; left: 310px; z-index: 35; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[16]/@VALUE != 0">
<div id="INPUT34" style="position: absolute; top: 463px; left: 310px; z-index: 35; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<xsl:if test="INPUT[16]/@VALUE = 0">
<div id="INPUT34" style="position: absolute; top: 463px; left: 310px; z-index: 35; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[16]/@VALUE != 0">
<div id="INPUT34" style="position: absolute; top: 463px; left: 310px; z-index: 35; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE = 0">
<xsl:if test="INPUT[17]/@VALUE = 0">
<div id="INPUT35" style="position: absolute; top: 632px; left: 80px; z-index: 36; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE != 0">
<div id="INPUT35" style="position: absolute; top: 632px; left: 80px; z-index: 36; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<xsl:if test="INPUT[17]/@VALUE = 0">
<div id="INPUT35" style="position: absolute; top: 632px; left: 80px; z-index: 36; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE != 0">
<div id="INPUT35" style="position: absolute; top: 632px; left: 80px; z-index: 36; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE = 0">
<xsl:if test="INPUT[18]/@VALUE = 0">
<div id="INPUT36" style="position: absolute; top: 632px; left: 195px; z-index: 37; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[18]/@VALUE != 0">
<div id="INPUT36" style="position: absolute; top: 632px; left: 195px; z-index: 37; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<xsl:if test="INPUT[18]/@VALUE = 0">
<div id="INPUT36" style="position: absolute; top: 632px; left: 195px; z-index: 37; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[18]/@VALUE != 0">
<div id="INPUT36" style="position: absolute; top: 632px; left: 195px; z-index: 37; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE = 0">
<xsl:if test="INPUT[19]/@VALUE = 0">
<div id="INPUT37" style="position: absolute; top: 632px; left: 310px; z-index: 38; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<div id="INPUT37" style="position: absolute; top: 632px; left: 310px; z-index: 38; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<xsl:if test="INPUT[19]/@VALUE = 0">
<div id="INPUT37" style="position: absolute; top: 632px; left: 310px; z-index: 38; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<div id="INPUT37" style="position: absolute; top: 632px; left: 310px; z-index: 38; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE = 0">
<div onclick="PostXML38()" id="INPUT38" style="position: absolute; top: 450px; left: 68px; z-index: 39;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div onclick="PostXML38()" id="INPUT38" style="position: absolute; top: 450px; left: 68px; z-index: 39;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE = 0">
<div onclick="PostXML39()" id="INPUT39" style="position: absolute; top: 450px; left: 183px; z-index: 40;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div onclick="PostXML39()" id="INPUT39" style="position: absolute; top: 450px; left: 183px; z-index: 40;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE = 0">
<div onclick="PostXML40()" id="INPUT40" style="position: absolute; top: 450px; left: 298px; z-index: 41;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div onclick="PostXML40()" id="INPUT40" style="position: absolute; top: 450px; left: 298px; z-index: 41;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE = 0">
<div onclick="PostXML41()" id="INPUT41" style="position: absolute; top: 620px; left: 68px; z-index: 42;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div onclick="PostXML41()" id="INPUT41" style="position: absolute; top: 620px; left: 68px; z-index: 42;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE = 0">
<div onclick="PostXML42()" id="INPUT42" style="position: absolute; top: 620px; left: 183px; z-index: 43;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div onclick="PostXML42()" id="INPUT42" style="position: absolute; top: 620px; left: 183px; z-index: 43;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE = 0">
<div onclick="PostXML43()" id="INPUT43" style="position: absolute; top: 620px; left: 298px; z-index: 44;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div onclick="PostXML43()" id="INPUT43" style="position: absolute; top: 620px; left: 298px; z-index: 44;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
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
