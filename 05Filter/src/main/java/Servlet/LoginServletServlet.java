package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Type.ROLE;

//@WebServlet("/login.do")
public class LoginServletServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.getRequestDispatcher("/WEB-INF/view/login.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String username = req.getParameter("username");
		String password = req.getParameter("password");

		System.out.println("username : " + username + password);

		// 유효성

		// 서비스
		HttpSession session = req.getSession();

		if ("user1".equals(username)) {
			session.setAttribute("username", "user1");
			session.setAttribute("role", ROLE.ROLE_USER);
		} else if ("admin".equals(username)) { // username 이 admin 이나 member1 인지 확인
			session.setAttribute("username", "admin");
			session.setAttribute("role", ROLE.ROLE_ADMIN);
		} else if ("member1".equals(username)) {
			session.setAttribute("username", "member1");
			session.setAttribute("role", ROLE.ROLE_MEMBER);
		} else {
			session.setAttribute("username", "anonymus");
			session.setAttribute("role", null);
			;
		}

		// 뷰에 전송
		resp.sendRedirect(req.getContextPath() + "/main.do");

	}

}
