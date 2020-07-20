package com.cafe.erp.sale.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cafe.erp.sale.model.ProductCategoryDAO;
import com.cafe.erp.sale.model.ProductCategoryVO;
import com.cafe.erp.sale.model.ProductDAO;
import com.cafe.erp.sale.model.ProductVO;

@Component
public class ProductCategoryServiceImpl implements ProductCategoryService {

	
	@Autowired
	private SqlSession sqlSession;			//SqlSessionTemplete	
	
	
	@Override
	public void insertProductCategory(ProductCategoryVO vo) {
		// TODO Auto-generated method stub
		ProductCategoryDAO productCategoryDAO = sqlSession.getMapper(ProductCategoryDAO.class);
		productCategoryDAO.insertProductCategory(vo);
	}

	@Override
	public List<ProductCategoryVO> getProductCategoryList(HashMap map) {
		// TODO Auto-generated method stub
		ProductCategoryDAO productCategoryDAO = sqlSession.getMapper(ProductCategoryDAO.class);
		return productCategoryDAO.getProductCategoryList(map);
	}

	@Override
	public ProductCategoryVO getProductCategoryByCode(int num) {
		ProductCategoryDAO productCategoryDAO = sqlSession.getMapper(ProductCategoryDAO.class);
		return productCategoryDAO.getProductCategoryByCode(num);

	}

	@Override
	public int updateProductCategory(ProductCategoryVO vo) {
		ProductCategoryDAO productCategoryDAO = sqlSession.getMapper(ProductCategoryDAO.class);
		return productCategoryDAO.updateProductCategory(vo);
	}

	@Override
	public int deleteProductCategory(ProductCategoryVO vo) {
		ProductCategoryDAO productCategoryDAO = sqlSession.getMapper(ProductCategoryDAO.class);
		return productCategoryDAO.deleteProductCategory(vo);
	}

}
