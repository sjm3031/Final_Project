package com.cafe.erp.store.model;

public class ProductOrderListDTO {
	private int productOrderList_code, productOrderList_count, productOrder_code, stock_code;
	private int stock_price;
	private String stock_productname, stock_detailname;
	
	
	public int getProductOrderList_code() {
		return productOrderList_code;
	}

	public void setProductOrderList_code(int productOrderList_code) {
		this.productOrderList_code = productOrderList_code;
	}

	public int getProductOrderList_count() {
		return productOrderList_count;
	}

	public void setProductOrderList_count(int productOrderList_count) {
		this.productOrderList_count = productOrderList_count;
	}

	public int getProductOrder_code() {
		return productOrder_code;
	}

	public void setProductOrder_code(int productOrder_code) {
		this.productOrder_code = productOrder_code;
	}

	public int getStock_code() {
		return stock_code;
	}

	public void setStock_code(int stock_code) {
		this.stock_code = stock_code;
	}

	public int getStock_price() {
		return stock_price;
	}

	public void setStock_price(int stock_price) {
		this.stock_price = stock_price;
	}

	public String getStock_productname() {
		return stock_productname;
	}

	public void setStock_productname(String stock_productname) {
		this.stock_productname = stock_productname;
	}

	public String getStock_detailname() {
		return stock_detailname;
	}

	public void setStock_detailname(String stock_detailname) {
		this.stock_detailname = stock_detailname;
	}
}
