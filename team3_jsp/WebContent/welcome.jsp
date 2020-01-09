<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%  
	String name=request.getParameter("uname");  
	out.print("welcome "+name);  
	%> <br>
	
	Current Time: <%= java.util.Calendar.getInstance().getTime() %>  <br>
	
	<%= "Welcome "+request.getParameter("uname") + "(Using request())" %>  <br>
	<%!   int cube(int n){  
			return n*n*n;  
	}  
	%>  
	<%= "Cube of 3 is:"+cube(3) %><br>
	<h1> Use jSP:useBean</h1>
	<jsp:useBean id="calculator" class = "team3_jsp.Calculator"></jsp:useBean>
	<% 
	int m = calculator.Cube(4);
	out.print("Cube(4) : "+ m);
	%><br>
	
	 
	EL param example : ${ param.uname } <br>
	
	EL sessionScope example : Value is ${ sessionScope.user }  <br>
</body>
</html>