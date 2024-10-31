package DB;

import java.io.IOException;
import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet("/dataSource")
public class C02DataSource extends HttpServlet{

	DataSource dataSource;
	Connection conn;
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		// TODO Auto-generated method stub
		
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		
		try {
			
			Context initContext = new InitialContext();		
			Context  envContext = (Context)initContext.lookup("java:/comp/env");   //lookup 찾다 ?	//java.comp.env 이게 고정이라고 함
			dataSource = (DataSource) envContext.lookup("jdbc/MysqlDB");
			conn = dataSource.getConnection();
			System.out.println("Connection" + conn);
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	
	
	
}
