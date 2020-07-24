package com.cafe.erp.userWeb.model;

import java.util.HashMap;
import java.util.List;

public interface OrderWebDAO {
	
	
	public int getOrderWebCount(int customer_code);				//해당 고객의 총 주문 음료수 가져오기
	public int getOrderWebTotal(int customer_code);				//해당 고객의 총 주문 금액 가져오기
	public void insertOrderWeb(OrderWebDTO dto);				//주문테이블에 저장
	
	public int getOrderWebRecent();								//주문테이블의 가장 최근 코드값 가져오기
	public void insertOrderWebList(HashMap map);			//주문내역테이블에저장
	public List<ProductCartAddDTO> getProductCartAddList();		//장바귀 옵션내역 테이블 가져오기
	public void insertOrderWebListAdd(ProductCartAddDTO dto);			//주문내역테이블에저장

	public List<OrderWebDTO> getOrderWebList(int customer_code);		//해당 고객의 주문 list 불러오기
	public List<OrderWebListAddJoinDTO> getOrderWebListAddJoinList(int order_web_code);		// 주문번호에 해당하는 주문내역들 조인해서 가져요기..
	
	public int getOrderWebCheck();				//order_web_check 가 0 인 레코드수 가져오기 >> 주문접수가 안된 web주문건수 가져오기
	
	public List<OrderWebDTO> getOrderWebListAll(String date); //pos화면에서 오늘날짜의 모든 목록을 가져올때
	public void updateOrderWebCheck(int order_web_code);		// 해당주문의 주문접수 확인 처리하기
}
