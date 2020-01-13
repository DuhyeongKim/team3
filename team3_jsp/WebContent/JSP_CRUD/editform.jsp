<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Edit Form</title>  
</head>  
<body>  
<%@page import="team3_jsp.UserDAO,team3_jsp.User"%>  
  
<%  
String id=request.getParameter("id");  
User u=UserDAO.getRecordById(Integer.parseInt(id));  
%>   
  
<h1>Edit Form</h1>  
<form action="edituser.jsp" method="post">  
<input type="hidden" name="id" value="<%=u.getId()%>"/> 
<table>  
<tr><td>ID:</td><td>  
<input type="text" name="userID" value="<%= u.getUserID()%>"/></td></tr>  
<tr><td>Password:</td><td>  
<input type="password" name="userPassword" value="<%= u.getUserPassword()%>"/></td></tr>  
<tr><td>Name:</td><td>  
<input type="text" name="userName" value="<%= u.getUserName()%>"/></td></tr>  
<tr><td>Sex:</td><td>  
<input type="radio" name="userGender" value="male"/>Male   
<input type="radio" name="userGender" value="female"/>Female </td></tr>  

<tr><td colspan="2"><input type="submit" value="Edit User"/></td></tr>  
</table>  
</form>  
  
</body>  
</html>  