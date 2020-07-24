package com.cafe.erp.pos.model;

public class PosOrderlistVO {
	private int orderList_code; // 주문내역 코드
	private int cafe_product_code; // 상품 코드
	private int orderList_count; // 수량
	private int order_code; // 주문코드
	public int getOrderList_code() {
		return orderList_code;
	}
	public void setOrderList_code(int orderList_code) {
		this.orderList_code = orderList_code;
	}
	public int getCafe_product_code() {
		return cafe_product_code;
	}
	public void setCafe_product_code(int cafe_product_code) {
		this.cafe_product_code = cafe_product_code;
	}
	public int getOrderList_count() {
		return orderList_count;
	}
	public void setOrderList_count(int orderList_count) {
		this.orderList_count = orderList_count;
	}
	public int getOrder_code() {
		return order_code;
	}
	public void setOrder_code(int order_code) {
		this.order_code = order_code;
	}
	
	
	
}
