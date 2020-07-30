package com.cafe.erp.accounting.model;

import java.util.HashMap;
import java.util.List;

public interface AccountsDAO {
			
	public List<AccountsDTO> getAccountsList(HashMap map);				// list 가져오기
	public int getAccountsCount();							// 총 갯수 가져오기
}
