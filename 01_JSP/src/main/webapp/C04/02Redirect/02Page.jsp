<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     		<%
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			String page01Value = request.getParameter("01Page");
			System.out.println("-----------02page---------------");
			System.out.println("username:" + username);
			System.out.println("password:" + password);
			System.out.println("Page01Value:" + page01Value);
			System.out.println("-----------------------");

			
		%> 
		
		
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<h1>02PAGE</h1>
	USERNAME : <%=username %><br>
	PASSWORD : <%=password%><br>
	page01Value : <%=page01Value%><br>
</body>
</html>