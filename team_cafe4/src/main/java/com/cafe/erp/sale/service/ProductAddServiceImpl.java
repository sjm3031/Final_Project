package com.cafe.erp.sale.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cafe.erp.sale.model.ProductAddDAO;
import com.cafe.erp.sale.model.ProductAddDTO;

@Component
public class ProductAddServiceImpl implements ProductAddService {

	
	@Autowired
	private SqlSession sqlSession;			//SqlSessionTemplete	

	@Override
	public void insertProductAdd(ProductAddDTO dto) {
		// TODO Auto-generated method stub
		ProductAddDAO productAddDAO = sqlSession.getMapper(ProductAddDAO.class);
		productAddDAO.insertProductAdd(dto);
	}

	@Override
	public List<ProductAddDTO> getProductAddList(HashMap map) {
		// TODO Auto-generated method stub
		ProductAddDAO productAddDAO = sqlSession.getMapper(ProductAddDAO.class);
		return  productAddDAO.getProductAddList(map);
	}

	@Override
	public ProductAddDTO getProductAddByCode(int num) {
		// TODO Auto-generated method stub
		ProductAddDAO productAddDAO = sqlSession.getMapper(ProductAddDAO.class);
		return productAddDAO.getProductAddByCode(num);
	}

	@Override
	public int updateProductAdd(ProductAddDTO dto) {
		// TODO Auto-generated method stub
		ProductAddDAO productAddDAO = sqlSession.getMapper(ProductAddDAO.class);
		return productAddDAO.updateProductAdd(dto);
	}

	@Override
	public int deleteProductAdd(ProductAddDTO dto) {
		// TODO Auto-generated method stub
		ProductAddDAO productAddDAO = sqlSession.getMapper(ProductAddDAO.class);
		return productAddDAO.deleteProductAdd(dto);
	}
	
	
	
}
