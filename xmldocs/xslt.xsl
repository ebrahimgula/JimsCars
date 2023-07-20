<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<!-- xslt.xml | Author: Ebrahim Gulamali (c3264525) Date created: 21/10/21 -->
 <xsl:template match="/">
 	<html>		
	<head> 
	<TITLE>Jims Cars</TITLE>
		<link rel="stylesheet" href="xmlstyle.css" type="text/css" />
		<style type="text/css">
					<!-- Embedded styling -->
					body { font-weight:bold; }
					body h1{ text-decoration: underline; 
							}
					h1:hover{
   						color:blue;
    					transition: all 0.3s ease;
						}
				</style>
	<header id="main-header">
		<div class ="topcontainer">
			<h1 >Jim's Cars</h1>
		</div>
	</header>
		<nav>
		<div>
			<!-- Menu bar with CSS -->
			<ul class="nav">
				<li><a class ="ex1" href="../website/index.html">Home</a></li>
				<li><a class ="ex2" href="../website/about.html">About</a></li>
				<li><a class ="ex2" href="../website/listing.html">Listing Service</a></li>
				<li><a class ="ex3" href="evs.xml">Electric Vehicles</a></li>
				<li><a class ="ex4" href="lvs.xml">Luxury Vehicles</a></li>
				<li><a class ="ex5" href="../website/contact.html">Contact</a></li>
				<li><a class ="ex2" href="../website/termsandconditions.html">Terms and Conditions</a></li>
				<li><a class ="ex2" href="../website/privacy.html">Privacy</a></li>
			</ul>
		</div>
		</nav>

		<section id="showcase">
		<div class="sccontainer">
			<h2>Welcome to Jim Penman's new online buy/swap/sell service called Jim's Cars.  </h2>
		</div>
	</section>
	</head>

		<body>
			<h1><xsl:value-of select="Jimscars/Vehicle/category"/> Vehicles</h1>
			<xsl:for-each select="Jimscars/Vehicle">
				<xsl:sort select="model"/>
				<br/>
						<xsl:text>Vehicle name: </xsl:text><xsl:value-of select="make"/><xsl:text> </xsl:text><xsl:value-of select="model"/>
					<br/>
						<xsl:text>Cost: $</xsl:text> <xsl:value-of select="cost"/>
					<br/>
						<xsl:text>URL: </xsl:text> <a href="{@href}"><xsl:value-of select="URL"/></a>
					<br/>
						<xsl:text>vehicle description: </xsl:text> <xsl:value-of select="description"/>
					<br/>
					<xsl:value-of select="colour"/>
					<xsl:text> Engine size: </xsl:text>
					<xsl:value-of select="enginesize"/>
					<br/>
					<xsl:value-of select="safteyrating"/>
					<xsl:text> Star saftey rating </xsl:text>
					<xsl:value-of select="couponcode"/>
					<xsl:text>  Reviews: </xsl:text>
					<xsl:value-of select="reviews"/>
					<br/>
						<xsl:text>Pictures of the vehicle: </xsl:text>
						<br/>
						<img alt="related pictures of the associated vehicle">
						<xsl:attribute name="src">
							<xsl:value-of select="pictures/images/@src"/>		
						</xsl:attribute>			
					</img>
					<br/>
					<hr> </hr>
			</xsl:for-each>
		</body>
	</html>
	</xsl:template>
	
	
</xsl:stylesheet>