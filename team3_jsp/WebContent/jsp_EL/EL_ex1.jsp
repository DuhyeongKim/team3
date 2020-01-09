<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <jsp:useBean id="member" class="team3_jsp.MemberBean" />
    <jsp:setProperty property="*" name="member" />
    <%
        //동일한 요청에 의해 실행되는 페이지 간에 정보를 유지하기 위해 HttServletRequest 객체에 등록 합니다.
        request.setAttribute("member", member); 
    
	    /* request.setParameter() 와 getParameter()를 이용하면 String의 값 밖엔 받을 수 없다.
	    	List를 받기 위해서는 setAttribute()와 getAttribute()를 써야 한다.*/

	    /*setAttribute(String name, Object value)
	    	 이름이 name인 속성의 값을 value로 지정합니다. */
	    	 
	    	 /* JSP 기본 객체의 속성 Attribute 사용하기
			4개의 기본객체 pageContext. request, session, application은 속성을 갖고 있습니다. 
			속성은 각각의 기본 객체가 존재하는 동안에 사용될수 있으며, 
			JSP페이지 사이에서 정보를 주고 받거나 공유하기 위한 목적으로 사용됩니다.*/
	    	 
        //클라이언트 단위로 정보를 유지하고자 할 때 HttpSession 객체에 등록합니다.
        //session.setAttribute("member", member);
         
        //웹 애플리케이션 단위로 정보를 유지하고자 할 때 ServletContext객체에 등록합니다.
        //application.setAttribute("member", member); 
    %>
    <jsp:forward page="memberOutput.jsp" />
</body>
</html>