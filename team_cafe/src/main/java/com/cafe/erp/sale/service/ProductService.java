package com.cafe.erp.sale.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.cafe.erp.sale.model.ProductVO;

public interface ProductService {

	public void insertProduct(ProductVO vo);				//쓰기
	public List<ProductVO> getProductList(HashMap map);		//읽기
	public ProductVO getProductByCode(int num);				//읽기 by num
	public int updateProduct(ProductVO vo);					//수정
	public int deleteProduct(ProductVO vo);					//삭제

	
	public int getProductCount();					//전체 record 수

	public String restore(MultipartFile cafe_product_img);
	public boolean writeFile(MultipartFile multipartFile, String saveFileName)throws IOException;
	
	
	public List<ProductVO> getProductPlusCategoryList(HashMap map);		//읽기
	
	public List<ProductVO> getProductListByCategory(int num); // 카테고리별로 제품list 가져오기	

}
