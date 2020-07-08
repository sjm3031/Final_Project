package com.cafe.erp.store.model;

import org.springframework.web.multipart.MultipartFile;

public class StockDTO {
	private int stock_code;
	private String stock_productname, stock_detailname, stock_standard, stock_price;
	private String stock_image;
	
	public int getStock_code() {
		return stock_code;
	}
	public void setStock_code(int stock_code) {
		this.stock_code = stock_code;
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
	public String getStock_standard() {
		return stock_standard;
	}
	public void setStock_standard(String stock_standard) {
		this.stock_standard = stock_standard;
	}
	public String getStock_price() {
		return stock_price;
	}
	public void setStock_price(String stock_price) {
		this.stock_price = stock_price;
	}
	public String getStock_image() {
		return stock_image;
	}
	public void setStock_image(String stock_image) {
		this.stock_image = stock_image;
	}
	
}
