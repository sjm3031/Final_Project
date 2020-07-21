package com.cafe.erp.cs.model;

import java.util.HashMap;
import java.util.List;



public interface CustomerDAO {
	

	public void insertBoard(CustomerDTO dto);					
	public List<CustomerDTO> getBoardList(HashMap map);		
	public CustomerDTO getBoard(int customer_code);						
	public int updateBoard(CustomerDTO dto);					
	public int deleteBoard(CustomerDTO dto);					
	
	
	
	public int getBoardCount();				

	
	
	

}
