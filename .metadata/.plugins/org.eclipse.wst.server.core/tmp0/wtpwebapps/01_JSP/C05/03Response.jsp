<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <%@page import = "java.io.*" %>
	<%
		//redirect
		//response.sendRedirect("02Request.jsp");  //
		
		//response.sendError(HttpServletResponse.SC_REQUEST_TIMEOUT, "Request 요청잘못"); //타임 아웃 에러 발생 보내기
		//response.sendError(HttpServletResponse.SC_NOT_FOUND,"페이지를 못찾겠다 !");   404//400 번대 에러는 클라이언트 잘못
	//	response.sendError(HttpServletResponse.SC_FORBIDDEN,"권한 부족함!");   403//페이지를 이용할 권한이 없다
	
		response.sendError(HttpServletResponse.SC_BAD_GATEWAY,"서버장애발생");
	
		//새로고침
		//response.setIntHeader("Refresh", 3);
		
		
		
		//OutStream 추출
		//ServletOutputStream bout = response.getOutputStream();
		//bout.write('a');
		//bout.write(98);   //아스키코드로 b
		//bout.flush();	
		//bout.close();
		
		//PrintWriter 사용 (out내장객체)
		PrintWriter o = response.getWriter();  //문자열 형태로 html 코드를 전달  코드에 맞게 여러 처리가 된다
		o.println("<h1>TEST<h1>");
		
		o.write("<h2>TEST2<h2>");
		
		//결론 : 파라미터가 String 타입인 경우 write(String s), print(String s), println(String s)의 차이는 없다. 다만 println(String s)의 경우 개행문자가 들어가는 점만 유의!
	//
	%>
	
	<%@ page import="java.util.*" %>	
	<%=new Date() %>
	
	
</body>
</html>