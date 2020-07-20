package com.cafe.erp.sale.service;

import java.util.HashMap;
import java.util.List;

import com.cafe.erp.sale.model.ProductCategoryVO;
import com.cafe.erp.sale.model.ProductVO;

public interface ProductCategoryService {

	public void insertProductCategory(ProductCategoryVO vo);				//쓰기
	public List<ProductCategoryVO> getProductCategoryList(HashMap map);		//읽기
	public ProductCategoryVO getProductCategoryByCode(int num);				//읽기 by num
	public int updateProductCategory(ProductCategoryVO vo);					//수정
	public int deleteProductCategory(ProductCategoryVO vo);					//삭제

}
