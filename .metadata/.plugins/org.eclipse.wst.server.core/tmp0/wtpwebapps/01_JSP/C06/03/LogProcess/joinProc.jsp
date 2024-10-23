<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   <%
   String userid = request.getParameter("userid");
   String password= request.getParameter("password");
   
   if(!isValid(userid,password,request)){
	   //유효성 체크 오류 발생한 경우
	   request.getRequestDispatcher("../join.jsp").forward(request,response);
	   return ;
   }
   
   UserDto dbUser = select(userid);
   if(dbUser==null){
	   //조회된 userid 가 없음 -> insert 처리
	   UserDto dto = new UserDto();
	   dto.setUserid(userid);
	   dto.setPassword(password);
	   int result = insert(dto);
	   if(result>0)
		   out.print("<script>alert('회원가입 성공') </script>");
	   else
		   out.print("<script>alert('회원가입 실패')</script>");
   }else{
	   request.setAttribute("db_msg", "이미 존재하는 회원");
	   request.getRequestDispatcher("../join.jsp").forward(request, response);
	   return ;
   }

   
   
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
   			
   			 dto = new UserDto(username,password,role);

   		}
   		}catch(Exception e){
   			e.printStackTrace();
   		}
   		
   		conn.close();
   		rs.close();
   		pstmt.close();
   		return dto;
   	
   	
   	}
   	
 	private int insert(UserDto userDto)  {
  		int result = 0;
   		try{
   		Class.forName("com.mysql.cj.jdbc.Driver");
		conn=DriverManager.getConnection(url,id,pw);
   		pstmt = conn.prepareStatement("insert into tbl_user values(?,?,?,?)");
   		pstmt.setString(1, userDto.getUserid());
   		pstmt.setString(2, userDto.getPassword());
   		pstmt.setString(3, "Role_User");
   		pstmt.setInt(4, 0);
   		
   		result = pstmt.executeUpdate();
		
   	
  
   	
   	
   	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{	pstmt.close(); 	}catch(Exception e2){}
		try{	conn.close();	}catch(Exception e3){}
	}
   		return result;
 	}
   %>
   <%
   
   %>
   
   