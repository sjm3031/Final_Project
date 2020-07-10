package com.cafe.erp.store.model;

import java.util.HashMap;
import java.util.List;

public interface OrderDAO {
	
	public int getStockCount();
	public List<StockDTO> getStockList(HashMap map);
	public void insertordercart(OrderDTO dto);
	public List<OrderDTO> getStockOrderList(HashMap map);
	public int getStockOrderCount();
}
