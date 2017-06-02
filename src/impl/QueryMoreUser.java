package impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import db.JDBConnection;
import user.MyBook;
import user.User;

public class QueryMoreUser {
	
	public ArrayList<User> queryMoreUser(String userName){
		ArrayList<User> users = new ArrayList<User> ();
		Connection conn = JDBConnection.getConnection();
		String sql = " "+"select * from user  where userName like ?";
		
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ptmt.setString(1,"%"+userName+"%");
			ResultSet rs = ptmt.executeQuery();
			while(rs.next()){
				User g=new User();
				g.setUserName(rs.getString("userName"));
				g.setPassword(rs.getString("password"));
				g.setSex	(rs.getString("sex"));
				g.setBirthday(rs.getString("birthday"));
				g.setTelephoneNumber(rs.getString("telephoneNumber"));
				g.setPostCode(rs.getString("postCode"));
				g.setAddress(rs.getString("address"));
				g.setRealName(rs.getString("realName"));
				g.setBalance(rs.getString("balance"));
				users.add(g);
			}
		return users;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return users;
	}

	public ArrayList<MyBook> queryMoreBook(String bookName){
		ArrayList<MyBook> books = new ArrayList<MyBook> () ;
		Connection conn = JDBConnection.getConnection();
		String sql = " "+"select * from book  where bookName like ?";
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ptmt.setString(1,"%"+bookName+"%");
			ResultSet rs = ptmt.executeQuery();
			while(rs.next()){
				MyBook g = new MyBook();
				g.setISBN(rs.getString("ISBN"));
				g.setBookName(rs.getString("bookName"));
				g.setAuthor	(rs.getString("author"));
				g.setPrice(rs.getString("price"));
				g.setPath(rs.getString("path"));
				g.setPress(rs.getString("press"));
				g.setImageInformation(rs.getString("imageInformation"));
				g.setInventory(rs.getString("inventory"));
				g.setType(rs.getString("type"));
				books.add(g);
			}
		return books;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return books;
}
	
	
}
