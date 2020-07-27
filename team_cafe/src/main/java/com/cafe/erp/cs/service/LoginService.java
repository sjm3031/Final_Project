package com.cafe.erp.cs.service;

import javax.servlet.http.HttpSession;

import com.cafe.erp.cs.model.CustomerDTO;

public interface LoginService {
	
	public CustomerDTO loginCheck(CustomerDTO dto);
	
	public void logout(HttpSession session);

}
