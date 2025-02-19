<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http:/www.w3.org/2001/schema"
                expand-text="yes">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/root" mode='#all'>
        <xsl:copy>
            <xsl:for-each select="row">
                <!--  
                <xsl:copy>
                    <Anyo><xsl:value-of select="@Anyo"/></Anyo>
                </xsl:copy>
                -->
                <xsl:copy>
                    <xsl:for-each select="@*">
                        <xsl:element name="{name()}">
                            <xsl:value-of select="."/>
                        </xsl:element>
                    </xsl:for-each>
                </xsl:copy>
            </xsl:for-each>
            <xsl:apply-templates />
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>