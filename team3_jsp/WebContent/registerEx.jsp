<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!--�� ��ü ���� / Calculator bean = new Calculator(); �� ���� �� -->  
<jsp:useBean id="bean" class="team3_jsp.Calculator" />
sds
<!-- form���� ���� ���޵� ���� bean ��ü�� ������Ƽ�� ���� 
	 form �±��� name�� �ڹٺ��� ������Ƽ��� ������ �Ϳ� ����-->
<jsp:setProperty property="*" name="bean"/>
<%-- ���� ������ �ǹ�
<jsp:setProperty property="id" name="bean"/>
<jsp:setProperty property="passwd" name="bean"/>
<jsp:setProperty property="name" name="bean"/>
<jsp:setProperty property="age" name="bean"/> 
--%>

	<!-- bean ��ü�� ����� ������ ��� -->
	id : <jsp:getProperty property="id" name="bean"/><br>
	pw : <jsp:getProperty property="passwd" name="bean"/><br>
	�̸� : <jsp:getProperty property="name" name="bean"/><br>
	���� : <jsp:getProperty property="age" name="bean"/><br>
</body>
</html>