<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인</h1>
	<form action="${pageContext.request.contextPath }/C06/03/LogProcess/logProc.jsp" method="post">
	<div>
		<label>${msg_userid}</label><br>
		<input type="text" name = "userid" />
	</div>
	<div>
		<label></label>
		<input type="text" name="password" />
	</div>
	<div>
		<input type="submit" value="로그인" />
	</div>
	
	</form>
	<div>
		${db_msg}
	</div>


</body>
</html>