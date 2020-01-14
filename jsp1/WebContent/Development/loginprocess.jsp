<%@page import="com.camp.LoginDao"%>  
<jsp:useBean id="obj" class="com.camp.LoginCom"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
boolean status=LoginDao.validate(obj);  
if(status){  
out.println("You r successfully logged in");  
session.setAttribute("session","TRUE");  
}  
else  
{  
out.print("Sorry, email or password error");  
%>  
<jsp:include page="index2.jsp"></jsp:include>  
<%  
}  
%>  