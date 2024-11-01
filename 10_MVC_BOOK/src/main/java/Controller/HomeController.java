package Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HomeController implements SubController{

	
	
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
	
		try {
			System.out.println("HC..get /");
			req.getRequestDispatcher("/WEB-INF/view/index.jsp").forward(req, resp);
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
