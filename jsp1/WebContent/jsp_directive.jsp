<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>JSP page directive</h2>


<%@ include file='12.html' %>
  
Today is: <%= java.util.Calendar.getInstance().getTime() %>  



<h2>JSP taglib directive</h2>

<%@ include file="header.html" %>  
  
Today is: <%= java.util.Calendar.getInstance().getTime() %>  

</body>
</html>