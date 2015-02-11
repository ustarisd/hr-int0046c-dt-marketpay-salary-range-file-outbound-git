<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xtt="urn:com.workday/xtt"
    xmlns:jp="urn:com.workday/jobprofiles"
    xmlns:fn="http://www.w3.org/2005/xpath-functions"
    xmlns:etv="urn:com.workday/evt"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://exslt.org/math"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    version="2.0">
    
    
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> Jan 6, 2015</xd:p>
            <xd:p><xd:b>Author:</xd:b> Darren Ustaris</xd:p>
            <xd:p>INT0046c MarketPay Salary Range File Outbound Document Transform XSLT</xd:p>
        </xd:desc>
    </xd:doc>
    
    <xd:doc>
        <xd:desc>
            <xd:p> Set the output method to xml</xd:p>
        </xd:desc>
    </xd:doc>
    
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:template match="jp:Job_Profile_Sync">
        
        
        
        <File xtt:separator="&#xA;" xtt:align="left" xtt:severity="warning">


        
            <xsl:for-each select="jp:Job_Profile">
        
       
             
                <!-- Job File Record -->
                <SalaryFile xtt:separator="," xtt:quotes="csv" xtt:align="left">  
                    <Structure xtt:attribute='Structure'></Structure>
                    
                    <GradeNumber><xsl:value-of select="jp:Compensation_Grade"/></GradeNumber>
                    <Min><xsl:value-of select="jp:Additional_Information/jp:Min"/></Min>
                    <Mid><xsl:value-of select="jp:Additional_Information/jp:Mid"/></Mid>
                    
                    <Max><xsl:value-of select="jp:Additional_Information/jp:Max"/></Max>
                    
                    <NumberofSegments><xsl:value-of select="jp:Additional_Information/jp:Number_of_Segments"/></NumberofSegments>
                    <Max1st/>
                    <Max2nd/>
                    <Max3rd/>
                    <Max4th/>
                    
                    <RangeEffDate><xsl:value-of select="jp:Additional_Information/jp:Range_Effective_Date"/></RangeEffDate>
                    <PriorYearMin><xsl:value-of select="jp:Additional_Information/jp:Prior_Min"/></PriorYearMin>
                    <PriorYearMid><xsl:value-of select="jp:Additional_Information/jp:Prior_Mid"/></PriorYearMid>
                    <PriorYearMax><xsl:value-of select="jp:Additional_Information/jp:Prior_Max"/></PriorYearMax>
                    <ProposedMin/>
                    <ProposedMid/>
                    <ProposedMax/>
                    <UDFNum1/>
                    <UDFNum2/>
                    <UDFNum3/>
                    <UDFNum4/>
                    <UDFNum5/>
                    <UDFNum6/>
                    <UDFNum7/>
                    <UDFNum8/>
                    <UDFNum9/>
                    <UDFNum10/>
                    <UDFVarChar1/>
                    <UDFVarChar2/>
                    <UDFVarChar3/>
                    <UDFVarChar4/>
                    <UDFVarChar5/>
                    
                    <UDFDate1/>
                    <UDFDate2/>
                    <UDFDate3/>
                    <UDFDate4/>
                    <UDFDate5/>
                    <Currency><xsl:value-of select="jp:Additional_Information/jp:Currency"/></Currency>
                    
                </SalaryFile>
            
     
        </xsl:for-each>
            
      
        </File>
        
    </xsl:template>
    
</xsl:stylesheet>