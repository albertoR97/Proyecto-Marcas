<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="galeria">

<html>
<head>
 <link rel="stylesheet" type="text/css" href="../Turismos.css"/>
<title>Galeria</title>
</head>
<body>
<header>
  <!--Menu de Navegación-->
  <nav>
    <div class="navbar">
      <a href="../Home.html">Home</a>
      <div class="dropdown">
        <button class="dropbtn">Modelos 
          <i class="fa fa-caret-down"/>
        </button>
        <div class="dropdown-content">
          <a href="deportivos.xml">Deportivos</a>
          <a href="familiares.xml">Familiares</a>
          <a href="rancheras.xml">Rancheras</a>
        </div>
        </div>
          <div class="dropdown">
            <button class="dropbtn">Financiación 
              <i class="fa fa-caret-down"/>
            </button>
        <div class="dropdown-content">
          <a href="https://www.bbva.es/particulares/index.jsp">BBVA</a>
          <a href="https://www.bancosantander.es/es/particulares">Santander</a>
          <a href="https://ing.ingdirect.es/pfm/#login/">ING</a>
        </div>
          </div>
          <a href="../Contacto.html">Contacto</a>
          <a class="login" href="registro.html">Registrarse</a>
          
    </div>  
  </nav>
</header>

<h1>Modelos principales</h1>
<xsl:for-each select="imagen">  
<div id="galeria">
<div class="imagen" style="float: left; width: 300px;">
  <h3>Modelo: <xsl:value-of select="@numero"/></h3>

     <xsl:element name="img">
       <xsl:attribute name="src">
         <xsl:value-of select="dibujo/@ruta"/>
       </xsl:attribute>
       <xsl:attribute name="height">
         100
       </xsl:attribute>
     </xsl:element>
</div>
</div>
</xsl:for-each>

  
</body>
</html>
</xsl:template>
</xsl:stylesheet>
