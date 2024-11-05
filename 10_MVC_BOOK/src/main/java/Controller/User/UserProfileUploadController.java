package Controller.User;

import java.io.File;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import Controller.SubController;
import Domain.Common.Service.UserServiceImpl;
import Properties.UploadProperties;

public class UserProfileUploadController implements SubController {

	private UserServiceImpl userService;
	
	public UserProfileUploadController() throws ServletException {
		try {
			this.userService = UserServiceImpl.getInstance();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			ExceptionHandler(e,null,null);
			//예외 처리 함수로 던지기
		}
	}

	public void ExceptionHandler(Exception e,HttpServletRequest req,HttpServletResponse resp) throws ServletException{
		try {
			req.setAttribute("exception", e);
			req.getRequestDispatcher("/WEB-INF/view/user/error.jsp").forward(req, resp);
		}catch(Exception ex) {
			throw new ServletException(ex);
		}

	}
	
	
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		try {
			HttpSession session = req.getSession();
			String username = (String) session.getAttribute("username");
			//디렉토리 설정
			String dirPath = UploadProperties.uploadPath
							+ File.separator			//이게 경로 안의 \ , / 같은 역할인데 운영체제 맞게 자동으로 지원
							+ UploadProperties.profilePath
							+ File.separator
							+ username;
			
			//디렉토리 생성
			File dir = new File(dirPath);
			if(!dir.exists())
				dir.mkdirs();
			
			
			Part part = req.getPart("profileImage");
//			System.out.println(part.getName());
//			System.out.println(part.getHeader("profileImage"));
//			System.out.println(part.getSize());
//			for(String name : part.getHeaderNames()) {
//				System.out.println("header: " + name);
//				System.out.println("value : " + part.getHeader(name));
//			}
//			
			part.write(dirPath+File.separator+"profileImg.jpg");
			
			
			System.out.println("TEST!!");
			PrintWriter out  = resp.getWriter();
			out.write("<h1>RESPONSE SUCCESS!!</h1>");
				//출력물 전달 ? 뭐 하면 내용 출력되게하는 부분인ㄷ
			
			
		}catch(Exception e) {
			
				try {
					ExceptionHandler(e,req,resp);
				
				} catch (ServletException e1) {
				
					 try{  throw new ServletException(e1); }catch(Exception e2) {e2.printStackTrace();}
				}

			System.out.println("[BC] Exception 발생.." + e);
		}
		
		
	}
	
	private boolean isValid(Object dto) {
		return true;
	}

	
	
	
	
	
	
}
