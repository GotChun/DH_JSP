<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


		<h1>join</h1>	
	<form action="${pageContext.request.contextPath }/join.do" method="post">
		<input type="text" name="userid"/><br>
		<input type="text" name="password"/><br />
		<input type="submit" value="회원가입"/>
	</form>

</body>
</html>