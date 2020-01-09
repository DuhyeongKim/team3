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

</body>
</html>