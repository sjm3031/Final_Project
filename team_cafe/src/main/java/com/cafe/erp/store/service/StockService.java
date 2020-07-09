package com.cafe.erp.store.service;

import java.util.HashMap;
import java.util.List;

import com.cafe.erp.store.model.AccountDTO;
import com.cafe.erp.store.model.StockDTO;

public interface StockService {

	public List<StockDTO> getStockList(HashMap map);
	public StockDTO getStock(int stock_code);
	public int getStockCount();
	public int updateStock(StockDTO dto); 
	public int deleteStock(StockDTO dto);
	public void insertStock(StockDTO dto); 
	public List<AccountDTO> getAccountList(HashMap map);
}
