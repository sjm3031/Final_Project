package com.cafe.erp.store.service;

import java.util.HashMap;
import java.util.List;

import com.cafe.erp.store.model.ProductOrderDTO;

public interface ProductOrderService {
	
	public void orderinsert(ProductOrderDTO dto);
	public List<ProductOrderDTO> showorderlist(HashMap map);
	public int getordercount();
}
