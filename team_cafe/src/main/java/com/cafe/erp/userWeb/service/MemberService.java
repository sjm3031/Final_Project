package com.cafe.erp.userWeb.service;


import java.util.HashMap;
import java.util.List;

import com.cafe.erp.cs.model.CustomerDTO;
import com.cafe.erp.sale.model.ProductVO;
import com.cafe.erp.userWeb.model.OrderWebDTO;
import com.cafe.erp.userWeb.model.OrderWebListAddDTO;
import com.cafe.erp.userWeb.model.OrderWebListAddJoinDTO;
import com.cafe.erp.userWeb.model.ProductCartAddDTO;
import com.cafe.erp.userWeb.model.ProductCartAddJoinDTO;
import com.cafe.erp.userWeb.model.ProductCartDTO;

public interface MemberService {
	
	public CustomerDTO getCustomerInfoByPhone(String customerPhone);			//전화번호로 고객정보 조회
	public void insertCustomer(CustomerDTO dto);					//회원가입..
	public void updateCustomer(CustomerDTO dto);					//회원가입..2
	
	public CustomerDTO getCustomerInfoByCode(int customercode) ;			//고객코드로  고객정보 조회
}
