<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    Cookie cookie1 = new Cookie("myCookie1","myCookie1Value");
    Cookie cookie2 = new Cookie("myCookie2","myCookie2Value");
    
    cookie1.setMaxAge(30);  //쿠키 유지 시간(-1 :기본값 :파일생성x,브라우저가 종료될때까지 작성)
    cookie2.setMaxAge(60*3);
    
    response.addCookie(cookie1);  //쿠키 추가
    response.addCookie(cookie2);  //쿠키 추가
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