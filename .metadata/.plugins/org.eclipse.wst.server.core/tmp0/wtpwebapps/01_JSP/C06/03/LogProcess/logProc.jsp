<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   <%
   String userid = request.getParameter("userid");
   String password= request.getParameter("password");
   
   if(isValid(userid,password,request)){
	   //유효성 체크 오류 발생한 경우
	   
	   request.getRequestDispatcher("../login.jsp").forward(request,response);
	   return ;
   }
   
   UserDto dbUser = select(userid);
   if(dbUser==null){
	   //회원정보 x -> 회원가입페이지로 이동
	   request.setAttribute("db_msg", "이미 존재하는 회원");
	   request.getRequestDispatcher("../join.jsp").forward(request, response);
   }else{
	   //회원정보 o , 비밀번호 확인
	   if(!password.equals(dbUser.getPassword())){
		   request.setAttribute("db_pw", "패스워드 불일치");
		   request.getRequestDispatcher("../login.jsp").forward(request,response);
		   return ;
		   
	   }
   }
	
   //인증 이후 처리
   session.setAttribute("id", dbUser.getUserid());
   session.setAttribute("Role", dbUser.getRole());
   session.setMaxInactiveInterval(30);
   out.print("<script>alert('로그인 성공\n메인페이지로 이동하겠다');location.href='01_JSP/C06/03/main.jsp'	</script>");
   
   %>
   
   <%@ page import ="java.sql.*" %>
   <%@ page import ="C06.*" %>
   <%!
   HttpServletRequest request;
   
   private String url = "jdbc:mysql://localhost/bookdb?serverTimezone=UTC";
   private String id = "root";
   private String pw = "1234";
   
   private Connection conn;
   private PreparedStatement pstmt;
   private ResultSet rs;
   
   		private boolean isValid(String id,String pw,  HttpServletRequest request){
	   if(id.trim().isEmpty()){
		   request.setAttribute("msg_userid","id입력하셈");
		  return false;
	   }
	   if(pw.trim().isEmpty()){
		   request.setAttribute("msg_password","비번을 입력하셈");
		  return false;
	   }
	   return true;
   }
   		
   	private UserDto select(String userid) throws SQLException{
  		UserDto dto = null;
   		try{
   		Class.forName("com.mysql.cj.jdbc.Driver");
		conn=DriverManager.getConnection(url,id,pw);
   		pstmt = conn.prepareStatement("select * from tbl_user where username=?");
   		pstmt.setString(1, userid);
   		
   		rs = pstmt.executeQuery();

   		if(rs!=null && rs.next()) {
   			String username = rs.getString("username");
   			String password = rs.getString("password");
   			String role = rs.getString("role");
   			
   			UserDto userdto = new UserDto(username,password,role);

   		}
   		}catch(Exception e){
   			e.printStackTrace();
   		}
   		
   		conn.close();
   		rs.close();
   		pstmt.close();
   		return dto;
   	
   	
   	}
   	

   %>
   <%
   
   %>
   
   