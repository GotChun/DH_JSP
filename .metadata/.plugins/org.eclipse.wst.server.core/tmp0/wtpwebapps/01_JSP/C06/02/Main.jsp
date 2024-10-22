<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		
	<h1>Main Page</h1>
	ID : <%= session.getAttribute("id") %><br>
	ROLE : <%=session.getAttribute("role") %><br>
	TimeOut : <%=session.getMaxInactiveInterval() %>
	
	<hr>
	
	<%
		Boolean isLogined = (Boolean)session.getAttribute("isLogined");   //이 과정이 필요한가 ? 음 필요하지 
		if(isLogined==null){
			%>
			<a href="login.jsp">로그인</a>
			<%
		}
		else{
			%>
			<a href="logout.jsp">로그아웃</a>
			<%
		}
	%>
	

	
</body>
</html>


