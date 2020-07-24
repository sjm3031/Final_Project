package com.cafe.erp.userWeb.service;


import java.util.HashMap;
import java.util.List;

import com.cafe.erp.sale.model.ProductVO;
import com.cafe.erp.userWeb.model.OrderWebDTO;
import com.cafe.erp.userWeb.model.ProductCartAddDTO;
import com.cafe.erp.userWeb.model.ProductCartAddJoinDTO;
import com.cafe.erp.userWeb.model.ProductCartDTO;

public interface OrderWebService {
	
	
	public int getOrderWebCount(int customer_code);				//해당 고객의 총 주문 음료수 가져오기
	public int getOrderWebTotal(int customer_code);				//해당 고객의 총 주문 금액 가져오기
	public void insertOrderWeb(OrderWebDTO dto);				//주문테이블에 저장
	
	public int getOrderWebRecent();								//주문테이블의 가장 최근 코드값 가져오기
	public void insertOrderWebList(HashMap map);			//주문내역테이블에저장
	public List<ProductCartAddDTO> getProductCartAddList();		//장바귀 옵션내역 테이블 가져오기
	
}
