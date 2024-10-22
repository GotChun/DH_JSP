<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%
	String username = request.getParameter("username");		//요청 파라미터를 받는 내장객체
	String password= request.getParameter("password");
	String bgColor = request.getParameter("bg");
	System.out.printf("%s , %s , %s , \n",username,password,bgColor);		//중요한 코드라고함				//get post 를 해보는 작업을 해보았다.
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgColor=<%=bgColor.equals("") ? "gary" : bgColor %>>  

	<h1>요청 결과 확인</h1>
	USERNAME = <%=username %><br>
	PASSWORD= <%=password %><br>

	EL_TEST = ${param.username}<br>
	EL_TEST = ${param.password}<br>
	
</body>
</html>