<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="00Error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		Boolean isAdded = (Boolean)request.getAttribute("isAdded");
	if(isAdded!=null&&isAdded)
	{
	%>	
		<h1>회원가입완료</h1>
		<a href="00Main.jsp">메인페이지 이동</a>
	<%
	response.sendRedirect("00Main.jsp");
	}
	else{
		out.print("회원가입실패");
	}
	
	%>

	
	<!-- 
		회원가입이 완료되었습니다 라는 메시지를 화면에 표시
		
		a태그 만들어서 클릭하면 00Main.jsp 페이지로 리다이렉팅 하기
	 -->


</body>
</html>