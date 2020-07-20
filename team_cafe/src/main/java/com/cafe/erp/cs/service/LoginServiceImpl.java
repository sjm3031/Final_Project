package com.cafe.erp.cs.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cafe.erp.cs.model.CustomerDAO;
import com.cafe.erp.cs.model.CustomerDTO;
import com.cafe.erp.cs.model.LoginDAO;

@Component
public class LoginServiceImpl implements LoginService {

	@Autowired
	private SqlSession sqlSession;	

	@Override
	public CustomerDTO loginCheck(CustomerDTO dto) {
	

		
		LoginDAO loginDAO = sqlSession.getMapper(LoginDAO.class);
	
		CustomerDTO dto2 = loginDAO.loginCheck(dto);
		
		
		
		return dto2;
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate();

	}

}
