<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import = "org.springframework.security.crypto.bcrypt.*" %>
	
<%!
	String dbUsername = "user1";
%>
	<%
	//파라미터 받기
	String username= request.getParameter("username");
	String password= request.getParameter("password");
	String idchk = request.getParameter("idchk");
	
	//유효성 체크
	
	//인증처리
	if(!"user1".equals(username)){
		request.setAttribute("message","ID가 일치하지 않습니다");
		request.getRequestDispatcher("./login.jsp").forward(request,response);
		return ;
	}
	if(!"1234".equals(password)){
		request.setAttribute("message","비밀번호가 일치하지 않습니다");
		request.getRequestDispatcher("./login.jsp").forward(request,response);
		return ;
	}
		
	//인증 후 처리
	session.setAttribute("id",username);
	session.setAttribute("role","Role_User");
	//idchk 여부확인(cookie)
	System.out.println("idchk : " +idchk);
	Cookie idChkStatus=null;
	Cookie idCookie=null;
	if(idchk!=null){//체크가 되어있다면
		idChkStatus = new Cookie("idChkStatus","true");
	
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		System.out.println(passwordEncoder);
		passwordEncoder.encode(username);
		
		idCookie = new Cookie("id",passwordEncoder.encode(username));
	}else{
		idChkStatus = new Cookie("idChkStatus","null");
		idCookie = new Cookie("id",null);
		idChkStatus.setMaxAge(0);
		idCookie.setMaxAge(0);
	}
	response.addCookie(idChkStatus);
	response.addCookie(idCookie);
	
	
	%>
	
	<script>
	alert("로그인 성공!\n메인페이지로 이동합니다")
	location.href="main.jsp";
	</script>
	
	
	