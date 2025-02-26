<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                expand-text="yes"
                version="3.0">

    <xsl:output method="xml" indent="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>

    <xsl:template match="/prediccion">
        <html>
            <head>
                <!--<xsl:call-template name="meta">
                    <xsl:with-param name="titulo" as="" select="'07 XSLT Alvaro Allen Perlines'"/>
                </xsl:call-template>-->
            </head>
            <body>
                <h1>Predicción por municipio.</h1>
                <table>
                    <caption>
                        EL TIEMPO. <xsl:value-of select="concat(upper-case(municipio/nombre), '(', upper-case(municipio/provincia), ')')"/>
                    </caption>
                    <xsl:apply-templates select="encTabla"/>
                    <xsl:apply-templates select="dia"/>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template name="encTabla">
        <tr>
            <th>Día</th>
            <th>Prob. Precip</th>
            <th>Estado del cielo</th>
            <th>Temperatura (ºC)</th>
            <th>Viento(Km/h)</th>
        </tr>
    </xsl:template>
    <xsl:template name="dia">
        <tr>
            <td><xsl:value-of select="substring(@fecha, 9, 2)"/></td>
            <td><xsl:value-of select="concat(prob_precipitacion, '%')"/></td>
            <td><img src="concat('images/', {estado_cielo}, '.gif')" alt="{@descripcion}"/></td>
            <td><span class="tmin"><xsl:value-of select="temperatura/minima"/></span>
            <xsl:text>/</xsl:text>
            <span class="tmax"><xsl:value-of select="temperatura/maxima"/></span></td>
            <td><img src="'images/',{ viento/direccion},'.gif'" alt="{viento/direccion}"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="viento/velocidad"/>
            </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>