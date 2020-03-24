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
<script src="ROOM4.JS?U=1584613339" language="JavaScript" charset="utf-8" />
<style type="text/css">.mono {font-family: Verdana, Arial, FreeSans, sans-serif;}</style>
</head>
<body onload="GetXML('ROOM4.XML'); FunWatchDog();" style="margin: 0px 0px 0px 0px">
<xsl:if test="1584613339 != ACCESS/@UCID">
<xsl:attribute name="onload">
null;
</xsl:attribute>
<div id="cachewarning" style="text-align: left;"></div>
<script src="REFCLR.JS" language="JavaScript" charset="utf-8"></script>
</xsl:if>
<xsl:if test="1584613339 = ACCESS/@UCID">
<table cellpadding="0" cellspacing="0">
<tr>
<!--menu-->
<!--plan-->
<td id="page" style="border-left: 1px solid black; border-top: 1px solid black;">
<div style="background-color:#969696;position: relative; width: 412px; height: 734px;">
<form action="javascript:PostGlobal();">
<xsl:if test="INPUT[9]/@VALUE = 0">
<input class="mono" tabindex="1" type="text" size="3" style="position: absolute; top: 403px; left: 190px; z-index: 26; border: solid red 2px; visibility: hidden;" value="? ? ?" readonly="readonly" id="INPUT23" />
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<input class="mono" tabindex="1" type="text" size="3" style="position: absolute; top: 403px; left: 190px; z-index: 26; border: solid red 2px;" value="? ? ?" readonly="readonly" id="INPUT23" />
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<input class="mono" tabindex="3" type="text" id="INPUT60" style="position: absolute; top: 250px; left: 346px; width: 32px; z-index: 63; background: none; visibility: hidden;" value="{INPUT[20]/@VALUE}" readonly="readonly" />
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<input class="mono" tabindex="3" type="text" id="INPUT60" style="position: absolute; top: 250px; left: 346px; width: 32px; z-index: 63; background: none;" value="{INPUT[20]/@VALUE}" readonly="readonly" />
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
<xsl:if test="INPUT[9]/@VALUE = 0">
<div id="INPUT22" style="border: solid red 2px; position: absolute; top: 298px; left: 158px; z-index: 25; background-image: url(IMAGES/WINDOW9.PNG); line-height: 100px; height: 100px; width: 100px; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div id="INPUT22" style="border: solid red 2px; position: absolute; top: 298px; left: 158px; z-index: 25; background-image: url(IMAGES/WINDOW9.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE = 0">
<div style="position: absolute; top: 404px; left: 224px; z-index: 27; font-size: 15px; color: #272727; visibility: hidden;" id="INPUT24">%</div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div style="position: absolute; top: 404px; left: 224px; z-index: 27; font-size: 15px; color: #272727;" id="INPUT24">%</div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE = 0">
<div id="INPUT25" style="border: solid red 2px; position: absolute; top: 434px; left: 210px; z-index: 28; background-image: url(IMAGES/BTN_BL_5.PNG); line-height: 51px; height: 51px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div id="INPUT25" style="border: solid red 2px; position: absolute; top: 434px; left: 210px; z-index: 28; background-image: url(IMAGES/BTN_BL_5.PNG); line-height: 51px; height: 51px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE = 0">
<div id="INPUT26" style="border: solid red 2px; position: absolute; top: 434px; left: 159px; z-index: 29; background-image: url(IMAGES/BTN_BL_7.PNG); line-height: 51px; height: 51px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div id="INPUT26" style="border: solid red 2px; position: absolute; top: 434px; left: 159px; z-index: 29; background-image: url(IMAGES/BTN_BL_7.PNG); line-height: 51px; height: 51px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 301px; z-index: 30;height: 5px; width: 90px; border: none; background-color: #F0F0F0; visibility: hidden;" id="INPUT27"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 301px; z-index: 30;height: 5px; width: 90px; border: none; background-color: #F0F0F0;" id="INPUT27"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 336px; z-index: 31; color: #646464; font-weight: bold; visibility: hidden;" id="INPUT28">AC</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 336px; z-index: 31; color: #646464; font-weight: bold;" id="INPUT28">AC</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 336px; z-index: 32; color: #6200EE; font-weight: bold; visibility: hidden;" id="INPUT29">AC</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 336px; z-index: 32; color: #6200EE; font-weight: bold;" id="INPUT29">AC</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 301px; z-index: 33;height: 5px; width: 90px; border: none; background-color: #6200EE; visibility: hidden;" id="INPUT30"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 301px; z-index: 33;height: 5px; width: 90px; border: none; background-color: #6200EE;" id="INPUT30"></div>
</xsl:if>
<div onclick="PostXML31()" id="INPUT31" style="position: absolute; top: 75px; left: 301px; z-index: 34;cursor:pointer;height:35px; width:90px; border: none; background: none;"></div>
<xsl:if test="INPUT[11]/@VALUE = 0">
<div id="INPUT32" style="position: absolute; top: 640px; left: 244px; z-index: 35; background-image: url(IMAGES/MOTION_S.PNG); line-height: 78px; height: 78px; width: 63px;"></div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<div id="INPUT32" style="position: absolute; top: 640px; left: 244px; z-index: 35; background-image: url(IMAGES/MOTION_S.GIF); line-height: 78px; height: 78px; width: 63px;"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<div id="INPUT33" style="position: absolute; top: 640px; left: 94px; z-index: 36; background-image: url(IMAGES/MOTION_S.PNG); line-height: 78px; height: 78px; width: 63px;"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div id="INPUT33" style="position: absolute; top: 640px; left: 94px; z-index: 36; background-image: url(IMAGES/MOTION_S.GIF); line-height: 78px; height: 78px; width: 63px;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[13]/@VALUE = 0">
<div id="INPUT34" style="position: absolute; top: 420px; left: 303px; z-index: 37; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div id="INPUT34" style="position: absolute; top: 420px; left: 303px; z-index: 37; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[13]/@VALUE = 0">
<div id="INPUT34" style="position: absolute; top: 420px; left: 303px; z-index: 37; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div id="INPUT34" style="position: absolute; top: 420px; left: 303px; z-index: 37; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML35()" id="INPUT35" style="position: absolute; top: 295px; left: 46px; z-index: 38;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML35()" id="INPUT35" style="position: absolute; top: 295px; left: 46px; z-index: 38;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML36()" id="INPUT36" style="position: absolute; top: 295px; left: 173px; z-index: 39;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML36()" id="INPUT36" style="position: absolute; top: 295px; left: 173px; z-index: 39;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML37()" id="INPUT37" style="position: absolute; top: 295px; left: 303px; z-index: 40;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML37()" id="INPUT37" style="position: absolute; top: 295px; left: 303px; z-index: 40;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML38()" id="INPUT38" style="position: absolute; top: 419px; left: 46px; z-index: 41;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML38()" id="INPUT38" style="position: absolute; top: 419px; left: 46px; z-index: 41;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML39()" id="INPUT39" style="position: absolute; top: 419px; left: 173px; z-index: 42;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML39()" id="INPUT39" style="position: absolute; top: 419px; left: 173px; z-index: 42;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML40()" id="INPUT40" style="position: absolute; top: 419px; left: 303px; z-index: 43;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML40()" id="INPUT40" style="position: absolute; top: 419px; left: 303px; z-index: 43;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE = 0">
<div onclick="PostXML41()" id="INPUT41" style="position: absolute; top: 360px; left: 175px; z-index: 44;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div onclick="PostXML41()" id="INPUT41" style="position: absolute; top: 360px; left: 175px; z-index: 44;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<form style="position: absolute; top: 190px; left: 21px; z-index: 45;">
<xsl:if test="INPUT[14]/@VALUE = 0">
<input id="INPUT42h" type="hidden" name="{INPUT[14]/@NAME}" value="1" />
<div id="INPUT42" class="imgsub" onclick="PostXML42()" style="background-image: url(IMAGES/OFF.PNG); line-height: 31px; height: 31px; width: 65px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<input id="INPUT42h" type="hidden" name="{INPUT[14]/@NAME}" value="0" />
<div id="INPUT42" class="imgsub" onclick="PostXML42()" style="background-image: url(IMAGES/ON.PNG); line-height: 31px; height: 31px; width: 65px; display: none;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<form style="position: absolute; top: 190px; left: 21px; z-index: 45;">
<xsl:if test="INPUT[14]/@VALUE = 0">
<input id="INPUT42h" type="hidden" name="{INPUT[14]/@NAME}" value="1" />
<div id="INPUT42" class="imgsub" onclick="PostXML42()" style="background-image: url(IMAGES/OFF.PNG); line-height: 31px; height: 31px; width: 65px;"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<input id="INPUT42h" type="hidden" name="{INPUT[14]/@NAME}" value="0" />
<div id="INPUT42" class="imgsub" onclick="PostXML42()" style="background-image: url(IMAGES/ON.PNG); line-height: 31px; height: 31px; width: 65px;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[15]/@VALUE = 0">
<div id="INPUT43" style="position: absolute; top: 345px; left: 26px; z-index: 46; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 1">
<div id="INPUT43" style="position: absolute; top: 345px; left: 26px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 2">
<div id="INPUT43" style="position: absolute; top: 345px; left: 26px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 3">
<div id="INPUT43" style="position: absolute; top: 345px; left: 26px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT43" style="position: absolute; top: 345px; left: 26px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[15]/@VALUE = 0">
<div id="INPUT43" style="position: absolute; top: 345px; left: 26px; z-index: 46; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 1">
<div id="INPUT43" style="position: absolute; top: 345px; left: 26px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 2">
<div id="INPUT43" style="position: absolute; top: 345px; left: 26px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 3">
<div id="INPUT43" style="position: absolute; top: 345px; left: 26px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT43" style="position: absolute; top: 345px; left: 26px; z-index: 46; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[15]/@VALUE = 0">
<div id="INPUT44" style="position: absolute; top: 345px; left: 78px; z-index: 47; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 1">
<div id="INPUT44" style="position: absolute; top: 345px; left: 78px; z-index: 47; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 2">
<div id="INPUT44" style="position: absolute; top: 345px; left: 78px; z-index: 47; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 3">
<div id="INPUT44" style="position: absolute; top: 345px; left: 78px; z-index: 47; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT44" style="position: absolute; top: 345px; left: 78px; z-index: 47; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[15]/@VALUE = 0">
<div id="INPUT44" style="position: absolute; top: 345px; left: 78px; z-index: 47; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 1">
<div id="INPUT44" style="position: absolute; top: 345px; left: 78px; z-index: 47; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 2">
<div id="INPUT44" style="position: absolute; top: 345px; left: 78px; z-index: 47; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 3">
<div id="INPUT44" style="position: absolute; top: 345px; left: 78px; z-index: 47; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT44" style="position: absolute; top: 345px; left: 78px; z-index: 47; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[15]/@VALUE = 0">
<div id="INPUT45" style="position: absolute; top: 345px; left: 129px; z-index: 48; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 1">
<div id="INPUT45" style="position: absolute; top: 345px; left: 129px; z-index: 48; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 2">
<div id="INPUT45" style="position: absolute; top: 345px; left: 129px; z-index: 48; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 3">
<div id="INPUT45" style="position: absolute; top: 345px; left: 129px; z-index: 48; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT45" style="position: absolute; top: 345px; left: 129px; z-index: 48; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[15]/@VALUE = 0">
<div id="INPUT45" style="position: absolute; top: 345px; left: 129px; z-index: 48; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 1">
<div id="INPUT45" style="position: absolute; top: 345px; left: 129px; z-index: 48; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 2">
<div id="INPUT45" style="position: absolute; top: 345px; left: 129px; z-index: 48; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 3">
<div id="INPUT45" style="position: absolute; top: 345px; left: 129px; z-index: 48; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT45" style="position: absolute; top: 345px; left: 129px; z-index: 48; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[15]/@VALUE = 0">
<div id="INPUT46" style="position: absolute; top: 345px; left: 181px; z-index: 49; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 1">
<div id="INPUT46" style="position: absolute; top: 345px; left: 181px; z-index: 49; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 2">
<div id="INPUT46" style="position: absolute; top: 345px; left: 181px; z-index: 49; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 3">
<div id="INPUT46" style="position: absolute; top: 345px; left: 181px; z-index: 49; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT46" style="position: absolute; top: 345px; left: 181px; z-index: 49; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[15]/@VALUE = 0">
<div id="INPUT46" style="position: absolute; top: 345px; left: 181px; z-index: 49; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 1">
<div id="INPUT46" style="position: absolute; top: 345px; left: 181px; z-index: 49; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 2">
<div id="INPUT46" style="position: absolute; top: 345px; left: 181px; z-index: 49; background-image: url(IMAGES/INDICAT1.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:when test="INPUT[15]/@VALUE = 3">
<div id="INPUT46" style="position: absolute; top: 345px; left: 181px; z-index: 49; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT46" style="position: absolute; top: 345px; left: 181px; z-index: 49; background-image: url(IMAGES/INDICATO.PNG); line-height: 30px; height: 30px; width: 30px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 385px; left: 26px; z-index: 50; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT47">Auto</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 385px; left: 26px; z-index: 50; color: #323232; font-weight: bold;" id="INPUT47">Auto</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 385px; left: 76px; z-index: 51; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT48">Low</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 385px; left: 76px; z-index: 51; color: #323232; font-weight: bold;" id="INPUT48">Low</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 385px; left: 126px; z-index: 52; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT49">Med</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 385px; left: 126px; z-index: 52; color: #323232; font-weight: bold;" id="INPUT49">Med</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 385px; left: 181px; z-index: 53; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT50">High</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 385px; left: 181px; z-index: 53; color: #323232; font-weight: bold;" id="INPUT50">High</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div onclick="PostXML51()" id="INPUT51" style="position: absolute; top: 346px; left: 27px; z-index: 54;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div onclick="PostXML51()" id="INPUT51" style="position: absolute; top: 346px; left: 27px; z-index: 54;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div onclick="PostXML52()" id="INPUT52" style="position: absolute; top: 346px; left: 77px; z-index: 55;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div onclick="PostXML52()" id="INPUT52" style="position: absolute; top: 346px; left: 77px; z-index: 55;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div onclick="PostXML53()" id="INPUT53" style="position: absolute; top: 346px; left: 129px; z-index: 56;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div onclick="PostXML53()" id="INPUT53" style="position: absolute; top: 346px; left: 129px; z-index: 56;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div onclick="PostXML54()" id="INPUT54" style="position: absolute; top: 346px; left: 182px; z-index: 57;cursor:pointer;height:30px; width:30px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div onclick="PostXML54()" id="INPUT54" style="position: absolute; top: 346px; left: 182px; z-index: 57;cursor:pointer;height:30px; width:30px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<xsl:choose>
<xsl:when test="INPUT[16]/@VALUE = 0">
<div id="INPUT55" style="position: absolute; top: 310px; left: 271px; z-index: 58; background-image: url(IMAGES/FAN_OFF.PNG); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 1">
<div id="INPUT55" style="position: absolute; top: 310px; left: 271px; z-index: 58; background-image: url(IMAGES/80.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 2">
<div id="INPUT55" style="position: absolute; top: 310px; left: 271px; z-index: 58; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 3">
<div id="INPUT55" style="position: absolute; top: 310px; left: 271px; z-index: 58; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 4">
<div id="INPUT55" style="position: absolute; top: 310px; left: 271px; z-index: 58; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT55" style="position: absolute; top: 310px; left: 271px; z-index: 58; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px; visibility: hidden; visibility: hidden;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<xsl:choose>
<xsl:when test="INPUT[16]/@VALUE = 0">
<div id="INPUT55" style="position: absolute; top: 310px; left: 271px; z-index: 58; background-image: url(IMAGES/FAN_OFF.PNG); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 1">
<div id="INPUT55" style="position: absolute; top: 310px; left: 271px; z-index: 58; background-image: url(IMAGES/80.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 2">
<div id="INPUT55" style="position: absolute; top: 310px; left: 271px; z-index: 58; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 3">
<div id="INPUT55" style="position: absolute; top: 310px; left: 271px; z-index: 58; background-image: url(IMAGES/50.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:when test="INPUT[16]/@VALUE = 4">
<div id="INPUT55" style="position: absolute; top: 310px; left: 271px; z-index: 58; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:when>
<xsl:otherwise>
<div id="INPUT55" style="position: absolute; top: 310px; left: 271px; z-index: 58; background-image: url(IMAGES/20.GIF); line-height: 114px; height: 114px; width: 112px;"></div>
</xsl:otherwise>
</xsl:choose>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<form style="position: absolute; top: 290px; left: 21px; z-index: 59;">
<xsl:if test="INPUT[17]/@VALUE = 0">
<input id="INPUT56h" type="hidden" name="{INPUT[17]/@NAME}" value="1" />
<div id="INPUT56" class="imgsub" onclick="PostXML56()" style="background-image: url(IMAGES/AIR-CON1.PNG); line-height: 45px; height: 45px; width: 45px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE != 0">
<input id="INPUT56h" type="hidden" name="{INPUT[17]/@NAME}" value="0" />
<div id="INPUT56" class="imgsub" onclick="PostXML56()" style="background-image: url(IMAGES/VENTILA1.PNG); line-height: 45px; height: 45px; width: 45px; display: none;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<form style="position: absolute; top: 290px; left: 21px; z-index: 59;">
<xsl:if test="INPUT[17]/@VALUE = 0">
<input id="INPUT56h" type="hidden" name="{INPUT[17]/@NAME}" value="1" />
<div id="INPUT56" class="imgsub" onclick="PostXML56()" style="background-image: url(IMAGES/AIR-CON1.PNG); line-height: 45px; height: 45px; width: 45px;"></div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE != 0">
<input id="INPUT56h" type="hidden" name="{INPUT[17]/@NAME}" value="0" />
<div id="INPUT56" class="imgsub" onclick="PostXML56()" style="background-image: url(IMAGES/VENTILA1.PNG); line-height: 45px; height: 45px; width: 45px;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<form action="javascript:PostXML57()" style="position: absolute; top: 250px; left: 101px; z-index: 60; font-size: 13px;">
<input id="INPUT57" onfocus="document.getElementById('INPUT57x').style.visibility='visible';SetInputEdited(57, event);" onblur="InputFocused[56]=0" onkeydown="SetInputEdited(57, event);" class="mono" tabindex="2" type="text" style="width: 32px; color: #3C3C3C; background: none; display: none;" name="{INPUT[18]/@NAME}" value="{INPUT[18]/@VALUE}" />
<input type="submit" id="INPUT57x" style="position: absolute; top: 0px; height: 19px; width: 19px; visibility: hidden;" value="&gt;" />
</form>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<form action="javascript:PostXML57()" style="position: absolute; top: 250px; left: 101px; z-index: 60; font-size: 13px;">
<input id="INPUT57" onfocus="document.getElementById('INPUT57x').style.visibility='visible';SetInputEdited(57, event);" onblur="InputFocused[56]=0" onkeydown="SetInputEdited(57, event);" class="mono" tabindex="2" type="text" style="width: 32px; color: #3C3C3C; background: none;" name="{INPUT[18]/@NAME}" value="{INPUT[18]/@VALUE}" />
<input type="submit" id="INPUT57x" style="position: absolute; top: 0px; height: 19px; width: 19px; visibility: hidden;" value="&gt;" />
</form>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<form style="position: absolute; top: 179px; left: 326px; z-index: 61;">
<xsl:if test="INPUT[19]/@VALUE = 0">
<input id="INPUT58h" type="hidden" name="{INPUT[19]/@NAME}" value="1" />
<div id="INPUT58" class="imgsub" onclick="PostXML58()" style="background-image: url(IMAGES/CONTROL-.PNG); line-height: 40px; height: 40px; width: 50px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<input id="INPUT58h" type="hidden" name="{INPUT[19]/@NAME}" value="0" />
<div id="INPUT58" class="imgsub" onclick="PostXML58()" style="background-image: url(IMAGES/CONTROL1.PNG); line-height: 40px; height: 40px; width: 50px; display: none;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<form style="position: absolute; top: 179px; left: 326px; z-index: 61;">
<xsl:if test="INPUT[19]/@VALUE = 0">
<input id="INPUT58h" type="hidden" name="{INPUT[19]/@NAME}" value="1" />
<div id="INPUT58" class="imgsub" onclick="PostXML58()" style="background-image: url(IMAGES/CONTROL-.PNG); line-height: 40px; height: 40px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<input id="INPUT58h" type="hidden" name="{INPUT[19]/@NAME}" value="0" />
<div id="INPUT58" class="imgsub" onclick="PostXML58()" style="background-image: url(IMAGES/CONTROL1.PNG); line-height: 40px; height: 40px; width: 50px;"></div>
</xsl:if>
</form>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 253px; left: 21px; z-index: 62; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT59">Set Temp</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 253px; left: 21px; z-index: 62; color: #323232; font-weight: bold;" id="INPUT59">Set Temp</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 253px; left: 276px; z-index: 64; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT61">Room</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 253px; left: 276px; z-index: 64; color: #323232; font-weight: bold;" id="INPUT61">Room</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 235px; left: 326px; z-index: 65; background-image: url(IMAGES/THERMOME.PNG); line-height: 40px; height: 40px; width: 14px; visibility: hidden;" id="INPUT62"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 235px; left: 326px; z-index: 65; background-image: url(IMAGES/THERMOME.PNG); line-height: 40px; height: 40px; width: 14px;" id="INPUT62"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 198px; left: 276px; z-index: 66; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT63">Valve</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 198px; left: 276px; z-index: 66; color: #323232; font-weight: bold;" id="INPUT63">Valve</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 254px; left: 168px; z-index: 67; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT64">C</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 254px; left: 168px; z-index: 67; color: #323232; font-weight: bold;" id="INPUT64">C</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div style="position: absolute; top: 253px; left: 391px; z-index: 68; color: #323232; font-weight: bold; visibility: hidden;" id="INPUT65">C</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div style="position: absolute; top: 253px; left: 391px; z-index: 68; color: #323232; font-weight: bold;" id="INPUT65">C</div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<xsl:if test="INPUT[17]/@VALUE = 0">
<div id="INPUT66" style="position: absolute; top: 281px; left: 67px; z-index: 69; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold; display: none;">Cooling</div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE != 0">
<div id="INPUT66" style="position: absolute; top: 281px; left: 67px; z-index: 69; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold; display: none;">Fan only</div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<xsl:if test="INPUT[17]/@VALUE = 0">
<div id="INPUT66" style="position: absolute; top: 281px; left: 67px; z-index: 69; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold;">Cooling</div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE != 0">
<div id="INPUT66" style="position: absolute; top: 281px; left: 67px; z-index: 69; background-image: url(IMAGES/TRANSPE2.PNG); line-height: 64px; height: 64px; width: 64px; color: #323232; font-weight: bold;">Fan only</div>
</xsl:if>
</xsl:if>
<a href="HOME.XML" class="ablock" style="position: absolute; top: 665px; left: 350px; z-index: 70; background-image: url(IMAGES/HOME1_50.PNG); line-height: 50px; height: 50px; width: 50px;"></a>
<div style="position: absolute; top: 135px; left: 160px; z-index: 71; font-size: 20px; color: #323232; font-weight: bold;">ROOM4</div>
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
