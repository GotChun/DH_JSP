<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ page import="java.net.*" %>
         		<%
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			System.out.println("-----------01page---------------");
			System.out.println("username:" + username);
			System.out.println("password:" + password);
			System.out.println("-----------------------");
			
			//request 속성 추가
			request.setAttribute("01Page", "01Value");
			
			//redirect 처리
			response.sendRedirect("02Page.jsp?username="+URLEncoder.encode(username,"UTF-8")+username+"&password="+password+"&01PAGE=01Value"); //02로 창이 바뀌는데 기존 값이 초기화됨 = request 가 공유가 안됨
											//직접 username 파라미터를 전달해봄
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