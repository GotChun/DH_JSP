<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String msg1 = "HELLO 1";
	String msg2 = "HELLO 2";
	String msg3 = "HELLO 3";
	String msg4 = "HELLO 4";
	request.setAttribute("message", "TEST");
%> 
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<script>
	// js 안에서 jsp 표현식을 사용
		const message1 = '<%=msg1%>';   //따옴표를 써야 문자열이라고 처리가 된다. 안그러면 에러가뜸
		const message2 = '<%=msg2%>';	
		const message3 = '<%=msg3%>';
		const message4 = '<%=msg4%>';
		console.log(message1);
		console.log(message2);
		console.log(message3);
		console.log(message4);
		
		const message5 = "${message}"; //보간법 ? 은 아니고 el표현식 , 이것도 따옴표를 넣어야 문자열로 인식한다고 한다.
	</script>
</body>
</html>