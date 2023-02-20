<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <h1>Cds</h1>
        <table>
            <tr bgcolor="green">
                <th>Titulo Álbum</th>
                <th>Artista</th>
                <th>Canciones</th>
                <th>Titulo</th>
                <th>Duracion</th>
                <th>Sello Discográfico</th>
                <th>Año Publicación</th>
            </tr>
            <xsl:for-each select="Cds/cd">
                <tr>
                    <td><xsl:value-of select="titulo_album"/></td>
                    <td><xsl:value-of select="artista"/></td>
                    <td><xsl:value-of select="canciones"/></td>
                    <td><xsl:value-of select="cancion"/></td
                    <td><xsl:value-of select="tiempo"/></td>
                    <td><xsl:value-of select="selloD"/></td>
                    <td><xsl:value-of select="anhoP"/></td>
                </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>