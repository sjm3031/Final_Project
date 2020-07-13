package com.cafe.erp.store.service;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cafe.erp.store.model.ProductOrderListDAO;
import com.cafe.erp.store.model.ProductOrderListDTO;

@Component
public class ProductOrderListSercviceImpl implements ProductOrderListSercvice {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void orderlistinsert(ProductOrderListDTO dto1) {
		ProductOrderListDAO dao1 = sqlSession.getMapper(ProductOrderListDAO.class);
		dao1.orderlistinsert(dto1);
		
	}
	
}
