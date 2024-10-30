package Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dto.MemberDto;
import Utils.MemberDBUtils;

@WebServlet("/memberInfo.do")
public class MemberInfoServlet extends HttpServlet {

	MemberDBUtils memberDB = new MemberDBUtils();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("getgetget...!!");
		
		
		try {
			memberDB.conn();
			List<MemberDto> list =MemberDBUtils.select();
			memberDB.conn.close();
												
			req.setAttribute("list", list);			//모든 데이터를 다 넣으면 데이터가 많을 수도 있어서 페이징 처리를 하는게 좋음
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	
		req.getRequestDispatcher("/WEB-INF/memberInfo.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		System.out.println("POSTPOST");
		
		
	}

	
	
	
}
