<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="team3_jsp.UserDAO"%>  
<jsp:useBean id="u" class="team3_jsp.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/> <!-- form으로부터 넘어 온게 아닌데도 setproperty하면 값이 넘어옴 ? --> 
<% 									// url을 통해 id값이 넘어 왔으므로 그것을 사용하는것 

UserDAO.delete(u);  
response.sendRedirect("viewusers.jsp");  
%>  