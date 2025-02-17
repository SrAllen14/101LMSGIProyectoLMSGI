<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">
    
    <xsl:output method="html"/>
    
    <!-- Plantilla principal para /listatickets -->
    <xsl:template match="/listatickets">
        <html>
            <head>
                <title>03 XSLT Alvaro Allén Perlines</title>
                <meta charset="utf-8"/>
            </head>
            <body>
                <header>
                    <h1>Información de tickets</h1>
                    <h2>Listado de tickets</h2>
                </header>
                <main>
                    <xsl:apply-templates select="ticket"/>
                </main>
                <footer>
                    <div>NÚMERO DE TICKETS: <xsl:value-of select="count(//ticket)"/></div>
                    <div>TOTAL DE TICKETS: <xsl:value-of select="sum(//total)"/></div>
                </footer>
            </body>
        </html>
    </xsl:template>

    <!-- Plantilla para cada ticket -->
    <xsl:template match="ticket">
        <h3>Ticket: <xsl:value-of select="numero"/></h3>
        <table border="1">
            <thead>
                <tr>
                    <th>Producto</th>
                    <th>Precio</th>
                </tr>
            </thead>
            <tbody>
                <xsl:apply-templates select="producto"/>
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="2">
                        Fecha del ticket: <xsl:value-of select="fecha"/>
                    </td>
                </tr>
            </tfoot>
        </table>
    </xsl:template>

    <!-- Plantilla para cada producto -->
    <xsl:template match="producto">
        <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="precio"/></td>
        </tr>
    </xsl:template>

</xsl:stylesheet>