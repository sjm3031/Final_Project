package com.cafe.erp.userWeb.service;


import java.util.HashMap;
import java.util.List;

import com.cafe.erp.sale.model.ProductVO;
import com.cafe.erp.userWeb.model.ProductCartAddDTO;
import com.cafe.erp.userWeb.model.ProductCartAddJoinDTO;
import com.cafe.erp.userWeb.model.ProductCartDTO;

public interface ProductCartService {

	public List<ProductCartDTO> getProductCartNumByCustomerProduct(ProductCartDTO dto);		//고객코드와 상품코드가 일치하는 장바구니코드(리스트) 가져오기
	public List<ProductCartAddDTO> getProductAddCodeByCartCode(int cartcode);				//해당 장바구니코드의 옵션(추가사항)들을 가져오기 
	 
	public void insertProductCart(ProductCartDTO dto);				//장바구니 테이블 insert
	public void insertProductCartAdd(ProductCartAddDTO dto);				//장바구니 옵션내역 insert
	public void updateProductCartNum(ProductCartDTO dto);						// 동일한 내역이 있기때문에 수량만 추가한다.
	public ProductCartDTO getProdctCatrByRecent();						//가장 최근에 저장한 장바구니 데이터 가져오기
	public ProductCartAddJoinDTO getCartJoinByCustomerProduct(ProductCartDTO dto);			//고객코드와 상품코드가 일치하는 장바구니코드(리스트)중에서  옵션(추가사항)이 없는 record 가져오기..
	
	public List<ProductCartAddJoinDTO> getCartListByCustomer(int customer_code);			//로그인한 고객의 장바구니 리스트 가져오기
	public List<ProductVO> getProductList();		// 판매상품리스트 가져오기
	
	

	public List<ProductCartDTO> getProductCartListByCustomer(int customer_code);		//읽기
	public ProductVO getProductViewByCode(int productcode);		// 판매상품 읽기 by code

	
	public ProductCartDTO getProductCategoryByCode(int num);				//읽기 by num
	public int updateProductCategory(ProductCartDTO dto);					//수정
	public int deleteProductCategory(ProductCartDTO dto);					//삭제

}
