package com.cafe.erp.pos.model;

import java.util.Date;

public class PosOrderVO {
	
	private int order_code; // 주문코드
	private int order_total;	// 총 금액
	private int order_count; // 건수
	private String order_accountType; // 결제 수단
	private Date order_date; // 주문일자
	private String customer_phone; // 고객 코드
	
	public int getOrder_code() {
		return order_code;
	}
	public void setOrder_code(int order_code) {
		this.order_code = order_code;
	}
	public int getOrder_total() {
		return order_total;
	}
	public void setOrder_total(int order_total) {
		this.order_total = order_total;
	}
	public int getOrder_count() {
		return order_count;
	}
	public void setOrder_count(int order_count) {
		this.order_count = order_count;
	}
	public String getOrder_accountType() {
		return order_accountType;
	}
	public void setOrder_accountType(String order_accountType) {
		this.order_accountType = order_accountType;
	}
	public Date getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}
	public String getCustomer_phone() {
		return customer_phone;
	}
	public void setCustomer_phone(String customer_phone) {
		this.customer_phone = customer_phone;
	}
	
	
	
}
