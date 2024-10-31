package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dto.MemberDto;
import Utils.MemberDBUtils;

@WebServlet("/login.do")
public class LoginServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		req.getRequestDispatcher("/WEB-INF/login.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		MemberDto dto = null;
		//role 을 꺼내야함
		String userid = req.getParameter("userid");
		String password = req.getParameter("password");

		try {
			MemberDBUtils.conn();
		dto = 	MemberDBUtils.select(userid);
			MemberDBUtils.conn.close();
			MemberDBUtils.pstmt.close();
			MemberDBUtils.rs.close();
			System.out.println("DTO : "+ dto);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		Integer rolenum = (int)dto.getGrade();
		HttpSession session = req.getSession();
		
		if("admin".equals(userid)) {
			session.setAttribute("admin","admin" );
			session.setAttribute("role", 10);
		}else {
			session.setAttribute("other", "other");
			session.setAttribute("role", 0);	
		}
		
		resp.sendRedirect(req.getContextPath()+"/index.do");
	}

	
	
}
