/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.96
 * Generated at: 2024-10-23 02:10:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.C06._03.LogProcess;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import C06.*;

public final class logProc_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {


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
   	
 	private int insert(UserDto userDto) throws Exception {
  		int result = 0;
   		try{
   		Class.forName("com.mysql.cj.jdbc.Driver");
		conn=DriverManager.getConnection(url,id,pw);
   		pstmt = conn.prepareStatement("insert into tbl_user values(?,?,?,?)");
   		pstmt.setString(1, userDto.getUserid());
   		pstmt.setString(2, userDto.getPassword());
   		pstmt.setString(3, "role");
   		pstmt.setInt(4, 0);
   		
   		result = pstmt.executeUpdate();
		
   	
  
   	
   	
   	}catch(Exception e){
   		e.printStackTrace();
   	}
   		conn.close();
   		pstmt.close();
   		rs.close();
   		return result;
 	}
   
  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(7);
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("C06");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("   ");

   String userid = request.getParameter("userid");
   String password= request.getParameter("password");
   
   if(isValid(userid,password,request)){
	   //유효성 체크 오류 발생한 경우
	   request.getRequestDispatcher("../login.jsp").forward(request,response);
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
		   out.print("<script>alert('회원가입 성공');location.href='/01_JSP/C06/03/login.jsp'; </script>");
	   else
		   out.print("<script>alert('회원가입 실패');location.href='/01_JSP/C06/03/login.jsp'; </script>");
   }else{
	   request.setAttribute("db_msg", "이미 존재하는 회원");
	   request.getRequestDispatcher("../join.jsp").forward(request, response);
	   return ;
   }

   
   
   
      out.write("\r\n");
      out.write("   \r\n");
      out.write("   \r\n");
      out.write("   \r\n");
      out.write("   ");
      out.write("\r\n");
      out.write("   ");

   
   
      out.write("\r\n");
      out.write("   \r\n");
      out.write("   ");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
