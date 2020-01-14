<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="welcome.jsp">  
	<input type="text" name="uname">  
	<input type="submit" value="go"><br/>  
	</form>  
	<form action="goGoogle.jsp">  
	<input type="submit" value="goGoogle"><br/>  
	</form>  
	
	<%  
	session.setAttribute("user","sonoo");  
	%> 
</body>
</html>