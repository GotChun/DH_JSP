<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>hihi login</h1>
	
	
			<h1>네 반갑습니다</h1>
			
			<div class="message">
				${param.message}
			</div>
	<form action="${pageContext.request.contextPath}/login.do" method="post" >
		<input type="text" name="username"/>
		<input type="password" name="password"/>
		<input type="submit" value="login"/>
		
		</form>
</body>
</html>