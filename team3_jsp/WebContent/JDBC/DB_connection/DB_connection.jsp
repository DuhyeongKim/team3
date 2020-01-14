<%@page import="java.sql.*"%> <%-- JDBC API 임포트 작업 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="team3_jsp.UserDAO" %>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="team3_jsp.User" scope="page"/>
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPassword"/>
<jsp:setProperty name="user" property="userName"/>
<jsp:setProperty name="user" property="userGender"/>
<jsp:setProperty name="user" property="userEmail"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    String driverName="com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://db4free.net:3306/mydata_21300506?useSSL=false&serverTimezone=UTC&characterEncoding=utf8";   
    String id = "emawlrdl";
    String pwd ="toddlf930";
   
    Connection conn = null;                                        // null로 초기화 한다.
    PreparedStatement pstmt = null;
    
    try{
       conn=DriverManager.getConnection(url,id,pwd);  
    }catch(Exception e){
        e.printStackTrace();
        out.println("연결실패.");
    }

    try{                                              // 사용자 계정의 패스워드
    Class.forName("com.mysql.jdbc.Driver");                       // 데이터베이스와 연동하기 위해 DriverManager에 등록한다.            // DriverManager 객체로부터 Connection 객체를 얻어온다.
    String sql = "insert into user values(?,?,?,?)";    
    // sql 쿼리
    pstmt = conn.prepareStatement(sql);                          // prepareStatement에서 해당 sql을 미리 컴파일한다.
    pstmt.setString(1,"test");
    pstmt.setString(2,"passwd");
    pstmt.setString(3,"김철수");
    pstmt.setString(4,"male");   // 현재 날짜와 시간
	
    pstmt.executeUpdate();                                        // 쿼리를 실행한다.

    out.println("member 테이블에 새로운 레코드를 추가했습니다.");        // 성공시 메시지 출력

    }catch(Exception e){                                                    // 예외가 발생하면 예외 상황을 처리한다.
    e.printStackTrace();
    out.println("member 테이블에 새로운 레코드 추가에 실패했습니다.");
    }finally{                                                            // 쿼리가 성공 또는 실패에 상관없이 사용한 자원을 해제 한다. (순서중요)
    if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}            // PreparedStatement 객체 해제
    if(conn != null) try{conn.close();}catch(SQLException sqle){}            // Connection 해제
    }

%>
</body>
</html>