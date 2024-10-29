package Servlet;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dto.MemberDto;
import Utils.MemberDbUtils;

@WebServlet("/memberJoin.do")
public class MemberJoinServlet extends HttpServlet{

	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("get dodoidnex");
		
		try {
			MemberDbUtils.conn();
			int maxCustno = MemberDbUtils.maxCustno();

			List<MemberDto> list = MemberDbUtils.select();
			
			MemberDbUtils.rs.close();
			MemberDbUtils.pstmt.close();
			MemberDbUtils.conn.close();
			
			LocalDateTime today = LocalDateTime.now();
			
			

		
		req.getRequestDispatcher("WEB-INF/memberJoin.jsp").forward(req, resp);
	}catch(Exception e) {
		
	}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		//파라미터 받기 , 이게 mvc 의 컨트롤러 같은 역할이라 보면 될듯 ?
	 int custno = Integer.parseInt(req.getParameter("custno"));
	 String custname = req.getParameter("custname");
	 String phone = req.getParameter("phone");
	 String address = req.getParameter("address");

	 
	 DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd");
	 LocalDate joindate = LocalDate.parse(req.getParameter("joindate"),formatter);  //위의 포맷팅의 형식이 맞다면 문자열로 바꿔준다 ?
	 System.out.println("Date : "+joindate);
	 
	 char grade = req.getParameter("grade").charAt(0);
	 String city = req.getParameter("city");

	 MemberDto memberDto = new MemberDto(custno,custname,phone,address,joindate,grade,city);
	 System.out.println(memberDto);
		
try {
		MemberDbUtils.rs.close();
		MemberDbUtils.pstmt.close();
		MemberDbUtils.conn.close();
	}catch(Exception e) {
		e.printStackTrace();
	}
	

	//뷰로 이동(ReDirect)
	resp.sendRedirect(req.getContextPath()+ "/index.do");
	
	}

	
	
	
}
