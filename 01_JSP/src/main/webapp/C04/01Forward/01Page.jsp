<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        		<%
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			System.out.println("-----------01page---------------");
			System.out.println("username:" + username);
			System.out.println("password:" + password);
			System.out.println("-----------------------");
			
			//request 속성 추가
			request.setAttribute("01Page", "01Value");
			
			//Forward 처리
			request.getRequestDispatcher("02Page.jsp").forward(request,response);
			//2번 페이지로 이동하게 한다. 언제? 요청을 받는순간   매개변수의 request,  response 를 그대로 가져간다.
			
		%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

			<h1>01Page </h1>
		USERNAME : <%=username %><br>
		PASSWORD : <%=password %><br>
</body>
</html>