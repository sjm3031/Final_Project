package com.cafe.erp.userWeb.model;

import java.util.HashMap;
import java.util.List;

import com.cafe.erp.sale.model.ProductVO;

public interface ProductCartDAO {

	
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
	
	public void deleteProductCartAddAll(int cart_num);					//주문이 등록되면 장바구니 옵션내역 삭제..
	public void deleteProductCartAll(int customer_code);					//주문이 등록되면 장바구니 내역 삭제..
	
	
	
	public void updateListCount(HashMap Map);	//수량만 수정				
	public void deleteListProduct(int cart_code);	//코드로 삭제
	public void deleteListCartAdd(int cart_code);	//CART_CODE_CART_ADD코드로 삭제
	
	
	
}
