package com.cafe.erp.userWeb.model;

import java.util.Date;

public class OrderWebDTO {
	
	private int order_web_code;
	private int order_web_total;
	private int order_web_count;
	private int customer_code;
	private Date order_web_date;
	
	
	public int getOrder_web_code() {
		return order_web_code;
	}
	public void setOrder_web_code(int order_web_code) {
		this.order_web_code = order_web_code;
	}
	public int getOrder_web_total() {
		return order_web_total;
	}
	public void setOrder_web_total(int order_web_total) {
		this.order_web_total = order_web_total;
	}
	public int getOrder_web_count() {
		return order_web_count;
	}
	public void setOrder_web_count(int order_web_count) {
		this.order_web_count = order_web_count;
	}
	public int getCustomer_code() {
		return customer_code;
	}
	public void setCustomer_code(int customer_code) {
		this.customer_code = customer_code;
	}
	public Date getOrder_web_date() {
		return order_web_date;
	}
	public void setOrder_web_date(Date order_web_date) {
		this.order_web_date = order_web_date;
	}
	
	
	
	
}
