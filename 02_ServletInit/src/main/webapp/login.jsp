<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Post</h1>
	<form action="${pageContext.request.contextPath }/login.do" method="post">
		<input type="text" name="userid"/><br>
		<input type="text" name="password"/><br />
		<input type="submit" value="로그인"/>
	</form>
	
	
	<h1>Get</h1>
		<form action="${pageContext.request.contextPath }/login.do" method="get">
		<input type="text" name="userid"/><br>
		<input type="text" name="password"/><br />
		<input type="submit" value="로그인"/>
	</form>
		
	
	
	
	
	
</body>
</html>
