package com.cafe.erp.store.service;

import java.util.HashMap;
import java.util.List;

import com.cafe.erp.store.model.ProductOrderListDTO;

public interface ProductOrderListSercvice {
	
	public void orderlistinsert(ProductOrderListDTO dto1);
	public List<ProductOrderListDTO> detailshow(HashMap map);
	public int detailcount(int productOrder_code);
}
