<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1> JSP directives </h1>
	
	<h2> 1. JSP page directive </h2>
	
	<p> 1. import() </p>
	<p> The import attribute is used to import class,interface 
	or all the members of a package.It is similar to import keyword in java class or interface.</p>
	
	<%@ page import="java.util.Date" %>  
		Today is: <%= new Date() %>  
		
	
</body>
</html>