<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Forward 방식 페이지 요청: Request 내용은 유지한 채 또 다른 page 경로로 이동
	클라이언트 URL 경로는 최초요청시의 URL 로 유지가 된다
	Request 객체의 내용은 최쵸 요청 내용이 유지된다
	
	하나의 요청 - 응답 주기를 가진다
	
	-->
	
	<form action="01Page.jsp">
		<input type="text" name="username" />
		<input type="text" name="password" />
		<button>작동</button>
		
		
	</form>
</body>
</html>