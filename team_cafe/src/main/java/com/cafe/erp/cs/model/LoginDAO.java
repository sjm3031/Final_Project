package com.cafe.erp.cs.model;

import javax.servlet.http.HttpSession;

public interface LoginDAO {
	
	public CustomerDTO loginCheck(CustomerDTO dto);
	
	public void logout(HttpSession session);

}
 