<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="C04.*" %>
    
   <%
   C04.UserDto userdto = new C04.UserDto();
   String username = request.getParameter("username");
   String password = request.getParameter("password");
   String role= request.getParameter("role");
   
   System.out.println("username :"+username);
   System.out.println("password :"+password);
   System.out.println("role :"+role);
   
   %>
    

		<%= username %>
		<%= password%>
		<%= role %>
	<% userdto.setUsername(username);   //userdto 객체에 정보 저장
	   userdto.setPassword(password); 
	   userdto.setRole(role); 
	   
	   request.setAttribute("UserDto", userdto);	//request 에 userdto 저장
	   
	   request.getRequestDispatcher("02ValidationCheck.jsp").forward(request, response);	//forwarding 
	   %>
	   
	
	
	<!--  
		UserDto객체에 전달받은 파라미터(username,password,role)를 저장(UserDto는 C04패키지생성후에 UserDto Class 생성)
		request에  setAttribute로 userDto 저장("userDto",userDto);
		02ValidationCheck.jsp 로 forwarding
	--> 
	