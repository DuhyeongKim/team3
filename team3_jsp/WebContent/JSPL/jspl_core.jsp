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
<h1> Core tag</h1>
<h2> set </h2>
<c:set var="country" value="Korea" />
<c:set var="intArray" value="<%=new int[] {1,2,3,4,5} %>" />
<p><c:out value="${country}" default="Korea" escapeXml="true"/></p><br>
<p>${country}</p><br>
<p>${intArray[0]}</p>
<c:set var="login" value="true" />
<h2> if</h2>
<c:if test="${!login}"> <p><a href="/login.ok">로그인</a></p></c:if>
<c:if test="${login}"> <p><a href="/logout.ok">로그아웃</a></p></c:if>
<h2> choose</h2>
<c:choose>
  <c:when test="${login}">
    <p><a href="/logout.ok">로그아웃</a></p>
  </c:when>
  <c:otherwise>
    <p><a href="/login.ok">로그인</a></p>
  </c:otherwise>
</c:choose>

<h2> forToken</h2>
<c:forTokens var="color" items="빨|주|노|초|파|남|보" delims="|" varStatus="i" >
     <c:if test="${i.first}">color : </c:if>
     ${color} 
     <c:if test="${!i.last}">,</c:if>
</c:forTokens>
<h1> Format tag</h1>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="ko_KR"/>
<p>number  : <fmt:formatNumber value="1234567.89" type="number"/></p>
<p>currency : <fmt:formatNumber value="1234567.89" type="currency" currencySymbol="￦" /> </p>
<p>percent : <fmt:formatNumber type="percent">0.159</fmt:formatNumber></p>
<p>pattern=".000"    :<fmt:formatNumber value="1234567.1" pattern=".000" /></p>
<p>pattern="#,#00.0#":<fmt:formatNumber value="1234567.891" pattern="#,#00.0#"/></p>

<p>number  : <fmt:parseNumber value="1,234,567.89" type="number"/></p>
<p>currency : <fmt:parseNumber value="12345abcdef" integerOnly="false" type="number" /></p>

<c:set var="now" value="<%= new java.util.Date() %>" />
<p> date full : <fmt:formatDate value="${now}" type="date" dateStyle="full" /></p>
<p> date short : <fmt:formatDate value="${now}" type="date" dateStyle="short" /></p>
<p> time : <fmt:formatDate value="${now}" type="time" /></p>
<p> both full : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" /></p>
<p> pattern 1 : <fmt:formatDate value="${now}" pattern="yyyy-MM-dd aa hh:mm:ss" /></p>
<p> pattern 2 : <fmt:formatDate value="${now}" pattern="yyyy-MM-dd  hh:mm:ss" /></p> 

</body>
</html>