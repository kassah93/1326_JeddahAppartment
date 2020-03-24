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
Room3</title>
<script src="ROOM3.JS?U=1584613573" language="JavaScript" charset="utf-8" />
<style type="text/css">.mono {font-family: Verdana, Arial, FreeSans, sans-serif;}</style>
</head>
<body onload="GetXML('ROOM3.XML'); FunWatchDog();" style="margin: 0px 0px 0px 0px">
<xsl:if test="1584613573 != ACCESS/@UCID">
<xsl:attribute name="onload">
null;
</xsl:attribute>
<div id="cachewarning" style="text-align: left;"></div>
<script src="REFCLR.JS" language="JavaScript" charset="utf-8"></script>
</xsl:if>
<xsl:if test="1584613573 = ACCESS/@UCID">
<table cellpadding="0" cellspacing="0">
<tr>
<!--menu-->
<!--plan-->
<td id="page" style="border-left: 1px solid black; border-top: 1px solid black;">
<div style="background-color:#969696;position: relative; width: 412px; height: 734px;">
<form action="javascript:PostGlobal();">
<xsl:if test="INPUT[3]/@VALUE = 0">
<input class="mono" tabindex="1" type="text" size="3" style="position: absolute; top: 316px; left: 95px; z-index: 25; border: solid red 2px; visibility: hidden;" value="? ? ?" readonly="readonly" id="INPUT23" />
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<input class="mono" tabindex="1" type="text" size="3" style="position: absolute; top: 316px; left: 95px; z-index: 25; border: solid red 2px;" value="? ? ?" readonly="readonly" id="INPUT23" />
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<input class="mono" tabindex="2" type="text" size="3" style="position: absolute; top: 316px; left: 275px; z-index: 36; border: solid red 2px; visibility: hidden;" value="? ? ?" readonly="readonly" id="INPUT34" />
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<input class="mono" tabindex="2" type="text" size="3" style="position: absolute; top: 316px; left: 275px; z-index: 36; border: solid red 2px;" value="? ? ?" readonly="readonly" id="INPUT34" />
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<input class="mono" tabindex="4" type="text" id="INPUT57" style="position: absolute; top: 246px; left: 345px; width: 36px; z-index: 60; background: none; visibility: hidden;" value="{INPUT[13]/@VALUE}" readonly="readonly" />
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<input class="mono" tabindex="4" type="text" id="INPUT57" style="position: absolute; top: 246px; left: 345px; width: 36px; z-index: 60; background: none;" value="{INPUT[13]/@VALUE}" readonly="readonly" />
</xsl:if>
</form>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div id="INPUT1" style="border: solid red 2px; position: absolute; top: 207px; left: 45px; z-index: 1; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div id="INPUT1" style="border: solid red 2px; position: absolute; top: 207px; left: 45px; z-index: 1; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div id="INPUT2" style="border: solid red 2px; position: absolute; top: 207px; left: 174px; z-index: 2; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div id="INPUT2" style="border: solid red 2px; position: absolute; top: 207px; left: 174px; z-index: 2; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div id="INPUT3" style="border: solid red 2px; position: absolute; top: 207px; left: 303px; z-index: 3; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div id="INPUT3" style="border: solid red 2px; position: absolute; top: 207px; left: 303px; z-index: 3; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div id="INPUT4" style="border: solid red 2px; position: absolute; top: 331px; left: 105px; z-index: 4; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div id="INPUT4" style="border: solid red 2px; position: absolute; top: 331px; left: 105px; z-index: 4; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div id="INPUT5" style="border: solid red 2px; position: absolute; top: 331px; left: 251px; z-index: 5; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div id="INPUT5" style="border: solid red 2px; position: absolute; top: 331px; left: 251px; z-index: 5; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE = 0">
<div id="INPUT6" style="border: solid red 2px; position: absolute; top: 367px; left: 187px; z-index: 6; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div id="INPUT6" style="border: solid red 2px; position: absolute; top: 367px; left: 187px; z-index: 6; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<div style="position: absolute; top: 14px; left: 10px; z-index: 7; background-image: url(IMAGES/TECO-LOG.PNG); line-height: 31px; height: 31px; width: 150px;"></div>
<div style="position: absolute; top: 60px; left: 6px; z-index: 8; background-image: url(IMAGES/BAR_-_WI.PNG); line-height: 65px; height: 65px; width: 400px;"></div>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 31px; z-index: 9;height: 5px; width: 90px; border: none; background-color: #F0F0F0; visibility: hidden;" id="INPUT7"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 31px; z-index: 9;height: 5px; width: 90px; border: none; background-color: #F0F0F0;" id="INPUT7"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 121px; z-index: 10;height: 5px; width: 90px; border: none; background-color: #F0F0F0; visibility: hidden;" id="INPUT8"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 121px; z-index: 10;height: 5px; width: 90px; border: none; background-color: #F0F0F0;" id="INPUT8"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 211px; z-index: 11;height: 5px; width: 90px; border: none; background-color: #F0F0F0; visibility: hidden;" id="INPUT9"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 211px; z-index: 11;height: 5px; width: 90px; border: none; background-color: #F0F0F0;" id="INPUT9"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 50px; z-index: 12; color: #646464; font-weight: bold; visibility: hidden;" id="INPUT10">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 50px; z-index: 12; color: #646464; font-weight: bold;" id="INPUT10">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 134px; z-index: 13; color: #646464; font-weight: bold; visibility: hidden;" id="INPUT11">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 134px; z-index: 13; color: #646464; font-weight: bold;" id="INPUT11">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 220px; z-index: 14; color: #646464; font-weight: bold; visibility: hidden;" id="INPUT12">CURTAINS</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 220px; z-index: 14; color: #646464; font-weight: bold;" id="INPUT12">CURTAINS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 50px; z-index: 15; color: #6200EE; font-weight: bold; visibility: hidden;" id="INPUT13">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 50px; z-index: 15; color: #6200EE; font-weight: bold;" id="INPUT13">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 134px; z-index: 16; color: #6200EE; font-weight: bold; visibility: hidden;" id="INPUT14">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 134px; z-index: 16; color: #6200EE; font-weight: bold;" id="INPUT14">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 220px; z-index: 17; color: #6200EE; font-weight: bold; visibility: hidden;" id="INPUT15">CURTAINS</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 220px; z-index: 17; color: #6200EE; font-weight: bold;" id="INPUT15">CURTAINS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 31px; z-index: 18;height: 5px; width: 90px; border: none; background-color: #6200EE; visibility: hidden;" id="INPUT16"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 31px; z-index: 18;height: 5px; width: 90px; border: none; background-color: #6200EE;" id="INPUT16"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 121px; z-index: 19;height: 5px; width: 90px; border: none; background-color: #6200EE; visibility: hidden;" id="INPUT17"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 121px; z-index: 19;height: 5px; width: 90px; border: none; background-color: #6200EE;" id="INPUT17"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 211px; z-index: 20;height: 5px; width: 90px; border: none; background-color: #6200EE; visibility: hidden;" id="INPUT18"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 211px; z-index: 20;height: 5px; width: 90px; border: none; background-color: #6200EE;" id="INPUT18"></div>
</xsl:if>
<div onclick="PostXML19()" id="INPUT19" style="position: absolute; top: 75px; left: 30px; z-index: 21;cursor:pointer;height:35px; width:90px; border: none; background: none;"></div>
<div onclick="PostXML20()" id="INPUT20" style="position: absolute; top: 75px; left: 121px; z-index: 22;cursor:pointer;height:35px; width:90px; border: none; background: none;"></div>
<div onclick="PostXML21()" id="INPUT21" style="position: absolute; top: 75px; left: 211px; z-index: 23;cursor:pointer;height:35px; width:90px; border: none; background: none;"></div>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div id="INPUT22" style="border: solid red 2px; position: absolute; top: 211px; left: 63px; z-index: 24; background-image: url(IMAGES/WINDOW9.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div id="INPUT22" style="border: solid red 2px; position: absolute; top: 211px; left: 63px; z-index: 24; background-image: url(IMAGES/WINDOW9.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 317px; left: 129px; z-index: 26; font-size: 15px; color: #272727; visibility: hidden;" id="INPUT24">%</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 317px; left: 129px; z-index: 26; font-size: 15px; color: #272727;" id="INPUT24">%</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div id="INPUT25" style="border: solid red 2px; position: absolute; top: 347px; left: 115px; z-index: 27; background-image: url(IMAGES/BTN_BL_5.PNG); line-height: 51px; height: 51px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div id="INPUT25" style="border: solid red 2px; position: absolute; top: 347px; left: 115px; z-index: 27; background-image: url(IMAGES/BTN_BL_5.PNG); line-height: 51px; height: 51px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div id="INPUT26" style="border: solid red 2px; position: absolute; top: 347px; left: 64px; z-index: 28; background-image: url(IMAGES/BTN_BL_7.PNG); line-height: 51px; height: 51px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div id="INPUT26" style="border: solid red 2px; position: absolute; top: 347px; left: 64px; z-index: 28; background-image: url(IMAGES/BTN_BL_7.PNG); line-height: 51px; height: 51px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 301px; z-index: 29;height: 5px; width: 90px; border: none; background-color: #F0F0F0; visibility: hidden;" id="INPUT27"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 301px; z-index: 29;height: 5px; width: 90px; border: none; background-color: #F0F0F0;" id="INPUT27"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 336px; z-index: 30; color: #646464; font-weight: bold; visibility: hidden;" id="INPUT28">AC</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 336px; z-index: 30; color: #646464; font-weight: bold;" id="INPUT28">AC</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 336px; z-index: 31; color: #6200EE; font-weight: bold; visibility: hidden;" id="INPUT29">AC</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 336px; z-index: 31; color: #6200EE; font-weight: bold;" id="INPUT29">AC</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 301px; z-index: 32;height: 5px; width: 90px; border: none; background-color: #6200EE; visibility: hidden;" id="INPUT30"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 301px; z-index: 32;height: 5px; width: 90px; border: none; background-color: #6200EE;" id="INPUT30"></div>
</xsl:if>
<div onclick="PostXML31()" id="INPUT31" style="position: absolute; top: 75px; left: 301px; z-index: 33;cursor:pointer;height:35px; width:90px; border: none; background: none;"></div>
<xsl:if test="INPUT[5]/@VALUE = 0">
<div id="INPUT32" style="position: absolute; top: 640px; left: 244px; z-index: 34; background-image: url(IMAGES/MOTION_S.PNG); line-height: 78px; height: 78px; width: 63px;"></div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE != 0">
<div id="INPUT32" style="position: absolute; top: 640px; left: 244px; z-index: 34; background-image: url(IMAGES/MOTION_S.GIF); line-height: 78px; height: 78px; width: 63px;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div id="INPUT33" style="border: solid red 2px; position: absolute; top: 211px; left: 243px; z-index: 35; background-image: url(IMAGES/WINDOW9.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div id="INPUT33" style="border: solid red 2px; position: absolute; top: 211px; left: 243px; z-index: 35; background-image: url(IMAGES/WINDOW9.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div style="position: absolute; top: 317px; left: 309px; z-index: 37; font-size: 15px; color: #272727; visibility: hidden;" id="INPUT35">%</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div style="position: absolute; top: 317px; left: 309px; z-index: 37; font-size: 15px; color: #272727;" id="INPUT35">%</div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div id="INPUT36" style="border: solid red 2px; position: absolute; top: 347px; left: 295px; z-index: 38; background-image: url(IMAGES/BTN_BL_5.PNG); line-height: 51px; height: 51px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div id="INPUT36" style="border: solid red 2px; position: absolute; top: 347px; left: 295px; z-index: 38; background-image: url(IMAGES/BTN_BL_5.PNG); line-height: 51px; height: 51px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div id="INPUT37" style="border: solid red 2px; position: absolute; top: 347px; left: 244px; z-index: 39; background-image: url(IMAGES/BTN_BL_7.PNG); line-height: 51px; height: 51px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div id="INPUT37" style="border: solid red 2px; position: absolute; top: 347px; left: 244px; z-index: 39; background-image: url(IMAGES/BTN_BL_7.PNG); line-height: 51px; height: 51px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE = 0">
<div id="INPUT38" style="position: absolute; top: 640px; left: 94px; z-index: 40; background-image: url(IMAGES/MOTION_S.PNG); line-height: 78px; height: 78px; width: 63px;"></div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div id="INPUT38" style="position: absolute; top: 640px; left: 94px; z-index: 40; background-image: url(IMAGES/MOTION_S.GIF); line-height: 78px; height: 78px; width: 63px;"></div>
</xsl:if>
<div style="position: absolute; top: 170px; left: 6px; z-index: 41; background-image: url(IMAGES/CONSOLE.PNG); line-height: 450px; height: 450px; width: 400px;"></div>
<xsl:if test="INPUT[4]/@VALUE = 0">
<form style="position: absolute; top: 186px; left: 20px; z-index: 42;">
<xsl:if test="INPUT[7]/@VALUE = 0">
<input id="INPUT39h" type="hidden" name="{INPUT[7]/@NAME}" value="1" />
<div id="INPUT39" class="imgsub" onclick="PostXML39()" style="background-image: url(IMAGES/OFF.PNG); line-height: 31px; height: 31px; width: 65px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<input id="INPUT39h" type="hidden" name="{INPUT[7]/@NAME}" value="0" />
<div id="INPUT39" class="imgsub" onclick="PostXML39()" style="background-image: url(IMAGES/ON.PNG); line-height: 31px; height: 31px; width: 65px; display: none;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<form style="position: absolute; top: 186px; left: 20px; z-index: 42;">
<xsl:if test="INPUT[7]/@VALUE = 0">
<input id="INPUT39h" type="hidden" name="{INPUT[7]/@NAME}" value="1" />
<div id="INPUT39" class="imgsub" onclick="PostXML39()" style="background-image: url(IMAGES/OFF.PNG); line-height: 31px; height: 31px; width: 65px;"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<input id="INPUT39h" type="hidden" name="{INPUT[7]/@NAME}" value="0" />
<div id="INPUT39" class="imgsub" onclick="PostXML39()" style="background-image: url(IMAGES/ON.PNG); line-height: 31px; height: 31px; width: 65px;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[8]/@VALUE = 0">
<div id="INPUT40" style="position: absolute; top: 341px; left: 25px; z-index: 43; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[8]/@VALUE = 1">
<div id="INPUT40" style="position: absolute; top: 341px; left: 25px; z-index: 43; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[8]/@VALUE = 2">
<div id="INPUT40" style="position: absolute; top: 341px; left: 25px; z-index: 43; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[8]/@VALUE = 3">
<div id="INPUT40" style="position: absolute; top: 341px; left: 25px; z-index: 43; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT40" style="position: absolute; top: 341px; left: 25px; z-index: 43; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[8]/@VALUE = 0">
<div id="INPUT40" style="position: absolute; top: 341px; left: 25px; z-index: 43; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[8]/@VALUE = 1">
<div id="INPUT40" style="position: absolute; top: 341px; left: 25px; z-index: 43; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[8]/@VALUE = 2">
<div id="INPUT40" style="position: absolute; top: 341px; left: 25px; z-index: 43; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[8]/@VALUE = 3">
<div id="INPUT40" style="position: absolute; top: 341px; left: 25px; z-index: 43; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT40" style="position: absolute; top: 341px; left: 25px; z-index: 43; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[8]/@VALUE = 0">
<div id="INPUT41" style="position: absolute; top: 341px; left: 77px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[8]/@VALUE = 1">
<div id="INPUT41" style="position: absolute; top: 341px; left: 77px; z-index: 44; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[8]/@VALUE = 2">
<div id="INPUT41" style="position: absolute; top: 341px; left: 77px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[8]/@VALUE = 3">
<div id="INPUT41" style="position: absolute; top: 341px; left: 77px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT41" style="position: absolute; top: 341px; left: 77px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[8]/@VALUE = 0">
<div id="INPUT41" style="position: absolute; top: 341px; left: 77px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[8]/@VALUE = 1">
<div id="INPUT41" style="position: absolute; top: 341px; left: 77px; z-index: 44; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[8]/@VALUE = 2">
<div id="INPUT41" style="position: absolute; top: 341px; left: 77px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[8]/@VALUE = 3">
<div id="INPUT41" style="position: absolute; top: 341px; left: 77px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT41" style="position: absolute; top: 341px; left: 77px; z-index: 44; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[8]/@VALUE = 0">
<div id="INPUT42" style="position: absolute; top: 341px; left: 128px; z-index: 45; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[8]/@VALUE = 1">
<div id="INPUT42" style="position: absolute; top: 341px; left: 128px; z-index: 45; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[8]/@VALUE = 2">
<div id="INPUT42" style="position: absolute; top: 341px; left: 128px; z-index: 45; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[8]/@VALUE = 3">
<div id="INPUT42" style="position: absolute; top: 341px; left: 128px; z-index: 45; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT42" style="position: absolute; top: 341px; left: 128px; z-index: 45; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[8]/@VALUE = 0">
<div id="INPUT42" style="position: absolute; top: 341px; left: 128px; z-index: 45; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[8]/@VALUE = 1">
<div id="INPUT42" style="position: absolute; top: 341px; left: 128px; z-index: 45; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[8]/@VALUE = 2">
<div id="INPUT42" style="position: absolute; top: 341px; left: 128px; z-index: 45; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[8]/@VALUE = 3">
<div id="INPUT42" style="position: absolute; top: 341px; left: 128px; z-index: 45; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT42" style="position: absolute; top: 341px; left: 128px; z-index: 45; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[8]/@VALUE = 0">
<div id="INPUT43" style="position: absolute; top: 341px; left: 180px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[8]/@VALUE = 1">
<div id="INPUT43" style="position: absolute; top: 341px; left: 180px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[8]/@VALUE = 2">
<div id="INPUT43" style="position: absolute; top: 341px; left: 180px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[8]/@VALUE = 3">
<div id="INPUT43" style="position: absolute; top: 341px; left: 180px; z-index: 46; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT43" style="position: absolute; top: 341px; left: 180px; z-index: 46; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[8]/@VALUE = 0">
<div id="INPUT43" style="position: absolute; top: 341px; left: 180px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[8]/@VALUE = 1">
<div id="INPUT43" style="position: absolute; top: 341px; left: 180px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[8]/@VALUE = 2">
<div id="INPUT43" style="position: absolute; top: 341px; left: 180px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[8]/@VALUE = 3">
<div id="INPUT43" style="position: absolute; top: 341px; left: 180px; z-index: 46; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT43" style="position: absolute; top: 341px; left: 180px; z-index: 46; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 381px; left: 25px; z-index: 47; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT44">Auto</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 381px; left: 25px; z-index: 47; color: #323232; font-weight: bold;" id="INPUT44">Auto</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 381px; left: 75px; z-index: 48; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT45">Low</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 381px; left: 75px; z-index: 48; color: #323232; font-weight: bold;" id="INPUT45">Low</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 381px; left: 125px; z-index: 49; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT46">Med</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 381px; left: 125px; z-index: 49; color: #323232; font-weight: bold;" id="INPUT46">Med</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 381px; left: 180px; z-index: 50; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT47">High</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 381px; left: 180px; z-index: 50; color: #323232; font-weight: bold;" id="INPUT47">High</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div onclick="PostXML48()" id="INPUT48" style="position: absolute; top: 342px; left: 26px; z-index: 51;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div onclick="PostXML48()" id="INPUT48" style="position: absolute; top: 342px; left: 26px; z-index: 51;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div onclick="PostXML49()" id="INPUT49" style="position: absolute; top: 342px; left: 76px; z-index: 52;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div onclick="PostXML49()" id="INPUT49" style="position: absolute; top: 342px; left: 76px; z-index: 52;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div onclick="PostXML50()" id="INPUT50" style="position: absolute; top: 342px; left: 128px; z-index: 53;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div onclick="PostXML50()" id="INPUT50" style="position: absolute; top: 342px; left: 128px; z-index: 53;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div onclick="PostXML51()" id="INPUT51" style="position: absolute; top: 342px; left: 181px; z-index: 54;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div onclick="PostXML51()" id="INPUT51" style="position: absolute; top: 342px; left: 181px; z-index: 54;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[9]/@VALUE = 0">
<div id="INPUT52" style="position: absolute; top: 306px; left: 270px; z-index: 55; background-image: url(IMAGES/FAN_OFF.PNG); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[9]/@VALUE = 1">
<div id="INPUT52" style="position: absolute; top: 306px; left: 270px; z-index: 55; background-image: url(IMAGES/80.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[9]/@VALUE = 2">
<div id="INPUT52" style="position: absolute; top: 306px; left: 270px; z-index: 55; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[9]/@VALUE = 3">
<div id="INPUT52" style="position: absolute; top: 306px; left: 270px; z-index: 55; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[9]/@VALUE = 4">
<div id="INPUT52" style="position: absolute; top: 306px; left: 270px; z-index: 55; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT52" style="position: absolute; top: 306px; left: 270px; z-index: 55; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[9]/@VALUE = 0">
<div id="INPUT52" style="position: absolute; top: 306px; left: 270px; z-index: 55; background-image: url(IMAGES/FAN_OFF.PNG); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[9]/@VALUE = 1">
<div id="INPUT52" style="position: absolute; top: 306px; left: 270px; z-index: 55; background-image: url(IMAGES/80.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[9]/@VALUE = 2">
<div id="INPUT52" style="position: absolute; top: 306px; left: 270px; z-index: 55; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[9]/@VALUE = 3">
<div id="INPUT52" style="position: absolute; top: 306px; left: 270px; z-index: 55; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[9]/@VALUE = 4">
<div id="INPUT52" style="position: absolute; top: 306px; left: 270px; z-index: 55; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT52" style="position: absolute; top: 306px; left: 270px; z-index: 55; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<form style="position: absolute; top: 286px; left: 20px; z-index: 56;">
<xsl:if test="INPUT[10]/@VALUE = 0">
<input id="INPUT53h" type="hidden" name="{INPUT[10]/@NAME}" value="1" />
<div id="INPUT53" class="imgsub" onclick="PostXML53()" style="background-image: url(IMAGES/AIR-CON1.PNG); line-height: 45px; height: 45px; width: 45px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<input id="INPUT53h" type="hidden" name="{INPUT[10]/@NAME}" value="0" />
<div id="INPUT53" class="imgsub" onclick="PostXML53()" style="background-image: url(IMAGES/VENTILA1.PNG); line-height: 45px; height: 45px; width: 45px; display: none;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<form style="position: absolute; top: 286px; left: 20px; z-index: 56;">
<xsl:if test="INPUT[10]/@VALUE = 0">
<input id="INPUT53h" type="hidden" name="{INPUT[10]/@NAME}" value="1" />
<div id="INPUT53" class="imgsub" onclick="PostXML53()" style="background-image: url(IMAGES/AIR-CON1.PNG); line-height: 45px; height: 45px; width: 45px;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<input id="INPUT53h" type="hidden" name="{INPUT[10]/@NAME}" value="0" />
<div id="INPUT53" class="imgsub" onclick="PostXML53()" style="background-image: url(IMAGES/VENTILA1.PNG); line-height: 45px; height: 45px; width: 45px;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<form action="javascript:PostXML54()" style="position: absolute; top: 246px; left: 100px; z-index: 57; font-size: 13px;">
<input id="INPUT54" onfocus="document.getElementById('INPUT54x').style.visibility='visible';SetInputEdited(54, event);" onblur="InputFocused[53]=0" onkeydown="SetInputEdited(54, event);" class="mono" tabindex="3" type="text" style="width: 36px; color: #3C3C3C; background: none; display: none;" name="{INPUT[11]/@NAME}" value="{INPUT[11]/@VALUE}" />
<input type="submit" id="INPUT54x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<form action="javascript:PostXML54()" style="position: absolute; top: 246px; left: 100px; z-index: 57; font-size: 13px;">
<input id="INPUT54" onfocus="document.getElementById('INPUT54x').style.visibility='visible';SetInputEdited(54, event);" onblur="InputFocused[53]=0" onkeydown="SetInputEdited(54, event);" class="mono" tabindex="3" type="text" style="width: 36px; color: #3C3C3C; background: none;" name="{INPUT[11]/@NAME}" value="{INPUT[11]/@VALUE}" />
<input type="submit" id="INPUT54x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<form style="position: absolute; top: 175px; left: 325px; z-index: 58;">
<xsl:if test="INPUT[12]/@VALUE = 0">
<input id="INPUT55h" type="hidden" name="{INPUT[12]/@NAME}" value="1" />
<div id="INPUT55" class="imgsub" onclick="PostXML55()" style="background-image: url(IMAGES/CONTROL-.PNG); line-height: 40px; height: 40px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<input id="INPUT55h" type="hidden" name="{INPUT[12]/@NAME}" value="0" />
<div id="INPUT55" class="imgsub" onclick="PostXML55()" style="background-image: url(IMAGES/CONTROL1.PNG); line-height: 40px; height: 40px; width: 50px; display: none;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<form style="position: absolute; top: 175px; left: 325px; z-index: 58;">
<xsl:if test="INPUT[12]/@VALUE = 0">
<input id="INPUT55h" type="hidden" name="{INPUT[12]/@NAME}" value="1" />
<div id="INPUT55" class="imgsub" onclick="PostXML55()" style="background-image: url(IMAGES/CONTROL-.PNG); line-height: 40px; height: 40px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<input id="INPUT55h" type="hidden" name="{INPUT[12]/@NAME}" value="0" />
<div id="INPUT55" class="imgsub" onclick="PostXML55()" style="background-image: url(IMAGES/CONTROL1.PNG); line-height: 40px; height: 40px; width: 50px;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 249px; left: 20px; z-index: 59; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT56">Set Temp</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 249px; left: 20px; z-index: 59; color: #323232; font-weight: bold;" id="INPUT56">Set Temp</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 249px; left: 275px; z-index: 61; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT58">Room</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 249px; left: 275px; z-index: 61; color: #323232; font-weight: bold;" id="INPUT58">Room</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<div style="position: absolute; top: 231px; left: 325px; z-index: 62; background-image: url(IMAGES/THERMOME.PNG); line-height: 40px; height: 40px; width: 14px; visibility: hidden;" id="INPUT59"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div style="position: absolute; top: 231px; left: 325px; z-index: 62; background-image: url(IMAGES/THERMOME.PNG); line-height: 40px; height: 40px; width: 14px;" id="INPUT59"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<div style="position: absolute; top: 193px; left: 274px; z-index: 63; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT60">Valve</div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div style="position: absolute; top: 193px; left: 274px; z-index: 63; color: #323232; font-weight: bold;" id="INPUT60">Valve</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 250px; left: 167px; z-index: 64; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT61">C</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 250px; left: 167px; z-index: 64; color: #323232; font-weight: bold;" id="INPUT61">C</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div style="position: absolute; top: 249px; left: 390px; z-index: 65; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT62">C</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div style="position: absolute; top: 249px; left: 390px; z-index: 65; color: #323232; font-weight: bold;" id="INPUT62">C</div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<xsl:if test="INPUT[10]/@VALUE = 0">
<div id="INPUT63" style="position: absolute; top: 277px; left: 66px; z-index: 66; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold; display: none;">Cooling</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div id="INPUT63" style="position: absolute; top: 277px; left: 66px; z-index: 66; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold; display: none;">Fan only</div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<xsl:if test="INPUT[10]/@VALUE = 0">
<div id="INPUT63" style="position: absolute; top: 277px; left: 66px; z-index: 66; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold;">Cooling</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div id="INPUT63" style="position: absolute; top: 277px; left: 66px; z-index: 66; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold;">Fan only</div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[15]/@VALUE = 0">
<div id="INPUT64" style="position: absolute; top: 217px; left: 40px; z-index: 67; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[15]/@VALUE != 0">
<div id="INPUT64" style="position: absolute; top: 217px; left: 40px; z-index: 67; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[15]/@VALUE = 0">
<div id="INPUT64" style="position: absolute; top: 217px; left: 40px; z-index: 67; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[15]/@VALUE != 0">
<div id="INPUT64" style="position: absolute; top: 217px; left: 40px; z-index: 67; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[16]/@VALUE = 0">
<div id="INPUT65" style="position: absolute; top: 217px; left: 169px; z-index: 68; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[16]/@VALUE != 0">
<div id="INPUT65" style="position: absolute; top: 217px; left: 169px; z-index: 68; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[16]/@VALUE = 0">
<div id="INPUT65" style="position: absolute; top: 217px; left: 169px; z-index: 68; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[16]/@VALUE != 0">
<div id="INPUT65" style="position: absolute; top: 217px; left: 169px; z-index: 68; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[17]/@VALUE = 0">
<div id="INPUT66" style="position: absolute; top: 217px; left: 298px; z-index: 69; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE != 0">
<div id="INPUT66" style="position: absolute; top: 217px; left: 298px; z-index: 69; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[17]/@VALUE = 0">
<div id="INPUT66" style="position: absolute; top: 217px; left: 298px; z-index: 69; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE != 0">
<div id="INPUT66" style="position: absolute; top: 217px; left: 298px; z-index: 69; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[18]/@VALUE = 0">
<div id="INPUT67" style="position: absolute; top: 341px; left: 39px; z-index: 70; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[18]/@VALUE != 0">
<div id="INPUT67" style="position: absolute; top: 341px; left: 39px; z-index: 70; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[18]/@VALUE = 0">
<div id="INPUT67" style="position: absolute; top: 341px; left: 39px; z-index: 70; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[18]/@VALUE != 0">
<div id="INPUT67" style="position: absolute; top: 341px; left: 39px; z-index: 70; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[19]/@VALUE = 0">
<div id="INPUT68" style="position: absolute; top: 341px; left: 169px; z-index: 71; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<div id="INPUT68" style="position: absolute; top: 341px; left: 169px; z-index: 71; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[19]/@VALUE = 0">
<div id="INPUT68" style="position: absolute; top: 341px; left: 169px; z-index: 71; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<div id="INPUT68" style="position: absolute; top: 341px; left: 169px; z-index: 71; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML69()" id="INPUT69" style="position: absolute; top: 208px; left: 168px; z-index: 72;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML69()" id="INPUT69" style="position: absolute; top: 208px; left: 168px; z-index: 72;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML70()" id="INPUT70" style="position: absolute; top: 208px; left: 39px; z-index: 73;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML70()" id="INPUT70" style="position: absolute; top: 208px; left: 39px; z-index: 73;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML71()" id="INPUT71" style="position: absolute; top: 208px; left: 298px; z-index: 74;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML71()" id="INPUT71" style="position: absolute; top: 208px; left: 298px; z-index: 74;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML72()" id="INPUT72" style="position: absolute; top: 340px; left: 39px; z-index: 75;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML72()" id="INPUT72" style="position: absolute; top: 340px; left: 39px; z-index: 75;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML73()" id="INPUT73" style="position: absolute; top: 340px; left: 169px; z-index: 76;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML73()" id="INPUT73" style="position: absolute; top: 340px; left: 169px; z-index: 76;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[20]/@VALUE = 0">
<div id="INPUT74" style="position: absolute; top: 341px; left: 294px; z-index: 77; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[20]/@VALUE != 0">
<div id="INPUT74" style="position: absolute; top: 341px; left: 294px; z-index: 77; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[20]/@VALUE = 0">
<div id="INPUT74" style="position: absolute; top: 341px; left: 294px; z-index: 77; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[20]/@VALUE != 0">
<div id="INPUT74" style="position: absolute; top: 341px; left: 294px; z-index: 77; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML75()" id="INPUT75" style="position: absolute; top: 340px; left: 294px; z-index: 78;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML75()" id="INPUT75" style="position: absolute; top: 340px; left: 294px; z-index: 78;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE = 0">
<xsl:if test="INPUT[21]/@VALUE = 0">
<div id="INPUT76" style="position: absolute; top: 375px; left: 185px; z-index: 79; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[21]/@VALUE != 0">
<div id="INPUT76" style="position: absolute; top: 375px; left: 185px; z-index: 79; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<xsl:if test="INPUT[21]/@VALUE = 0">
<div id="INPUT76" style="position: absolute; top: 375px; left: 185px; z-index: 79; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[21]/@VALUE != 0">
<div id="INPUT76" style="position: absolute; top: 375px; left: 185px; z-index: 79; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE = 0">
<div onclick="PostXML77()" id="INPUT77" style="position: absolute; top: 360px; left: 175px; z-index: 80;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div onclick="PostXML77()" id="INPUT77" style="position: absolute; top: 360px; left: 175px; z-index: 80;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<div style="position: absolute; top: 135px; left: 160px; z-index: 81; font-size: 20px; color: #323232; font-weight: bold;">ROOM3</div>
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
