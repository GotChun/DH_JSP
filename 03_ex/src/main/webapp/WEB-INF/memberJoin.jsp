<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<form action="${pageContext.request.contextPath }/memberJoin.do" method="post">
	<input type="text" name="userid"/><br>
	<input type="text" name="username"/><br>
	<input type="text" name="phone"/><br>
	<input type="text" name="address"/><br>
	<input type="text" name="joindate"/><br>
	<input type="text" name="grade"/><br>
	<input type="text" name="citycode"/><br>
	<input type="submit" value="등록"/><br>
	<input type="submit" value="조회"/><br>
	</form>
	
	
	
	
</body>
</html>