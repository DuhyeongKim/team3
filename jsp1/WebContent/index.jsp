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
<form>
<%  
String name=request.getParameter("uname");  
out.print("welcome "+name);
%>  
</form>  
<h1>Hello World!</h1>
<% out.print("welcome to jsp"); %> <br>
<%= new Date() %> <br>
<%= "Welcome "+request.getParameter("uname") %>  
</body>
</html>