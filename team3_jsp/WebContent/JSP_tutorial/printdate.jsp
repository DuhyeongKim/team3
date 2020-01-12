<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% out.print("Today is:"+java.util.Calendar.getInstance().getTime()); %>  
	<%= request.getParameter("name") %>  
	
	<jsp:include page="welcome.jsp" />  
  
	<h2>end section of index page</h2>  
</body>
</html>