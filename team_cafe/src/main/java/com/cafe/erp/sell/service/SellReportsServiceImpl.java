package com.cafe.erp.sell.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cafe.erp.sell.model.SellDTO;
import com.cafe.erp.sell.model.SellReportsDAO;

@Component
public class SellReportsServiceImpl implements SellReportsService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<SellDTO> pcount() {
		SellReportsDAO dao = sqlSession.getMapper(SellReportsDAO.class);
		return dao.pcount();
	}

	@Override
	public int pcounttotal() {
		SellReportsDAO dao = sqlSession.getMapper(SellReportsDAO.class);
		return dao.pcounttotal();
	}

	@Override
	public List<SellDTO> accountslist() {
		SellReportsDAO dao = sqlSession.getMapper(SellReportsDAO.class);
		return dao.accountslist();
	}
	
	

}
