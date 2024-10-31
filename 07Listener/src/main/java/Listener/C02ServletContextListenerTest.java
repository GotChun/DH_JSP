package Listener;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class C02ServletContextListenerTest implements ServletContextAttributeListener {

	@Override
	public void attributeAdded(ServletContextAttributeEvent scae) {
		// TODO Auto-generated method stub
		
		System.out.println("sace attribute added !!");
	}

	@Override
	public void attributeRemoved(ServletContextAttributeEvent scae) {
		// TODO Auto-generated method stub
		ServletContextAttributeListener.super.attributeRemoved(scae);
		System.out.println("한순간 내몸에 익숙했던 네 속에 날 밀어내");		//이것은 
	}

	@Override
	public void attributeReplaced(ServletContextAttributeEvent scae) {
		// TODO Auto-generated method stub
		System.out.println("Replaced !!!!");	//주소창 값이 바뀔 때 사용되는듯하다.
	}

	
	
	
	
}
