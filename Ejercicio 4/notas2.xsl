<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/notas">
    <html>
      <head>
        <title>Notas de Junio</title>
        <style type="text/css">
          table {
            border-collapse: collapse;
            width: 70%;
            margin: auto;
          }
          th, td {
            text-align: center;
            padding: 8px;
            border: 1px solid black;
          }
          th {
            background-color: grey;
            color: white;
          }
          #a{
            color: red;
          }
          .datos {
            width: 30%;
          }
          .notas {
           width: 70%;
          }
        </style>
      </head>
      <body>
        <div style="text-align:center">
          <h1>Notas de Junio</h1>
        </div>
        <div style="text-align:center">
          <table>
            <tr>
              <th colspan="3" class="datos">Datos</th>
              <th colspan="4" class="notas">Notas</th>
            </tr>
            <tr>
              <th>Nombre</th>
              <th>Apellidos</th>
              <th>Matrícula</th>
              <th>Cuestionarios</th>
              <th>Tareas</th>
              <th>Examen</th>
              <th >Final</th>
            </tr>
            <xsl:apply-templates select="alumno[@convocatoria='Junio']"/>
          </table>
        </div>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="alumno[@convocatoria='Junio']">
    <tr>
      <td><xsl:value-of select="nombre"/></td>
      <td><xsl:value-of select="apellidos"/></td>
      <td><xsl:value-of select="matricula"/></td>
      <td><xsl:value-of select="cuestionarios"/></td>
      <td><xsl:value-of select="tareas"/></td>
      <td><xsl:value-of select="examen"/></td>
      <td><xsl:value-of select="final"/></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>