<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>this is index page</h2>  
<jsp:useBean id="wow" class="com.camp.User"></jsp:useBean>
<%
String name = "wowo12";%>

<jsp:setProperty property="name" name="wow" value="<%=name%>"/>

 Record:<br>
 <jsp:getProperty property="name" name="wow"/><br>

</body>

</html>