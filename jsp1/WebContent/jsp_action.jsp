

<html>
   <head>
      <title>The include Action Example</title>
   </head>
   <p>Today's date: <%= (new java.util.Date()).toLocaleString()%></p>
   <jsp:plugin type = "applet" codebase = "dirname" code = "MyApplet.class"
   width = "60" height = "80">
   <jsp:param name = "fontcolor" value = "red" />
   <jsp:param name = "background" value = "black" />
 
   <jsp:fallback>
      Unable to initialize Java Plugin
   </jsp:fallback>
 
</jsp:plugin>

   <body>
      <center>
         <h2>Time</h2>
         <jsp:include page = "date.jsp" flush = "true" />
      </center>
      
            <jsp:element name = "xmlElement">
         <jsp:attribute name = "xmlElementAttr">
            Value for the attribute
         </jsp:attribute>
         
         <jsp:body>
            Body for XML element
         </jsp:body>
      
      </jsp:element>
   </body>
</html>