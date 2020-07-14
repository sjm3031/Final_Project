package com.cafe.erp.store.model;

import java.util.HashMap;
import java.util.List;

public interface OrderDAO {
	
	public int getStockCount();
	public List<StockDTO> getStockList(HashMap map);
	public void insertordercart(OrderDTO dto);
	public List<OrderDTO> getStockOrderList(HashMap map);
	public int getStockOrderCount();
	public int updateordercart(OrderDTO dto);
	public int deleteordercart(OrderDTO dto);
	public OrderDTO getOrder(int cart_number);
	public void orderinsert(OrderDTO dto);
	public int getcarttotal();
	public int deleteorderlistcart();
	public int getstockcode(int stock_code);
	public void updatecount(OrderDTO dto);
	public void updatecode();
}
