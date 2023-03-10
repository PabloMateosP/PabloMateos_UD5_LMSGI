<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1>Mi biblioteca</h1>
        <table>
        <tr bgcolor="#green">
            <th>ISBN</th>
            <th>Título</th>
            <th>Autor</th>
            <th>Precio</th>
        </tr>
        <xsl:for-each select="libreria/libro">
        <xsl:if test="precio &gt; 12.00">
            <tr>
                <xsl:choose>
                <xsl:when test="precio &gt; 25" >
                    <tr>
                        <td bgcolor="red"><xsl:value-of select="isbn"/></td>
                        <td bgcolor="red"><xsl:value-of select="titulo"/></td>
                        <td bgcolor="red"><xsl:value-of select="autor"/></td>
                        <td bgcolor="red"><xsl:value-of select="precio"/></td>
                        <td bgcolor="red"><xsl:value-of select="num_paginas"/></td>
                    </tr>
                </xsl:when>
                <xsl:when test="precio &lt; 25" >
                    <tr>
                        <td bgcolor="green"><xsl:value-of select="isbn"/></td>
                        <td bgcolor="green"><xsl:value-of select="titulo"/></td>
                        <td bgcolor="green"><xsl:value-of select="autor"/></td>
                        <td bgcolor="green"><xsl:value-of select="precio"/></td>
                        <td bgcolor="green"><xsl:value-of select="num_paginas"/></td>
                    </tr>
                </xsl:when>
            </xsl:choose>
        </tr>
        </xsl:if>
        </xsl:for-each>
    </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>