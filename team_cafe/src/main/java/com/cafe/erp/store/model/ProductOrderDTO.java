package com.cafe.erp.store.model;

import java.util.Date;

public class ProductOrderDTO {
	private int productOrder_code, prodectOrder_total;
	private Date productOrder_date;
	
	
	public int getProductOrder_code() {
		return productOrder_code;
	}
	public void setProductOrder_code(int productOrder_code) {
		this.productOrder_code = productOrder_code;
	}
	public int getProdectOrder_total() {
		return prodectOrder_total;
	}
	public void setProdectOrder_total(int prodectOrder_total) {
		this.prodectOrder_total = prodectOrder_total;
	}
	public Date getProductOrder_date() {
		return productOrder_date;
	}
	public void setProductOrder_date(Date productOrder_date) {
		this.productOrder_date = productOrder_date;
	}
}
