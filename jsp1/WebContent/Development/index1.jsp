<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Registration Form</h2>

<form action="process.jsp">  
<input type="text" name="uname" value="Name..." onclick="this.value=''"/><br/>  
<input type="text" name="uemail"  value="Email ID..." onclick="this.value=''"/><br/>  
<input type="password" name="upass"  value="Password..." onclick="this.value=''"/><br/>  
<input type="submit" value="register"/>  
</form>  

<h2>Login Form</h2>

<a href="login.jsp">login</a>| 


<h2>Uploading Form</h2>

<form action="upload.jsp" method="post" enctype="multipart/form-data">  
Select File:<input type="file" name="fname"/><br/>  
leave the message and press the "Enter Key"
<input type="text" name="upload!"/>  
</form>  
<h2>Downloading Form</h2>
<a href="download.jsp">download the secret file</a> 

</body>
</html>