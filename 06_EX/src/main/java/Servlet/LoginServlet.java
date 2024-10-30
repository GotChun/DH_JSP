package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dto.MemberDto;

@WebServlet("/login.do")
public class LoginServlet extends HttpServlet{
MemberDto memberDto;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		req.getRequestDispatcher("/WEB-INF/login.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String userid = req.getParameter("userid");
		String password = req.getParameter("password");
		
		
		Integer rolenum = (int)memberDto.getGrade();
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
