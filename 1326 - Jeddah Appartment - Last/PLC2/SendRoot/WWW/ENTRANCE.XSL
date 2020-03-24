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
Interance &amp; Bathroom</title>
<script src="ENTRANCE.JS?U=1584613346" language="JavaScript" charset="utf-8" />
<style type="text/css">.mono {font-family: Verdana, Arial, FreeSans, sans-serif;}</style>
</head>
<body onload="GetXML('ENTRANCE.XML'); FunWatchDog();" style="margin: 0px 0px 0px 0px">
<xsl:if test="1584613346 != ACCESS/@UCID">
<xsl:attribute name="onload">
null;
</xsl:attribute>
<div id="cachewarning" style="text-align: left;"></div>
<script src="REFCLR.JS" language="JavaScript" charset="utf-8"></script>
</xsl:if>
<xsl:if test="1584613346 = ACCESS/@UCID">
<table cellpadding="0" cellspacing="0">
<tr>
<!--menu-->
<!--plan-->
<td id="page" style="border-left: 1px solid black; border-top: 1px solid black;">
<div style="background-color:#969696;position: relative; width: 412px; height: 734px;">
<form action="javascript:PostGlobal();"></form>
<div style="position: absolute; top: 170px; left: 6px; z-index: 1; background-image: url(IMAGES/CONSOLE.PNG); line-height: 450px; height: 450px; width: 400px;"></div>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[2]/@VALUE = 0">
<div id="INPUT1" style="position: absolute; top: 247px; left: 59px; z-index: 2; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div id="INPUT1" style="position: absolute; top: 247px; left: 59px; z-index: 2; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[2]/@VALUE = 0">
<div id="INPUT1" style="position: absolute; top: 247px; left: 59px; z-index: 2; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div id="INPUT1" style="position: absolute; top: 247px; left: 59px; z-index: 2; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[3]/@VALUE = 0">
<div id="INPUT2" style="position: absolute; top: 247px; left: 172px; z-index: 3; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div id="INPUT2" style="position: absolute; top: 247px; left: 172px; z-index: 3; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[3]/@VALUE = 0">
<div id="INPUT2" style="position: absolute; top: 247px; left: 172px; z-index: 3; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div id="INPUT2" style="position: absolute; top: 247px; left: 172px; z-index: 3; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[4]/@VALUE = 0">
<div id="INPUT3" style="position: absolute; top: 247px; left: 284px; z-index: 4; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div id="INPUT3" style="position: absolute; top: 247px; left: 284px; z-index: 4; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[4]/@VALUE = 0">
<div id="INPUT3" style="position: absolute; top: 247px; left: 284px; z-index: 4; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div id="INPUT3" style="position: absolute; top: 247px; left: 284px; z-index: 4; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[5]/@VALUE = 0">
<div id="INPUT4" style="position: absolute; top: 371px; left: 59px; z-index: 5; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE != 0">
<div id="INPUT4" style="position: absolute; top: 371px; left: 59px; z-index: 5; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[5]/@VALUE = 0">
<div id="INPUT4" style="position: absolute; top: 371px; left: 59px; z-index: 5; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE != 0">
<div id="INPUT4" style="position: absolute; top: 371px; left: 59px; z-index: 5; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[6]/@VALUE = 0">
<div id="INPUT5" style="position: absolute; top: 371px; left: 172px; z-index: 6; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div id="INPUT5" style="position: absolute; top: 371px; left: 172px; z-index: 6; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[6]/@VALUE = 0">
<div id="INPUT5" style="position: absolute; top: 371px; left: 172px; z-index: 6; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div id="INPUT5" style="position: absolute; top: 371px; left: 172px; z-index: 6; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<xsl:if test="INPUT[7]/@VALUE = 0">
<div id="INPUT6" style="position: absolute; top: 371px; left: 284px; z-index: 7; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div id="INPUT6" style="position: absolute; top: 371px; left: 284px; z-index: 7; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<xsl:if test="INPUT[7]/@VALUE = 0">
<div id="INPUT6" style="position: absolute; top: 371px; left: 284px; z-index: 7; background-image: url(IMAGES/IDEA_4_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div id="INPUT6" style="position: absolute; top: 371px; left: 284px; z-index: 7; background-image: url(IMAGES/IDEA_3_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE = 0">
<xsl:if test="INPUT[9]/@VALUE = 0">
<div id="INPUT7" style="position: absolute; top: 375px; left: 185px; z-index: 8; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div id="INPUT7" style="position: absolute; top: 375px; left: 185px; z-index: 8; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px; display: none;"></div>
</xsl:if>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<xsl:if test="INPUT[9]/@VALUE = 0">
<div id="INPUT7" style="position: absolute; top: 375px; left: 185px; z-index: 8; background-image: url(IMAGES/PLUG_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div id="INPUT7" style="position: absolute; top: 375px; left: 185px; z-index: 8; background-image: url(IMAGES/PLUG_G_S.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
</xsl:if>
<div style="position: absolute; top: 14px; left: 10px; z-index: 9; background-image: url(IMAGES/TECO-LOG.PNG); line-height: 31px; height: 31px; width: 150px;"></div>
<div style="position: absolute; top: 60px; left: 6px; z-index: 10; background-image: url(IMAGES/BAR_-_WI.PNG); line-height: 65px; height: 65px; width: 400px;"></div>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 106px; z-index: 11;height: 5px; width: 90px; border: none; background-color: #F0F0F0; visibility: hidden;" id="INPUT8"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 106px; z-index: 11;height: 5px; width: 90px; border: none; background-color: #F0F0F0;" id="INPUT8"></div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 196px; z-index: 12;height: 5px; width: 90px; border: none; background-color: #F0F0F0; visibility: hidden;" id="INPUT9"></div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 196px; z-index: 12;height: 5px; width: 90px; border: none; background-color: #F0F0F0;" id="INPUT9"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 125px; z-index: 13; color: #646464; font-weight: bold; visibility: hidden;" id="INPUT10">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 125px; z-index: 13; color: #646464; font-weight: bold;" id="INPUT10">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 209px; z-index: 14; color: #646464; font-weight: bold; visibility: hidden;" id="INPUT11">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 209px; z-index: 14; color: #646464; font-weight: bold;" id="INPUT11">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 125px; z-index: 15; color: #6200EE; font-weight: bold; visibility: hidden;" id="INPUT12">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 125px; z-index: 15; color: #6200EE; font-weight: bold;" id="INPUT12">LIGHTS</div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE = 0">
<div style="position: absolute; top: 80px; left: 209px; z-index: 16; color: #6200EE; font-weight: bold; visibility: hidden;" id="INPUT13">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<div style="position: absolute; top: 80px; left: 209px; z-index: 16; color: #6200EE; font-weight: bold;" id="INPUT13">SOCKETS</div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 106px; z-index: 17;height: 5px; width: 90px; border: none; background-color: #6200EE; visibility: hidden;" id="INPUT14"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 106px; z-index: 17;height: 5px; width: 90px; border: none; background-color: #6200EE;" id="INPUT14"></div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE = 0">
<div style="position: absolute; top: 105px; left: 196px; z-index: 18;height: 5px; width: 90px; border: none; background-color: #6200EE; visibility: hidden;" id="INPUT15"></div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<div style="position: absolute; top: 105px; left: 196px; z-index: 18;height: 5px; width: 90px; border: none; background-color: #6200EE;" id="INPUT15"></div>
</xsl:if>
<div onclick="PostXML16()" id="INPUT16" style="position: absolute; top: 75px; left: 105px; z-index: 19;cursor:pointer;height:35px; width:90px; border: none; background: none;"></div>
<div onclick="PostXML17()" id="INPUT17" style="position: absolute; top: 75px; left: 196px; z-index: 20;cursor:pointer;height:35px; width:90px; border: none; background: none;"></div>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div id="INPUT18" style="position: absolute; top: 640px; left: 174px; z-index: 21; background-image: url(IMAGES/MOTION_S.PNG); line-height: 78px; height: 78px; width: 63px;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div id="INPUT18" style="position: absolute; top: 640px; left: 174px; z-index: 21; background-image: url(IMAGES/MOTION_S.GIF); line-height: 78px; height: 78px; width: 63px;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML19()" id="INPUT19" style="position: absolute; top: 245px; left: 58px; z-index: 22;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML19()" id="INPUT19" style="position: absolute; top: 245px; left: 58px; z-index: 22;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML20()" id="INPUT20" style="position: absolute; top: 245px; left: 173px; z-index: 23;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML20()" id="INPUT20" style="position: absolute; top: 245px; left: 173px; z-index: 23;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML21()" id="INPUT21" style="position: absolute; top: 245px; left: 283px; z-index: 24;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML21()" id="INPUT21" style="position: absolute; top: 245px; left: 283px; z-index: 24;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML22()" id="INPUT22" style="position: absolute; top: 370px; left: 58px; z-index: 25;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML22()" id="INPUT22" style="position: absolute; top: 370px; left: 58px; z-index: 25;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML23()" id="INPUT23" style="position: absolute; top: 370px; left: 173px; z-index: 26;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML23()" id="INPUT23" style="position: absolute; top: 370px; left: 173px; z-index: 26;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div onclick="PostXML24()" id="INPUT24" style="position: absolute; top: 370px; left: 283px; z-index: 27;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div onclick="PostXML24()" id="INPUT24" style="position: absolute; top: 370px; left: 283px; z-index: 27;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE = 0">
<div onclick="PostXML25()" id="INPUT25" style="position: absolute; top: 360px; left: 175px; z-index: 28;cursor:pointer;height:70px; width:65px; border: none; background: none; visibility: hidden;"></div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<div onclick="PostXML25()" id="INPUT25" style="position: absolute; top: 360px; left: 175px; z-index: 28;cursor:pointer;height:70px; width:65px; border: none; background: none;"></div>
</xsl:if>
<a href="HOME.XML" class="ablock" style="position: absolute; top: 665px; left: 350px; z-index: 29; background-image: url(IMAGES/HOME1_50.PNG); line-height: 50px; height: 50px; width: 50px;"></a>
<div style="position: absolute; top: 135px; left: 85px; z-index: 30; font-size: 20px; color: #323232; font-weight: bold;">INTERANCE &amp; BATH</div>
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
