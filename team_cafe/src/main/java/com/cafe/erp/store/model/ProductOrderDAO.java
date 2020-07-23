package com.cafe.erp.store.model;

import java.util.HashMap;
import java.util.List;

public interface ProductOrderDAO {
	
	public void orderinsert(ProductOrderDTO dto);
	public List<ProductOrderDTO> showorderlist(HashMap map);
	public int getordercount();
	public List<AccountDTO> getaccountnumber();
	public int cartcount();
}
