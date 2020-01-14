<%@page import="com.camp.RegisterDao"%>  
<jsp:useBean id="obj" class="com.camp.User1"/>  
  
<jsp:setProperty property="*" name="obj"/>  
 <%out.print("sdsd"); %> 
<%  
int status=RegisterDao.register(obj);  
if(status>0)  
out.print("You are successfully registered");  
  
%>  