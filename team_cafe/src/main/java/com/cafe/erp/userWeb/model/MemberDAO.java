package com.cafe.erp.userWeb.model;

import java.util.HashMap;
import java.util.List;

import com.cafe.erp.cs.model.CustomerDTO;

public interface MemberDAO {
	
	public CustomerDTO getCustomerInfoByPhone(String customerPhone);			//전화번호로 고객정보 조회
	
	public void insertCustomer(CustomerDTO dto);					//회원가입..
	public void updateCustomer(CustomerDTO dto);					//회원가입..2
	
	public CustomerDTO getCustomerInfoByCode(int customercode);				//고객코드로  고객정보 조회
}
