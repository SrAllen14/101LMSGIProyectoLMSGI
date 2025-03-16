<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                expand-text="yes"
                version="3.0">
    <!-- El nombre no hace referencia a ningun elemento, simplemente es un nombre que se le da -->
    <xsl:template name="meta">
    <!-- La plantilla tiene un nombre que es 'Titulo', el cual se escribe el nombre de ese parametro -->
    <xsl:param name="titulo"/>
        <meta charset="UTF-8"/>
        <meta name="description" content="Trabajando con XSLT"/>
        <meta name="author" content="Alvaro Allen Perlines"/>
        <meta name="robots" content="index, follow"/>
        <meta name="language" content="es"/>
        <meta name="generator" content="Visual Studio Code"/>
        <meta name="keywords" content="HTML, CSS, XML, XSL, DTD"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title><xsl:value-of select="$titulo"/></title>
    </xsl:template>
</xsl:stylesheet>