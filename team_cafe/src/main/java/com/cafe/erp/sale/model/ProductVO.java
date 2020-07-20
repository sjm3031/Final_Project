package com.cafe.erp.sale.model;

import org.springframework.web.multipart.MultipartFile;

public class ProductVO {

    private int cafe_product_code;
    private String cafe_product_name;
    private int cafe_product_price,product_category_code;
    
    private String cafe_product_img;
    
    
    private String product_category_name;
    
	public int getCafe_product_code() {
		return cafe_product_code;
	}
	public void setCafe_product_code(int cafe_product_code) {
		this.cafe_product_code = cafe_product_code;
	}
	public String getCafe_product_name() {
		return cafe_product_name;
	}
	public void setCafe_product_name(String cafe_product_name) {
		this.cafe_product_name = cafe_product_name;
	}
	public int getCafe_product_price() {
		return cafe_product_price;
	}
	public void setCafe_product_price(int cafe_product_price) {
		this.cafe_product_price = cafe_product_price;
	}
	public int getProduct_category_code() {
		return product_category_code;
	}
	public void setProduct_category_code(int product_category_code) {
		this.product_category_code = product_category_code;
	}
	
	

	public String getCafe_product_img() {
		return cafe_product_img;
	}
	public void setCafe_product_img(String cafe_product_img) {
		this.cafe_product_img = cafe_product_img;
	}
	public String getProduct_category_name() {
		return product_category_name;
	}
	public void setProduct_category_name(String product_category_name) {
		this.product_category_name = product_category_name;
	}
	
	
	
	
    
    
    
    
}
