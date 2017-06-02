package impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import db.JDBConnection;
import user.MyBook;
import user.User;

public class UpdateImpl {
	public void updateUser(User user) {
		Connection conn = JDBConnection.getConnection();
		String sql = " "+"update user  set  password=?,sex=?,birthday=? ,telephoneNumber=?,postCode=?,address=?,realName=?,balance=? where userName = ?";
		PreparedStatement ptmt;
		try {
			ptmt = conn.prepareStatement(sql);
			ptmt.setString(1, user.getPassword());
			ptmt.setString(2,user.getSex());
			ptmt.setString(3,user.getBirthday());
			ptmt.setString(4,user.getTelephoneNumber());
			ptmt.setString(5,user.getPostCode());
			ptmt.setString(6,user.getAddress());
			ptmt.setString(7, user.getRealName());
			ptmt.setString(8,user.getBalance());
			ptmt.setString(9,user.getUserName());
			ptmt.execute();
		} catch (SQLException e)  {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void updateBook(MyBook book) {
		Connection conn = JDBConnection.getConnection();
		String sql = " "+"update book  set  bookName=?,author=?,price=? ,path=?,press=?,imageInformation=?,inventory=?,type=? where ISBN = ?";
		PreparedStatement ptmt;
		try {
			ptmt = conn.prepareStatement(sql);
			ptmt.setString(1,book.getBookName());
			ptmt.setString(2, book.getAuthor());
			ptmt.setString(3,book.getPrice());
			ptmt.setString(4,book.getPath());
			ptmt.setString(5,book.getPress());
			ptmt.setString(6,book.getImageInformation());
			ptmt.setString(7,book.getInventory());
			ptmt.setString(8, book.getType());
			ptmt.setString(9,book.getISBN());
			ptmt.execute();
		} catch (SQLException e)  {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
