package impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import db.JDBConnection;


public class DeleteImpl {
	
	public void deleteUser(String userName) {
		Connection conn = JDBConnection.getConnection();
		String sql = " "+"delete  from user  where userName = ?";
		try {
			PreparedStatement ptmt  =  conn.prepareStatement(sql);
			ptmt.setString(1,userName);
			ptmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void deleteMyBook(String ISBN) {
		Connection conn = JDBConnection.getConnection();
		String sql = " "+"delete  from book  where ISBN = ?";
		try {
			PreparedStatement ptmt  =  conn.prepareStatement(sql);
			ptmt.setString(1,ISBN);
			ptmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
