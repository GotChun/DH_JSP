<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form action="./LoginProc.jsp" method="post">  //로그인의 정보를 form 에 담아 로그인프로세스 페이지로 정보를 담아 보낸다.
		<div>
		<label><%=(request.getAttribute("userid_msg")!=null)?request.getAttribute("userid_msg"):"" %></label><br>
		<input name="userid" />  
		</div>
		<div>
			<label><%=(request.getAttribute("password_msg")!=null)?request.getAttribute("password_msg"):"" %></label><br>
			<input type="password" name="password" /> 
		</div>
		<div>
			<button>로그인</button>
			</div>
	</form>
	
	
</body>
</html>