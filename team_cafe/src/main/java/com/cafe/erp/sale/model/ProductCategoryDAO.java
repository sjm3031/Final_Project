package com.cafe.erp.sale.model;

import java.util.HashMap;
import java.util.List;

public interface ProductCategoryDAO {

	public void insertProductCategory(ProductCategoryVO vo);				//쓰기
	public List<ProductCategoryVO> getProductCategoryList(HashMap map);		//읽기
	public ProductCategoryVO getProductCategoryByCode(int num);				//읽기 by num
	public int updateProductCategory(ProductCategoryVO vo);					//수정
	public int deleteProductCategory(ProductCategoryVO vo);					//삭제
}
