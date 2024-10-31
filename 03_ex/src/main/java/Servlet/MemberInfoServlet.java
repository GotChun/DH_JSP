package Servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dto.MemberDto;

@WebServlet("/memberInfo.do")
public class MemberInfoServlet extends HttpServlet{
	
	private MemberDto memberDto;
	
	private MemberInfoServlet(MemberDto memberDto) {
		this.memberDto = memberDto;
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("get dodoidnex");
		req.getRequestDispatcher("WEB-INF/memberInfo.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int userid = Integer.parseInt( req.getParameter("userid"));
		String username = req.getParameter("username");
		String phone = req.getParameter("phone");
		String address = req.getParameter("address");
		String joindates = req.getParameter("joindate");
		char grade = req.getParameter("grade").charAt(0);
		String citycode = req.getParameter("citycode");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date joindate = sdf.parse(joindates);
		
		   memberDto = new MemberDto();
           memberDto.setCustno(userid);
           memberDto.setCustname(username);
           memberDto.setPhone(phone);
           memberDto.setAddress(address);
           memberDto.setJoindate(joindate);
           memberDto.setGrade(grade);
           memberDto.setCity(citycode);
		
           
           req.getRequestDispatcher("WEB-INF/memberInfo").forward(req, resp);
		
		
	}
	
	
	
}
