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
<%= new Date() %> <br>
<%@ page info="composed by Sonoo Jaiswal" %>  
Today is: <%= new java.util.Date() %>  <br>
<%@ page isELIgnored="true" %>
<%@ page buffer="16kb" %>  
Today is: <%= new java.util.Date() %>  

<%@ page errorPage="myerrorpage.jsp" %>  
  
 <%= 100/0 %>  

<h2>JSP include directive</h2>


<%@ include file='12.html' %>
  
Today is: <%= java.util.Calendar.getInstance().getTime() %>  



<h2>JSP taglib directive</h2>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:out value="출력할 값" default="value가 null일 경우 설정한 default값 출력"/> 
<c:out value="작성자" default="Admin" /> 
<c:out value="hello world!!!!!!!" />
<c:forEach var="i" begin="1" end="10" step="1">
<c:set var="weekNum" value="${(i+startWeekDay-2)%7}"></c:set> 
</c:forEach>


</body>
</html>