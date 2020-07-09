package com.cafe.erp.store.service;

import java.util.HashMap;
import java.util.List;

import com.cafe.erp.store.model.AccountDTO;
import com.cafe.erp.store.model.StockDTO;

public interface AccountService {

	public void insertAccount(AccountDTO dto);
	public List<AccountDTO> getAccountList(HashMap map);
	public AccountDTO getAccount(int account_number);
	public int getAccountCount();
	public int updateAccount(AccountDTO dto); 
	public int deleteAccount(AccountDTO dto); 
	
}
