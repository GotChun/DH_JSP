<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    String userid = request.getParameter("userid");
    String password = request.getParameter("password");
    %>
    	
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


password : <%=password %><br> --%>

<%
pageContext.setAttribute("P_ATTR", "P_ATTR_VALUE");
	request.setAttribute("R_ATTR", "R_atr_value");
	session.setAttribute("S_ATTR", "S_ATTR_VALUE");
	application.setAttribute("A_ATTR", "A_ATTR_VALUE");
	
	
	pageContext.setAttribute("DUP", "PageContext_value");
	request.setAttribute("DUP", "Request_Value");
	
	session.setAttribute("DUP", "Session_value");
	application.setAttribute("DUP", "apple_value");

	
%>

<!-- EL 파라미터값 알아볼때-->
USERID : ${param.userid }<br>
PASSWORD : ${param.password }<br>

<!-- EL ATTR 속성알아볼 때-->
PAGECONTEXT_ATTR : ${pageContextScope.P_ATTR} <br>
page_ATTR : ${P_ATTR}<br>

Request_ATTR : ${requestScope.R_ATTR }<br>
Request_ATTR : ${R_ATTR }<br>

session_ATTR : ${sessionScope.S_ATTR }<br>
session_ATTR : ${S_ATTR }<br>

appli_ATTR : ${applicationScope.A_ATTR }<br>
application_ATTR : ${A_ATTR }<br>

ppp : ${pageContextScope.P_ATTR }<br>

<!-- ATTR 중첩 -->
DUP_VALUE : ${DUP}<br>

<!-- object 접근 -->
<%@ page import = "C08.*" %>

<%
	SimpleDto dto = new SimpleDto("길동좌",50);
	request.setAttribute("dto", dto);
%>
<%=dto.getName() %><br>
${dto.name }<br>
${dto.age }<br>

<!-- 연산처리 -->
<%=1+1 %><br>
${1+"1"}<br> <% //el 표현식으로 쓰면 문자열도 기본자료형인 integer 으로 인식한다%>

<!-- null check -->
<hr>
null : ${null }<br>
empty null : ${empty unll }<br> <% //안에 값이 null 인지 확인후 true false 반환 %>

<% request.setAttribute("Test", "B"); %>

empty test : ${empty Test }  
empty test : ${!empty Test }  //이거 부정연산자도 사용가능


</body>
</html>