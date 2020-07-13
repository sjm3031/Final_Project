package com.cafe.erp.store.model;

import java.util.Date;

public class OrderDTO {
	private int cart_number, cart_stock_quantity, cart_stock_price, stock_code;
	private int productOrder_code, prodectOrder_total, cart_total;
	private String cart_stock_productname, cart_stock_detailname;
	private Date productOrder_date;

	
	public int getCart_number() {
		return cart_number;
	}
	public void setCart_number(int cart_number) {
		this.cart_number = cart_number;
	}
	public int getCart_stock_quantity() {
		return cart_stock_quantity;
	}
	public void setCart_stock_quantity(int cart_stock_quantity) {
		this.cart_stock_quantity = cart_stock_quantity;
	}
	public int getCart_stock_price() {
		return cart_stock_price;
	}
	public void setCart_stock_price(int cart_stock_price) {
		this.cart_stock_price = cart_stock_price;
	}
	public String getCart_stock_productname() {
		return cart_stock_productname;
	}
	public void setCart_stock_productname(String cart_stock_productname) {
		this.cart_stock_productname = cart_stock_productname;
	}
	public String getCart_stock_detailname() {
		return cart_stock_detailname;
	}
	public void setCart_stock_detailname(String cart_stock_detailname) {
		this.cart_stock_detailname = cart_stock_detailname;
	}
	public int getStock_code() {
		return stock_code;
	}
	public void setStock_code(int stock_code) {
		this.stock_code = stock_code;
	}
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
	public int getCart_total() {
		return cart_total;
	}
	public void setCart_total(int cart_total) {
		this.cart_total = cart_total;
	}
}

