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
<script src="PAGE1.JS?U=1584950370" language="JavaScript" charset="utf-8" />
<style type="text/css">.mono {font-family: Verdana, Arial, FreeSans, sans-serif;}</style>
</head>
<body onload="GetXML('PAGE1.XML'); FunWatchDog();">
<xsl:if test="1584950370 != ACCESS/@UCID">
<xsl:attribute name="onload">
null;
</xsl:attribute>
<div id="cachewarning" style="text-align: left;"></div>
<script src="REFCLR.JS" language="JavaScript" charset="utf-8"></script>
</xsl:if>
<xsl:if test="1584950370 = ACCESS/@UCID">
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
<div onclick="PostXML1()" id="INPUT1" style="position: absolute; top: 165px; left: 100px; z-index: 1;cursor:pointer;height:62px; width:62px; border: 1px solid #000000; background-color: #F0F0F0;"></div>
<div style="position: absolute; top: 240px; left: 125px; z-index: 2;">UP</div>
<div onclick="PostXML2()" id="INPUT2" style="position: absolute; top: 165px; left: 190px; z-index: 3;cursor:pointer;height:62px; width:62px; border: 1px solid #000000; background-color: #F0F0F0;"></div>
<div style="position: absolute; top: 240px; left: 200px; z-index: 4;">DOWN</div>
<div onclick="PostXML3()" id="INPUT3" style="position: absolute; top: 280px; left: 135px; z-index: 5;cursor:pointer;height:62px; width:62px; border: 1px solid #000000; background-color: #F0F0F0;"></div>
<div style="position: absolute; top: 355px; left: 150px; z-index: 6;">STOP</div>
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
