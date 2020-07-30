package com.cafe.erp.accounting.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cafe.erp.accounting.model.*;





@Component
public class AccountsServiceImpl implements AccountsService {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<AccountsDTO> getAccountsList(HashMap map) {
		// TODO Auto-generated method stub
		AccountsDAO dao = sqlSession.getMapper(AccountsDAO.class);
		return dao.getAccountsList(map);
	}

	@Override
	public int getAccountsCount() {
		// TODO Auto-generated method stub
		AccountsDAO dao = sqlSession.getMapper(AccountsDAO.class);
		return dao.getAccountsCount();
	}			

	

}