<%@ page import="com.oreilly.servlet.MultipartRequest" %>  
<%  
MultipartRequest m = new MultipartRequest(request, "C:/guru/upload");  
out.print("successfully uploaded");  
  
%>  