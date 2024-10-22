<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="00Error.jsp"%>
     <%@ page import = "java.sql.*" %>  <!-- sql 임포트 -->
     <%@ page import="C04.*" %>
     <%
     UserDto userdto = (UserDto)request.getAttribute("UserDto");
     %>
     
     
    <%
    String url = "jdbc:mysql://localhost:3306/tmpdb";
    String pw = "1234";
    String id = "root";
    
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    %>
    
    		 <%
		 try{
		 	Class.forName("com.mysql.cj.jdbc.Driver");
		 	System.out.println("Driver Access..");
		 	Connection conn = DriverManager.getConnection(url,id,pw);
		 	System.out.println("Get Connection !");
		 	
		 	pstmt = conn.prepareStatement("insert into tbl_user values(?,?,?)");
		 	pstmt.setString(1,userdto.getUsername());
		 	pstmt.setString(2,userdto.getPassword());
		 	pstmt.setString(3,userdto.getRole());
		 	
		 	int result = pstmt.executeUpdate();
		 	request.setAttribute("isAdded", result>0);
		 	
		 	if(result>0)
		 		System.out.println("Insert..");
		 	else
		 		System.out.println("Falied insert..");
		 	
		 	conn.close();
		 	rs.close();
		 	pstmt.close();
		 }catch(Exception e){
			 e.printStackTrace();
		 }
		 
		 request.getRequestDispatcher("04End.jsp").forward(request, response); 
		 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		DB : bookDB 내의 tbl_user 에 회원가입 요청 파라미터 넣기
		jdbc import 경로 : java.sql.*
		
		정상처리되면 forwarding 경로 04End.jsp
		sqlException 발생시 00Error.jsp 이동 (new Exception())
		 -->
	<h1>Insert to DB</h1>
	
		 
</body>
</html>