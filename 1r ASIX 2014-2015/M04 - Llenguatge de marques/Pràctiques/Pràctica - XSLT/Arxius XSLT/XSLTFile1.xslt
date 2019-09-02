<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body style="background-color:#DDDDDD; font-family:Times New Roman">
        <body style="background-size: 100% 100%; background-image: url(); background-color:#D5EDB3">

<h1>Factura</h1>
      <img class="irc_mi" style="margin-top: 125px;" src="http://www.onlytenis.com/img/logo.jpg?1422875712" width="461" height="143"/>
        <br/>
        <br/>
        <br/>
        <xsl:for-each select="factura">
          <div style="background-color:#EEEEEE">
            <div style="background-color:teal;color:BLUE;padding:4px">
              <span style="font-weight:bold">
                La Factura: <xsl:value-of select="factura/detallsfactura/linia/nom"/> 
                            <xsl:value-of select="factura/detallsfactura/linia/cognom1"/>
                            <xsl:value-of select="factura/detallsfactura/linia/cognom2"/>

                Demanada el dia: <xsl:value-of select="factura/detallsfactura/linia/data"/>
              </span>
            </div>
            <div style="margin-left:20px;margin-bottom:1em">
              <p>
                <span> Factura demanada per: 
                 <xsl:value-of select="factura/client/nom"/>
                 </span>
                <span>amb DNI: 
                <xsl:value-of select="factura/client/dni"/>
                </span>
                <br/>
                <br/>
              </p>
            </div>
          </div>
        </xsl:for-each>
        <div style="margin-left:60px;margin-bottom:2em">
          <br/>
          <p>
            Llista dels items comprats pel client:
            <xsl:value-of select="factura/detallsfactura/client/nom"/>
            Aquesta estableix la compra dels següents:
          </p>
           <br/>
        </div>
        <table border="2">
          <tr bgcolor="teal">
            <th style="text-align:left;color:blue">Item</th>
            <th style="text-align:left;color:blue">Productes</th>
            <th style="text-align:left;color:blue">Preu_Total</th>
          </tr>
          <xsl:for-each select="factura/detallsfactura/linia1">
            <tr>
              <td>
                <xsl:value-of select="descripció"/>
              </td>
              <td>
                <xsl:value-of select="productes"/>
              </td>
            <td>
                <xsl:value-of select="preu_Total"/>
              </td>
            </tr>
          </xsl:for-each>
        <xsl:for-each select="factura"/>
        <xsl:for-each select="factura/detallsfactura/linia2">
            <tr>
              <td>
                <xsl:value-of select="descripció"/>
              </td>
              <td>
                <xsl:value-of select="productes"/>
              </td>
            <td>
                <xsl:value-of select="preu_Total"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
        <xsl:for-each select="factura"/>
         
        </body>
        <xsl:for-each select="factura"/>
    </html>
  </xsl:template>
</xsl:stylesheet>



