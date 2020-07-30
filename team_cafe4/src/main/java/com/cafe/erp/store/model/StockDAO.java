package com.cafe.erp.store.model;

import java.util.HashMap;
import java.util.List;



public interface StockDAO {
	
	public void insertStock(StockDTO dto);
	public List<StockDTO> getStockList(HashMap map);
	public StockDTO getStock(int stock_code);
	public int getStockCount();
	public int updateStock(StockDTO dto); 
	public int deleteStock(StockDTO dto); 
	public List<AccountDTO> getAccountList(HashMap map);
}
