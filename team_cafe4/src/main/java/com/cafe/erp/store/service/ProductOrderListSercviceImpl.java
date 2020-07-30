package com.cafe.erp.store.service;


import java.util.HashMap;
import java.util.List;

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

	@Override
	public List<ProductOrderListDTO> detailshow(HashMap map) {
		ProductOrderListDAO dao = sqlSession.getMapper(ProductOrderListDAO.class);
		
		return dao.detailshow(map);
	}

	@Override
	public int detailcount(int productOrder_code) {
		System.out.println("detailcount 진입ㅇㅁㄴ");
//		ProductOrderListDTO dto = new ProductOrderListDTO();
//		System.out.println(dto.getProductOrder_code());
		ProductOrderListDAO dao = sqlSession.getMapper(ProductOrderListDAO.class);
		
		return dao.detailcount(productOrder_code);
	}
	
}
