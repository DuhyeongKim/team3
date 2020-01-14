<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="team3_jsp.UserDAO" %>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="team3_jsp.User" scope="page"/>
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPassword"/>
<jsp:setProperty name="user" property="userName"/>
<jsp:setProperty name="user" property="userGender"/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8 ">
<title>JSP 게시판</title>
</head>
<body>
    <%
      UserDAO userDAO = new UserDAO();
      int result = userDAO.join(user);
      if(result == -1){
          PrintWriter script = response.getWriter();
          script.println("<script>");
          script.println("alert('이미 존재하는 아이디입니다.')");
          script.println("history.back()");
          script.println("</script>");
      }
      else{
          session.setAttribute("userID",user.getUserID());
          PrintWriter script = response.getWriter();
		  out.println("회원가입 성공 !!");
      }
        
 
 
    %>
</body>
</html>

