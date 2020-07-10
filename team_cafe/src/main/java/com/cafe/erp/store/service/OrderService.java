package com.cafe.erp.store.service;

import java.util.HashMap;
import java.util.List;

import com.cafe.erp.store.model.OrderDTO;
import com.cafe.erp.store.model.StockDTO;

public interface OrderService {
	
	public int getStockCount();
	public List<StockDTO> getStockList(HashMap map);
	public void insertordercart(OrderDTO dto);
	public List<OrderDTO> getStockOrderList(HashMap map);
	public int getStockOrderCount();

}
