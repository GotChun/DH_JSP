<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    Cookie cookie1 = new Cookie("c1","v1");
    cookie1.setPath("/");	//현재 도메인 내 모든 URI 에 전달
    
    Cookie cookie2 = new Cookie("c2","v2");
    cookie1.setPath("./");		//현재 패키지 내에 있는 페이지로만 전달
    
    Cookie cookie3 = new Cookie("c3","v3");
    cookie1.setPath("/01_JSP/C07/02/getCookie.jsp");	//지정 페이지로만 전달
    
    
    cookie1.setMaxAge(60*10);  //쿠키 유지 시간(-1 :기본값 :파일생성x,브라우저가 종료될때까지 작성)
    cookie2.setMaxAge(60*5);
    cookie3.setMaxAge(60*10);
    
    response.addCookie(cookie1);  //쿠키 추가
    response.addCookie(cookie2);  //쿠키 추가
    response.addCookie(cookie3);  //쿠키 추가
    //쿠키 따로 경로 지정 안하면 다 남아있음
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
	<a href="./getCookie.jsp">쿠키확인하기</a>
	
</body>
</html>