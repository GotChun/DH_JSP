<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper">
	
	<%@include file = "/resources/layout/header.jsp"%>
	
	<section>
	<form action="/login.do" method="post" name="loginform">
	<input type="text" name="userid"/>
	<input type="text" name="password"/>
	<input type="submit" value="login"/>
	</form>
	
	</section>
	
	
	
	<%@include file = "/resources/layout/footer.jsp"%>
	
	</div>
</body>
</html>