package Servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/Servlet_Test01")  //서블릿 주소명 설정   xml파일에서 
public class C01Servlet_Test extends HttpServlet{

	
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("destoryy..");
		//wfsdfd
		}

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("service..");
	}
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		System.out.println("init..");
	}
}
