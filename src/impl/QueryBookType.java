package impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import user.MyBook;
import db.JDBConnection;

public class QueryBookType {
	public ArrayList<MyBook> queryBookType(String type){
		ArrayList<MyBook> books = new ArrayList<MyBook> ();
		Connection conn = JDBConnection.getConnection();
		String sql = " "+"select * from book  where type like ?";
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ptmt.setString(1,"%"+type+"%");
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
