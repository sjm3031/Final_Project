package com.cafe.erp.cs.service;

import java.util.HashMap;
import java.util.List;

import com.cafe.erp.cs.model.CustomerDTO;



public interface CustomerService {
	
	


	public void insertBoard(CustomerDTO dto);					
	public List<CustomerDTO> getBoardList(HashMap map);		
	public CustomerDTO getBoard(int customer_code);						
	public int updateBoard(CustomerDTO dto);					
	public int deleteBoard(CustomerDTO dto);					
	
	
	
	public int getBoardCount();				
	

	

}
