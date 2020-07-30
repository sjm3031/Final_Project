package com.cafe.erp.cs.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

import com.cafe.erp.cs.model.CustomerDAO;
import com.cafe.erp.cs.model.CustomerDTO;




@Component
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private SqlSession sqlSession;			

	@Override
	public void insertBoard(CustomerDTO dto) {
		
	
		CustomerDAO boardDAO = sqlSession.getMapper(CustomerDAO.class);
		boardDAO.insertBoard(dto);
		
	}

	@Override
	public List<CustomerDTO> getBoardList(HashMap map) {
		CustomerDAO dao = sqlSession.getMapper(CustomerDAO.class);
		
		return dao.getBoardList(map);
	}

	@Override
	public CustomerDTO getBoard(int customer_code) {
		CustomerDAO dao = sqlSession.getMapper(CustomerDAO.class);
		
		return dao.getBoard(customer_code); //num 값 넣어서 값을 보냄
	}

	@Override
	public int updateBoard(CustomerDTO dto) {
		CustomerDAO dao = sqlSession.getMapper(CustomerDAO.class);	
		
		return dao.updateBoard(dto);
	}

	@Override
	public int deleteBoard(CustomerDTO dto) {
		CustomerDAO dao = sqlSession.getMapper(CustomerDAO.class);	
		return dao.deleteBoard(dto);
	}



	@Override
	public int getBoardCount() {
		CustomerDAO dao = sqlSession.getMapper(CustomerDAO.class);
		return dao.getBoardCount();
	}



}