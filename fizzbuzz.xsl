<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" encoding="utf-8"/>
	<xsl:template match="fb">
		<xsl:variable name="num">
			<xsl:number/>
		</xsl:variable>
		<xsl:choose>
			<xsl:when test="($num mod 15) = 0">
				<xsl:text>FizzBuzz</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:choose>
					<xsl:when test="($num mod 3) = 0">
						<xsl:text>Fizz</xsl:text>
					</xsl:when>
					<xsl:when test="($num mod 5) = 0">
						<xsl:text>Buzz</xsl:text>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="$num"/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:text>&#xa;</xsl:text>
	</xsl:template>
</xsl:stylesheet>
