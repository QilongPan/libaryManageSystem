package impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import db.JDBConnection;
import user.MyBook;
import user.User;

public class UserImpl {
	public void saveUser(User user) throws SQLException{
		Connection conn=JDBConnection.getConnection();
		String sql = " "+"insert into user"+" (userName,password,sex,birthday,telephoneNumber,postCode,address,realName,balance)"+"values("+"?,?,?,?,?,?,?,?,?)";
		PreparedStatement ptmt = conn.prepareStatement(sql);
		ptmt.setString(1,user.getUserName());
		ptmt.setString(2,user.getPassword());
		ptmt.setString(3, user.getSex());
		ptmt.setString(4,user.getBirthday());
		ptmt.setString(5, user.getTelephoneNumber());
		ptmt.setString(6,user.getPostCode());
		ptmt.setString(7, user.getAddress());
		ptmt.setString(8,user.getRealName());
		ptmt.setString(9, user.getBalance());
		ptmt.execute();
	}
	
	public void saveBook(MyBook book) throws SQLException{
		Connection conn=JDBConnection.getConnection();
		String sql = " "+"insert into book"+" (ISBN,bookName,author,price,path,press,imageInformation,inventory,type)"+"values("+"?,?,?,?,?,?,?,?,?)";
		PreparedStatement ptmt = conn.prepareStatement(sql);
		ptmt.setString(1,book.getISBN());
		ptmt.setString(2,book.getBookName());
		ptmt.setString(3, book.getAuthor());
		ptmt.setString(4,book.getPrice());
		ptmt.setString(5,book.getPath());
		ptmt.setString(6,book.getPress());
		ptmt.setString(7,book.getImageInformation());
		ptmt.setString(8,book.getInventory());
		ptmt.setString(9, book.getType());
		ptmt.execute();
	}
	
}
