<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String role= request.getParameter("role");
	String flag= request.getParameter("flag");
	
%>
USERNAME : <%=username%><br>
PASSWORD : <%=password%><br>
ROLE: <%=role %><br>


	<!-- js에서 jsp 로 전달하려면 form 태그 사용 , form 양식으로 만들어서 서버로 던진다 -->
	
	<form action = "C04JS_to_JSP.jsp" name ="myForm">
		<input name = "username" />
		<input name = "password" />
		<input name = "role" type="hidden" />
		<input name = "flag" value="true" type="hidden" />
	
	</form>
	
<script>
	const flag = '<%=request.getParameter("flag")%>';
	if(flag==null || flag==''){				//반복적으로 submit 이 되지 않도록 처리
		const form = document.myForm;
		form.username.value="홍길동";
		form.password.value="1234";
		form.role.value="ROLE_User";
		form.submit();
	}

</script>
	
</body>
</html>