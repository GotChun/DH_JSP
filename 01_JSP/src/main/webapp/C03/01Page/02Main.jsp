<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="02Error.jsp" %>    <%//오류가 발생하면 02Error 페이지로 넘어간다 %>
<%
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String addr = request.getParameter("addr");		//문자열이 비어있다면 오류 발생시키기
	if(name.isEmpty())
		throw new Exception("이름 입력하셈 !");	 	
	if(age.isEmpty())
		throw new Exception("나이좀 입력하셈 !");
	if(addr.isEmpty())
		throw new Exception("주소 입력하셈 !");
%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

이름 : <%=name %><br>
나이 : <%=age%><br>
주소 : <%=addr %><br>

</body>
</html>