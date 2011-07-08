<?xml version='1.0'?>
<xsl:stylesheet version='1.0'
xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
<xsl:output method="html" indent="yes" />
<xsl:template match="/">

<!-- Create the HTML Code for this stylesheet. -->
<HTML>
<HEAD>
   <TITLE>Sample2.XML File Output</TITLE>
</HEAD>

<BODY>
<H1>Sample2.XML File Output</H1>

<xsl:apply-templates select="//Element1"/>
<xsl:apply-templates select="//Element2"/>
<xsl:apply-templates select="//comment()"/>
<H2>Text:</H2>
<xsl:apply-templates select="//text()"/>

</BODY>
</HTML>

</xsl:template>

<!-- XSL template section that describes XML content. -->

<xsl:template match="Element1">
	<H2>Element1 Content</H2>
	<xsl:value-of select="@Attribute1"/>
	<BR/>
	<xsl:value-of select="ChildElement1"/>
</xsl:template>

<xsl:template match="Element2">
	<H2>Element2 Content</H2>
	<xsl:value-of select="."/>
</xsl:template>

<xsl:template match="comment()">
	<H2>Comment:</H2>
	<xsl:value-of select="."/>
</xsl:template>

<xsl:template match="text()">
	<xsl:value-of select="."/>
        <BR/>
</xsl:template>

</xsl:stylesheet>