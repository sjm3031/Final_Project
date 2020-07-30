package com.cafe.erp.store.model;

import java.util.HashMap;
import java.util.List;


public interface AccountDAO {

	public void insertAccount(AccountDTO dto);
	public List<AccountDTO> getAccountList(HashMap map);
	public AccountDTO getAccount(int stock_code);
	public int getAccountCount();
	public int updateAccount(AccountDTO dto); 
	public int deleteAccount(AccountDTO dto); 
}
