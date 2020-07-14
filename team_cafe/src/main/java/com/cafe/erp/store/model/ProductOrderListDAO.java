package com.cafe.erp.store.model;

import java.util.HashMap;
import java.util.List;

public interface ProductOrderListDAO {
	
	public void orderlistinsert(ProductOrderListDTO dto1);
	public List<ProductOrderListDTO> detailshow(HashMap map);
	public int detailcount(int productOrder_code);
}
