<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   		<%
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			String Page01Value = (String)request.getAttribute("01Page");
			System.out.println("-----------02page---------------");
			System.out.println("username:" + username);
			System.out.println("password:" + password);
			System.out.println("Page01Value:" + Page01Value);
			System.out.println("-----------------------");
			
			//Forward 처리
		 	request.getRequestDispatcher("03Page.jsp").forward(request,response); 
			/* request.getRequestDispatcher("02Page.jsp").forward(request,response);
			//2번 페이지로 이동하게 한다. 언제? 요청을 받는순간   매개변수의 request,  response 를 그대로 가져간다. */
			
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
	

</body>
</html>