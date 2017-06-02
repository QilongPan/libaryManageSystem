package impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import user.User;
import db.JDBConnection;

public class QueryUserAddress {
	public ArrayList<User> queryUserAddress(String address){
		ArrayList<User> users = new ArrayList<User> ();
		Connection conn = JDBConnection.getConnection();
		String sql = " "+"select * from user  where address like ?";
		
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ptmt.setString(1,"%"+address+"%");
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

}
