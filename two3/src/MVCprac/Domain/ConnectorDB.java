package MVCprac.Domain;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ConnectorDB {
	private static String url = "jdbc:mysql://127.0.0.1:3306/lckdb";
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
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;	

	public static Connection getConnection() throws SQLException {
		return DriverManager.getConnection(url,id,pw);
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