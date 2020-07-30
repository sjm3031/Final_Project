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
	public int updateordercart(OrderDTO dto);
	public int deleteordercart(OrderDTO dto);
	public OrderDTO getOrder(int cart_number);
	public int getcarttotal();
	public int deleteorderlistcart();
	public int getstockcode(int stock_code);
	public void updatecount(OrderDTO dto);
	public void updatecode();
	public List<OrderDTO> getStockOrderListaccountnumber();
	public String getemail(HashMap map);
	public List<OrderDTO> getOrderListByNumber(HashMap map);
	public void sendEmail(String email, List<OrderDTO> stockorderlist) throws Exception;
	public int cafeordercartcount();
}
