package Listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;


//@WebListener
public class C01ServletContextListenerTest implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		// ------
		System.out.println("Listener Destoyed..!");
		sce.getServletContext().setAttribute("종료","value");
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		System.out.println("Listener START..!!");
		sce.getServletContext().setAttribute("CTX_key", "CTX_value");	//서블릿 CONTEXT에 속성 추가
		
	}
	
	

	
	
	
}
