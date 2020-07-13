package com.cafe.erp.store.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

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
	
}
