<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>this is index page</h2>  
  	
	<jsp:forward page="printdate.jsp" >  
	<jsp:param name="name" value="javatpoint.com" />  
	</jsp:forward>  
</body>
</html>