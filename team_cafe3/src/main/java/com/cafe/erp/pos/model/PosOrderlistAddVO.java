package com.cafe.erp.pos.model;

public class PosOrderlistAddVO {
	private int orderList_code; //주문 내역 코드
	private int PRODUCT_ADD_CODE; //옵션 콬드
	
	public int getOrderList_code() {
		return orderList_code;
	}
	public void setOrderList_code(int orderList_code) {
		this.orderList_code = orderList_code;
	}
	public int getPRODUCT_ADD_CODE() {
		return PRODUCT_ADD_CODE;
	}
	public void setPRODUCT_ADD_CODE(int pRODUCT_ADD_CODE) {
		PRODUCT_ADD_CODE = pRODUCT_ADD_CODE;
	}
	
	
	
}
