package Controller.Book;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.SubController;
import Domain.Common.Dto.BookDto;

public class BookAddController implements SubController{
	//예외처리함수
	public Map<String,Object> ExceptionHandler(Exception e){
		Map<String,Object> exMap = new HashMap();
		exMap.put("success", false);
		exMap.put("message", e.getMessage());
		exMap.put("exception", e);
		return exMap;
	}
	
	@Override
	public void execute(HttpServletRequest req,HttpServletResponse resp) {
		
		System.out.println("book");
		try {
		//Method = GET		페이지 표시
		String method = req.getMethod();
		if("GET".equals(method)) {
			System.out.println("BC GET book/add..");
			req.getRequestDispatcher("/WEB-INF/view/book/add.jsp").forward(req, resp);
			return ;
		}
		
		//Method = Post  도서 등록처리
		
		//파라미터 받기
		Integer bookCode = Integer.parseInt(req.getParameter("bookCode")) ;
		String bookName= req.getParameter("bookName");
		String publisher = req.getParameter("publisher");
		String isbn = req.getParameter("isbn");
		BookDto bookDto = new BookDto( bookCode,bookName,publisher,isbn);
		System.out.println("bookDto : " + bookDto);
		
		//유효성 체크
		if(!isValid(bookDto)) {
			
		}
		//서비스 실행
		
		//뷰로 이동(내용전달)
		resp.sendRedirect(req.getContextPath()+ "/");
	}catch(Exception e){
		e.printStackTrace();
	}

	
	
	}
	private boolean isValid(Object obj ) {
		return true;
	}
	
}
