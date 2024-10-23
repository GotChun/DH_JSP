<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ page import = "org.springframework.security.crypto.bcrypt.*" %>
	<%!
	String dbUsername = "user1";
%>
	
<%
	Cookie[] cookies = request.getCookies();
	String id ="";
	String idChkStatus=null;

	if(cookies!=null){
		for(Cookie c : cookies){
			
			
			if(c.getName().equals("idChkStatus")){
				idChkStatus = c.getValue();	
			}
			if(c.getName().equals("id")){
				id = dbUsername;
			}  
			
			
		}
	}
	System.out.println("id" + id);
// 비밀번호를 저장하면 해쉬값으로 나오는대 이 해쉬값으로 비교함 (원문은 사용자가 알고있어야함) 
%>

	

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

</head>
<body>

	<div class="wrapper">
		<header></header>
		<main
			style="width: 100%; height: 100vh; display: flex; justify-content: center; align-items: center;">
			<form action="./loginProc.jsp" method="post"
				style="width: 300px; padding: 20px; border: 1px solid; border-radius: 10px;">
				<div>
					<h2 style="text-align: center;">Login</h2>
				</div>
				<div class="m-2">
					<label for=""></label>
					 <input type="text" class="form-control" name="username" value=<%=(id!=null)?id:"" %>/>
				</div>
				<div class="m-2">
					<label for=""></label>
					 <input type="text" class="form-control" name="password"/>
				</div>

				<div class="m-2">
					<input type="checkbox" class="form-check-input" name="idchk" <%=(idChkStatus!=null)?"checked":"" %>/>
					 <label for="" class="form-check-label">ID저장</label>
				</div>

				<div class="m-2">
					<button class="btn btn-primary w-100">로그인</button>
				</div>
				<div class="m-2">
					<button class="btn btn-success w-100">회원가입</button>
				</div>
				<div class="m-2" style="text-align:center;font-size:.8rem;color:orange;">
					${message}
				</div>
			</form>

		</main>
		<footer></footer>
	</div>





</body>
</html>