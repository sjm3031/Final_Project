package com.cafe.erp.sale.model;

import java.util.HashMap;
import java.util.List;

public interface ProductAddDAO {

	public void insertProductAdd(ProductAddDTO dto);				//쓰기
	public List<ProductAddDTO> getProductAddList(HashMap map);		//읽기
	public ProductAddDTO getProductAddByCode(int num);				//읽기 by num
	public int updateProductAdd(ProductAddDTO dto);					//수정
	public int deleteProductAdd(ProductAddDTO dto);					//삭제
}
