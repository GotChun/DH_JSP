package Filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Utils.MemberDBUtils;

public class PermessionFilter implements Filter{
	MemberDBUtils DB = new MemberDBUtils();
	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;
		
		HttpSession session = request.getSession();
		Integer role = (Integer) session.getAttribute("role");
		if(session ==null || session.getAttribute("role") ==null || (int)session.getAttribute("role") != 10 ) {
			response.sendRedirect(request.getContextPath()+ "/index.do");
			return ;
		}
		
	}

}
