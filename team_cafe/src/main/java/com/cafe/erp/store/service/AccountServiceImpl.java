package com.cafe.erp.store.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cafe.erp.store.model.AccountDAO;
import com.cafe.erp.store.model.AccountDTO;
import com.cafe.erp.store.model.StockDTO;

@Component
public class AccountServiceImpl implements AccountService {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insertAccount(AccountDTO dto) {
		System.out.println("insertAccount 진입");
		AccountDAO dao = sqlSession.getMapper(AccountDAO.class);
		dao.insertAccount(dto);
		
	}

	@Override
	public List<AccountDTO> getAccountList(HashMap map) {
		System.out.println("getAccountList 진입");
		AccountDAO dao = sqlSession.getMapper(AccountDAO.class);
		
		return dao.getAccountList(map);
	}

	@Override
	public AccountDTO getAccount(int stock_code) {
		System.out.println("getAccount 진입");
		AccountDAO dao = sqlSession.getMapper(AccountDAO.class);
		
		return dao.getAccount(stock_code);
	}

	@Override
	public int getAccountCount() {
		System.out.println("getAccountCount 진입");
		AccountDAO dao = sqlSession.getMapper(AccountDAO.class);
		return dao.getAccountCount();
	}

	@Override
	public int updateAccount(AccountDTO dto) {
		System.out.println("updateAccount 진입");
		AccountDAO dao = sqlSession.getMapper(AccountDAO.class);
		return dao.updateAccount(dto);
	}

	@Override
	public int deleteAccount(AccountDTO dto) {
		System.out.println("deleteAccount 진입");
		AccountDAO dao = sqlSession.getMapper(AccountDAO.class);
		return dao.deleteAccount(dto);
	}

}
