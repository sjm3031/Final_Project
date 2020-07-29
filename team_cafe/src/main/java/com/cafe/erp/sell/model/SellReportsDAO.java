package com.cafe.erp.sell.model;

import java.util.List;

public interface SellReportsDAO {
	
	
	//상품당 판매 건수
	public List<SellDTO> pcount();
	
	//총판매량
	public List<SellDTO> accountslist();
	
	//총 판매한 건수
	public int pcounttotal();
}
