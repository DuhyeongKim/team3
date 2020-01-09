<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!--빈 객체 생성 / Calculator bean = new Calculator(); 와 같은 뜻 -->  
<jsp:useBean id="bean" class="team3_jsp.Calculator" />
sds
<!-- form으로 부터 전달된 값을 bean 객체의 프로퍼티에 설정 
	 form 태그의 name과 자바빈의 프로퍼티명과 동일한 것에 대응-->
<jsp:setProperty property="*" name="bean"/>
<%-- 위와 동일한 의미
<jsp:setProperty property="id" name="bean"/>
<jsp:setProperty property="passwd" name="bean"/>
<jsp:setProperty property="name" name="bean"/>
<jsp:setProperty property="age" name="bean"/> 
--%>

	<!-- bean 객체에 저장된 데이터 출력 -->
	id : <jsp:getProperty property="id" name="bean"/><br>
	pw : <jsp:getProperty property="passwd" name="bean"/><br>
	이름 : <jsp:getProperty property="name" name="bean"/><br>
	나이 : <jsp:getProperty property="age" name="bean"/><br>
</body>
</html>