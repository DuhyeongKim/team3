<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="team3_jsp.UserDAO"%>  
<jsp:useBean id="u" class="team3_jsp.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  

int i=UserDAO.update(u);  
response.sendRedirect("viewusers.jsp");  
%>  