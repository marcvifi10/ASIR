<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
      <html>
        <head>
          <title></title>
        </head>
        <body>
          <h1 style="color:red; text-align:left; font-family:arial;font-size:22pt">Tennis Store <img class="irc_mi" style="margin-top: 97px;" src="http://deportes.uas.edu.mx/Imagenes/Dibujos_med/logos_aguila_tennis.jpg" width="286" height="200"></h1></br>
          <img alt="logo" src="logo.jpg" width="100" height="100"/>
          <table border="1">
            <tr bgcolor="blue">
              <th style="text-align:left; font-family: arial; ont-size:22pt">Tennis Store</th>     
          </tr>
          </table>
          <table border="0">
            <p>Calle Migdia nº20, Girona</p>
            <p>Telefono: 972 547 456</p>
            <p>Fax: 972 547 455</p>
          </table>
          <div style=""></div>
       </body style="font-family:arial;font-size:12pt;background-color:#EEEEE">
       <xsl:for-each select="actura/client">
         <di
      </xsl:for-each>
    </html>
    </xsl:template>
</xsl:stylesheet>
 