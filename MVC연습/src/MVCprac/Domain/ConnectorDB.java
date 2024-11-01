package MVCprac.Domain;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ConnectorDB {
	private static String url = "jdbc:mysql://127.0.0.1:3306/lck_teams";
	private static String id="root";
	private static String pw="1234";
	
	private ConnectorDB() {
	}

	private static ConnectorDB instance;
	
	public static ConnectorDB getInstance() {
		if(instance==null)
			instance = new ConnectorDB();
		return instance;
		
	}
	PreparedStatement pstmt = null;
	ResultSet rs = null;	

	public static Connection getConnection() {
		Connection conn = null;
		try {
		
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("DB연결 성공");
			conn = DriverManager.getConnection(url,id,pw);
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return conn;
	}
	
	public static void close(Connection connection) {
		if(connection != null) {
			try {
				connection.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
}

}