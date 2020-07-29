package com.cafe.erp.accounting.service;

import java.util.HashMap;
import java.util.List;

import com.cafe.erp.accounting.model.AccountsDTO;

public interface AccountsService {
	
	public List<AccountsDTO> getAccountsList(HashMap map);				// list 가져오기
	public int getAccountsCount();							// 총 갯수 가져오기
}