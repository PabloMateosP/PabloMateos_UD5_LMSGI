<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <link rel="STYLESHEET" href="CD.css"/>
        <title>Lista De Cd</title>
        </head>
    <body >
        <h1>Cds</h1>
        <table>
            <tr bgcolor="green" id="cabeza">
                <th>Titulo Álbum</th>
                <th>Artista</th>
                <th>Canciones</th>
                <th>Sello Discográfico</th>
                <th>Año Publicación</th>
            </tr>
            <xsl:for-each select="Cds/cd[artista='Mora']">
                <tr id= "texto">
                    <td><xsl:value-of select="titulo_album"/></td>
                    <td><xsl:value-of select="artista"/></td>
                    <td>
                        <ul>
                            <xsl:for-each select="canciones/cancion">
                                <li><xsl:value-of select="."/><xsl:value-of select="@tiempo"/></li>
                            </xsl:for-each>
                        </ul>
                    </td>
                    <td><xsl:value-of select="selloD"/></td>
                    <td><xsl:value-of select="anhoP"/></td>
                </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>