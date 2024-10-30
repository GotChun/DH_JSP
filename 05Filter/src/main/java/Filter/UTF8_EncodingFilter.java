package Filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;


//@WebFilter("/*")    //   /*  : 모든 URL , *.do : 확장자가 do 인 모든 요청
public class UTF8_EncodingFilter implements Filter{

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		System.out.println("Filter Start");
		
		request.setCharacterEncoding("UTF-8");
		chain.doFilter(request, response);
		
		response.setContentType("text/html; charset=UTF-8");
		
		System.out.println("END !!");
	}

	
}
