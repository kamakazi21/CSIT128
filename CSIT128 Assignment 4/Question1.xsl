<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
 
 <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

 <xsl:template match="/timetable">

 <html>
   <head>
     <title>Assignment 4: CSIT128 - Question 1, Kazi Swad Abdullah, SN: 5220683</title>
   </head>

   <body>
     <h1> <xsl:value-of select="@source" /> - <xsl:value-of select="@destination" />, due: <xsl:value-of select="@due" /></h1>
     <ul>
      <xsl:for-each select="station">
       <li>
	     <xsl:value-of select="@name" /> 
		 <xsl:text>, </xsl:text>
		 <xsl:value-of select="departure" /> 
		 <xsl:text>, </xsl:text>
		 <xsl:value-of select="platform" /> 
	   </li>
	  </xsl:for-each> 
    </ul>
   </body>
  </html>
 </xsl:template>
</xsl:stylesheet>