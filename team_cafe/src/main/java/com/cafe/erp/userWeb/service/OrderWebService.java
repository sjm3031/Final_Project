package com.cafe.erp.userWeb.service;


import java.util.HashMap;
import java.util.List;

import com.cafe.erp.sale.model.ProductVO;
import com.cafe.erp.userWeb.model.OrderWebDTO;
import com.cafe.erp.userWeb.model.OrderWebListAddDTO;
import com.cafe.erp.userWeb.model.OrderWebListAddJoinDTO;
import com.cafe.erp.userWeb.model.ProductCartAddDTO;
import com.cafe.erp.userWeb.model.ProductCartAddJoinDTO;
import com.cafe.erp.userWeb.model.ProductCartDTO;

public interface OrderWebService {
	
	
	public int getOrderWebCount(int customer_code);				//해당 고객의 총 주문 음료수 가져오기
	public int getOrderWebTotal(int customer_code);				//해당 고객의 총 주문 금액 가져오기
	public void insertOrderWeb(OrderWebDTO dto);				//주문테이블에 저장
	
	public int getOrderWebRecent();								//주문테이블의 가장 최근 코드값 가져오기
	public void insertOrderWebList(HashMap map);			//주문내역테이블에저장
	public List<ProductCartAddDTO> getProductCartAddList();		//장바귀 옵션내역 테이블 가져오기\
	public void insertOrderWebListAdd(ProductCartAddDTO dto);			//주문내역테이블에저장
	
	public List<OrderWebDTO> getOrderWebList(int customer_code);		//해당 고객의 주문 list 불러오기
	public List<OrderWebListAddJoinDTO> getOrderWebListAddJoinList(int order_web_code);		// 주문번호에 해당하는 주문내역들 조인해서 가져요기..
	
	public int getOrderWebCheck();				//order_web_check 가 0 인 레코드수 가져오기 >> 주문접수가 안된 web주문건수 가져오기	

}
