<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>
    <xsl:template match="/">
        <xsl:for-each select="root/record">
            <xsl:value-of select="title"/> ----- Fecha Publicacion: [<xsl:value-of select="date/year"/>/<xsl:value-of select="date/month"/>/<xsl:value-of select="date/day"/>]
            <xsl:text>&#xA;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>