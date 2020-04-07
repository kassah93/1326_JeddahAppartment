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
Index</title>
<script src="PAGE1.JS?U=1586265660" language="JavaScript" charset="utf-8" />
<style type="text/css">.mono {font-family: Verdana, Arial, FreeSans, sans-serif;}</style>
</head>
<body onload="GetXML('PAGE1.XML'); FunWatchDog();">
<xsl:if test="1586265660 != ACCESS/@UCID">
<xsl:attribute name="onload">
null;
</xsl:attribute>
<div id="cachewarning" style="text-align: left;"></div>
<script src="REFCLR.JS" language="JavaScript" charset="utf-8"></script>
</xsl:if>
<xsl:if test="1586265660 = ACCESS/@UCID">
<table cellpadding="0" cellspacing="0">
<tr style="height: 40px;">
<!--logo-->
<td id="top_left">
<div id="top_left_div" style="width: 150px;"></div>
&#160;</td>
<!--title-->
<td id="top">
<span id="title">
<xsl:value-of select="/PAGE/@TITLE" />
Index</span>
</td>
</tr>
<tr>
<!--menu-->
<td id="menu">
<div class="pages">
<a href="PAGE1.XML">Index</a>
<br />
</div>
<br />
<div class="pages">
<a href="logout.xml">Logout</a>
</div>
</td>
<!--plan-->
<td id="page">
<div style="background-color:#FFFFFF;position: relative; width: 800px; height: 500px;">
<form action="javascript:PostGlobal();"></form>
<div onclick="PostXML1()" id="INPUT1" style="position: absolute; top: 120px; left: 30px; z-index: 1;cursor:pointer;height:62px; width:62px; border: 1px solid #000000; background-color: #F0F0F0;"></div>
<div style="position: absolute; top: 195px; left: 55px; z-index: 2;">UP</div>
<div onclick="PostXML2()" id="INPUT2" style="position: absolute; top: 120px; left: 120px; z-index: 3;cursor:pointer;height:62px; width:62px; border: 1px solid #000000; background-color: #F0F0F0;"></div>
<div style="position: absolute; top: 195px; left: 130px; z-index: 4;">DOWN</div>
<div onclick="PostXML3()" id="INPUT3" style="position: absolute; top: 225px; left: 75px; z-index: 5;cursor:pointer;height:62px; width:62px; border: 1px solid #000000; background-color: #F0F0F0;"></div>
<div style="position: absolute; top: 300px; left: 90px; z-index: 6;">STOP</div>
<form action="javascript:PostXML4()" style="position: absolute; top: 140px; left: 305px; z-index: 7; font-size: 13px;">
<input id="INPUT4" onfocus="document.getElementById('INPUT4x').style.visibility='visible';SetInputEdited(4, event);" onblur="InputFocused[3]=0" onkeydown="SetInputEdited(4, event);" class="mono" tabindex="1" type="text" style="width: 28px; background-color: #FFFFFF;" name="{INPUT[1]/@NAME}" value="{INPUT[1]/@VALUE}" />
<input type="submit" id="INPUT4x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<div onclick="PostXML5()" id="INPUT5" style="position: absolute; top: 345px; left: 25px; z-index: 8;cursor:pointer;height:62px; width:62px; border: 1px solid #000000; background-color: #F0F0F0;"></div>
<div style="position: absolute; top: 410px; left: 35px; z-index: 9;">favPos</div>
<div onclick="PostXML6()" id="INPUT6" style="position: absolute; top: 345px; left: 120px; z-index: 10;cursor:pointer;height:62px; width:62px; border: 1px solid #000000; background-color: #F0F0F0;"></div>
<div style="position: absolute; top: 410px; left: 115px; z-index: 11;">set channel</div>
<div onclick="PostXML7()" id="INPUT7" style="position: absolute; top: 130px; left: 390px; z-index: 12;cursor:pointer;height:62px; width:62px; border: 1px solid #000000; background-color: #F0F0F0;"></div>
<div style="position: absolute; top: 195px; left: 365px; z-index: 13;">open programming</div>
<div onclick="PostXML8()" id="INPUT8" style="position: absolute; top: 345px; left: 220px; z-index: 14;cursor:pointer;height:62px; width:62px; border: 1px solid #000000; background-color: #F0F0F0;"></div>
<div style="position: absolute; top: 410px; left: 235px; z-index: 15;">set IP</div>
<div style="border: solid red 2px; position: absolute; top: 5px; left: 40px; z-index: 16; background-image: url(IMAGES/95X85_C.PNG); line-height: 85px; height: 85px; width: 95px; color: #FFFFFF;">transmitter1</div>
</div>
</td>
</tr>
<!--bottom-->
<tr style="height: 10px;">
<td id="bottom" colspan="2" style="text-align: center">© 2007 - 2019 Teco a.s.</td>
</tr>
</table>
</xsl:if>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
