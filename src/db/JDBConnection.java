package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBConnection {
	private static final String URL  =  "jdbc:mysql://127.0.0.1:3306/libarymanagesystem" ;
	private static final String USER  = "root";
	private static final String PASSWORD  =  "123456";
	private static Connection conn  = null;
	static{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(URL,USER,PASSWORD);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public  static  Connection getConnection() {
		return conn;
	}
	
	public static void main(String[] args) throws Exception  {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(URL,USER,PASSWORD);
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select userName,realName from user");
		while(rs.next())
			System.out.println(rs.getString("userName")+","+rs.getString("realName"));
	}
		
}
