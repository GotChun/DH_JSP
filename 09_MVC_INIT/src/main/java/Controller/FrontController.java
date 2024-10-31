package Controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.Book.BookAddController;

public class FrontController extends HttpServlet{
	
	private Map<String,SubController> map = new HashMap();
	
	public FrontController(){
		System.out.println("[FC] FrontController()....");
	}
	
	
	@Override
	public void init(ServletConfig config) throws ServletException {		//init 알아서 실행됨
		// TODO Auto-generated method stub
		System.out.println("init..");
		
		String path = config.getServletContext().getContextPath();		//프로젝트 경로
		map.put(path+"/", new HomeController());
		
		//book
		map.put(path+ "/book/add", new BookAddController());
		map.put("/book/update", null);
		map.put("/book/delete", null);
		map.put("/book/get", null);
		map.put("/book/getAll", null);
		//user
		map.put("/user/Join", null);
		map.put("/user/Info", null );
		map.put("/user/remove", null);
		map.put("/user/login",  null);
		map.put("/user/logout",  null);
		
	}

	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//endPoint
		System.out.println("[FC] execute()....");
		String endPoint =req.getRequestURI(); //사용자의 요청EP를 확인(/book,/user)
		System.out.println("END POINT :" + endPoint);
		SubController controller =  map.get(endPoint);	//요청사항을 처리할 SubController get
		controller.execute(req,resp);	
	}

}


