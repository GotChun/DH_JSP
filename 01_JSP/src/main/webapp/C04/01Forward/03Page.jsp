<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String page01 = (String)request.getAttribute("page01");
    String page02 = (String)request.getAttribute("page02");
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>03PAGE</h1>
	USERNAME : <%=username %><br>
	PASSWORD : <%=password%><br>
	<%="page01" %>
	<%=page02 %>
	
	<ul>
		<li>1</li>
		<li><%=username %></li>
		<li>2</li>
		<li>3</li>
	
	</ul>
	


</body>
</html>