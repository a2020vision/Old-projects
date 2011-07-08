<?xml version='1.0'?>
<xsl:stylesheet version='1.0'
xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
xmlns:w="http://schemas.microsoft.com/office/word/2002/8/wordml">
<xsl:output method="html" indent="yes" />
<xsl:template match="/">

<!-- Create the HTML Code for this stylesheet. -->
<HTML>
<HEAD>
   <TITLE>Word Document Properties</TITLE>
</HEAD>

<BODY>
<CENTER><H3>Word Document Property Values</H3></CENTER>

<TABLE BORDER="2">
   <TR>
      <TH>Property</TH>
      <TH>Value</TH>
   </TR>
      <xsl:apply-templates select="//w:title"/>
</TABLE>

</BODY>
</HTML>
</xsl:template>

<!-- XSL template section that describes table content. -->

<xsl:template match="w:title">
   <TR>
      <TD>
         Title
      </TD>
      <TD>
         <xsl:value-of select="@w:val"/>
      </TD>
   </TR>
</xsl:template>

</xsl:stylesheet>