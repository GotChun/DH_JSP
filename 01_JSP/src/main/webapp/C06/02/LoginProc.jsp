<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    String userid = request.getParameter("userid");
    String password = request.getParameter("password");
    
    //유효성체크(Null)
    if(userid.isEmpty()){
    //	out.println("<script>alert('userID를 입력하세요');location.href='./login.html' </script>");  //프론트엔드로 넘기기
    	request.setAttribute("userid_msg","Id를 입력하세요");   //백엔드 작업
    	request.getRequestDispatcher("./login.jsp").forward(request, response);
    	return ;
    }
    if(password.isEmpty()){
    	//out.println("<script>alert('password를 입력하세요.');location.href='./login.html'</script> ");
    	request.setAttribute("password_msg","pass를 입력하세요");   //백엔드 작업
    	request.getRequestDispatcher("./login.jsp").forward(request, response);
    	return ;
    }
    	// response.sendRedirect("./login.html");
    
    //DB에 저장된 데이터 확인
   	//일치여부 확인
   	//만약에 회원이 없다면 회원가입을 하러 보냄
    //세션에 사용자 인증정보 저장
    session.setAttribute("id", userid);
    session.setAttribute("isLogined", true);    
    session.setAttribute("role", "Role_User");
    session.setMaxInactiveInterval(60);
    
    out.println("<script>alert('로그인 성공! Mainpage로 이동');location.href='Main.jsp'</script> ");
    
    
    
    %>