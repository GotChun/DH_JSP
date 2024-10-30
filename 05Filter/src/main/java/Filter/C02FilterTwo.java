package Filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

//@WebServlet()
public class C02FilterTwo implements Filter{

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		
		//request 전처리 코드
		System.out.println("Filter oneoneone START !");
		chain.doFilter(req, resp);  //
		
		
		//response 후 처리 코드
		System.out.println("reponse ONEone START !");
		
	}

	
}
