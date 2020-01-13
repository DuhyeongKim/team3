<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp code</title>
</head>
<body>
<form action="second.jsp" method="post">  
<input type="text" name="uname">  
<input type="submit" value="go"><br/>   
</form>  
<h1>Hello World!</h1>
<% out.print("welcome to jsp"); %> <br>
<%= new Date() %> <br>
<%= "Welcome "+request.getParameter("uname") %>  <br>
  
<a href="welcome.jsp">second jsp page</a>  

</body>
</html>