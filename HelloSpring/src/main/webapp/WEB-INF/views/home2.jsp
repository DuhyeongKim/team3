<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="student">
 <table border="2">
 	<tr>
 		<th>구분</th>
 		<th>이름</th>
 		<th>나이</th>
 		<th>주소</th>
 		<th>이미지</th>
 		<th>제거</th>
 	</tr>
 	
 	<c:forEach items='${listuser}' var='user'>
 </table>
 </div>
</body>
</html>