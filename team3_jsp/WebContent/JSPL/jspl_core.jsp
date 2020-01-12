<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2> Core tag</h2>
<c:set var="country" value="Korea" />
<c:set var="intArray" value="<%=new int[] {1,2,3,4,5} %>" />
<p><c:out value="${country}" default="Korea" escapeXml="true"/></p><br>
<p>${country}</p><br>
<c:set var="login" value="true" />

<c:if test="${!login}"> <p><a href="/login.ok">로그인</a></p></c:if>
<c:if test="${login}"> <p><a href="/logout.ok">로그아웃</a></p></c:if>

<c:choose>
  <c:when test="${login}">
    <p><a href="/logout.ok">로그아웃</a></p>
  </c:when>
  <c:otherwise>
    <p><a href="/login.ok">로그인</a></p>
  </c:otherwise>
</c:choose>
</body>
</html>