<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="${pageContext.request.contextPath }/C06/03/LogProcess/joinProc.jsp" method="post">
	<div>
		<label>${msg_userid}</label><br>
		<input type="text" name = "userid" />
	</div>
	<div>
		<label></label>
		<input type="text" name="password" />
	</div>
	<div>
		<input type="submit" value="회원가입" />
	</div>
	
	</form>
	<div>
		${db_msg}
	</div>


</body>
</html>