<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../fields/archives.xslt"/>
<xsl:import href="../fields/capture_output.xslt"/>
<xsl:import href="../fields/command.xslt"/>
<xsl:import href="../fields/files.xslt"/>
<xsl:import href="../fields/job_properties.xslt"/>
<xsl:import href="../fields/job_xml.xslt"/>
<xsl:import href="../fields/params.xslt"/>
<xsl:import href="../fields/prepares.xslt"/>

<xsl:template match="shell:shell" xmlns:shell="uri:oozie:shell-action:0.1">

  <object model="oozie.shell" pk="0">

    <xsl:call-template name="archives"/>
    <xsl:call-template name="capture_output"/>
    <xsl:call-template name="command"/>
    <xsl:call-template name="files"/>
    <xsl:call-template name="job_properties"/>
    <xsl:call-template name="job_xml"/>
    <xsl:call-template name="params"/>
    <xsl:call-template name="prepares"/>

  </object>

</xsl:template>

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
</xsl:stylesheet>