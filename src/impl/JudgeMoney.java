package impl;

import java.util.ArrayList;

import user.User;

public class JudgeMoney {
	
	public boolean judgeMoney(User user,int money) {
		QueryMoreUser quer = new QueryMoreUser() ;
		ArrayList<User> users = quer.queryMoreUser(user.getUserName()) ;
		String moneyString = users.get(0).getBalance() ; 
		int balance = Integer.parseInt(moneyString) ;
		if(balance > money) {
			return true ;
		}
		return false ;
	}


}
