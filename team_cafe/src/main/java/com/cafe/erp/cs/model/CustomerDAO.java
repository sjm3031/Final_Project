package com.cafe.erp.cs.model;

import java.util.Map;

public interface CustomerDAO {
	// 회원가입 처리
	public int insertCustomer(Map<String, String> map);
	
	// 로그인 처리
	public Map<String, Object> selectCustomer(String customer_id);
}
