package com.cafe.erp.store.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cafe.erp.store.model.AccountDTO;
import com.cafe.erp.store.model.ProductOrderDAO;
import com.cafe.erp.store.model.ProductOrderDTO;

@Component
public class ProductOrderServiceImpl implements ProductOrderService {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void orderinsert(ProductOrderDTO dto) {
		ProductOrderDAO dao = sqlSession.getMapper(ProductOrderDAO.class);
		dao.orderinsert(dto);
		
	}

	@Override
	public List<ProductOrderDTO> showorderlist(HashMap map) {
		ProductOrderDAO dao = sqlSession.getMapper(ProductOrderDAO.class);
		return dao.showorderlist(map);
	}

	@Override
	public int getordercount() {
		ProductOrderDAO dao = sqlSession.getMapper(ProductOrderDAO.class);
		return dao.getordercount();
	}

	@Override
	public List<AccountDTO> getaccountnumber() {
		ProductOrderDAO dao = sqlSession.getMapper(ProductOrderDAO.class);
		return dao.getaccountnumber();
	}
	
}
