<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage = "00Error.jsp"%>
    
    <%@ page import ="C04.*" %>
    
    <%
    UserDto userdto = (UserDto)request.getAttribute("UserDto"); //join 에서 저장된 key 값을 불러온다
    
    if(userdto.getUsername().isEmpty()){
    	throw new Exception("userDto is null..");
    }
    if(userdto.getPassword().isEmpty()){
    	throw new Exception("pass is null");
    }
    if(userdto.getRole().isEmpty()){
    	throw new Exception("Role is nothing");
    }
    
    request.getRequestDispatcher("03InsertDB.jsp").forward(request, response);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>VALIDATION CHECK PAGE</h1>
	
	<%
	
	%>
	
	<!-- 
		가입 요청된 데이터의 유효성 체크
		username,password,role 이 올바르게 param 으로 전달되었는지 확인
		유효성 체크는 null 체크("", isEmpty()) 만 기본으로 할 것
			유효성 체크 오류 발생시 new Exception() 으로 00 Error.jsp 로 이동처리할것
			
			정상처리라면 03InsertDB.jsp 로 포워딩할것.
	 -->
</body>
</html>