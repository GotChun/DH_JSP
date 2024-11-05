package Controller.User;

import java.io.File;
import java.io.FileInputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Controller.SubController;
import Domain.Common.Service.UserServiceImpl;
import Properties.UploadProperties;

public class UserProfilePathController implements SubController {

	private UserServiceImpl userService;
	
	public UserProfilePathController() throws ServletException {
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
			String username = (String) session.getAttribute("username");	//접속중인지 판단
			//디렉토리 설정
			String path = UploadProperties.uploadPath
							+ File.separator			//이게 경로 안의 \ , / 같은 역할인데 운영체제 맞게 자동으로 지원
							+ UploadProperties.profilePath
							+ File.separator
							+ username
							+ File.separator;
			
			File file = new File(path = "profileImg.jpg");
			
			String mimeType = "application/octet-stream";
			
			resp.setContentType(mimeType);
			resp.setContentLengthLong(file.length());
			
			try {
				FileInputStream fin = new FileInputStream(file);
				ServletOutputStream sout = resp.getOutputStream();
				byte [] buff = new byte[1024];
				while(true) {
					int cnt = fin.read(buff);
					if(cnt==1)
						break;
						sout.write(buff,0,cnt);
						sout.flush();
				}
				
				
				
			}catch(Exception e) {
				e.printStackTrace();
			}
		
			
			
	
			
			
			
		}catch(Exception e) {
			
				try {
					ExceptionHandler(e,req,resp);
				
				} catch (ServletException e1) {
				
					 try{  throw new ServletException(e1); }catch(Exception e2) {e2.printStackTrace();}
				}

			System.out.println("[BC] Exception 발생.." + e);
		}
		
		
	}
	

	
	
	
	
	
}
