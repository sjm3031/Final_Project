package com.cafe.erp.cs.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.cafe.erp.cs.model.CustomerDTO;

// 로그인 처리 클래스
public class CustomerAuthenticationService implements UserDetailsService {

	private SqlSessionTemplate sqlSession;
	
	public CustomerAuthenticationService() {
	}

	public CustomerAuthenticationService(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public UserDetails loadUserByUsername(String customer_id) throws UsernameNotFoundException {
		// 사용자 아이디 확인
		Map<String, Object> user = sqlSession.selectOne("customer.selectCustomer", customer_id);
		
		// 아이디가 없으면 예외 발생
		if (user == null)
			throw new UsernameNotFoundException(customer_id);
		
		// 사용권한 목록
		List<GrantedAuthority> authority = new ArrayList<>();
		authority.add(new SimpleGrantedAuthority(user.get("AUTHORITY").toString()));
		
		return new CustomerDTO(
				user.get("USERNAME").toString(), user.get("PASSWORD").toString(),
				(Integer) Integer.valueOf(user.get("ENABLED").toString()) == 1, true, true, true, authority,
				user.get("USERNAME").toString(), user.get("PASSWORD").toString(),
				user.get("CUSTOMER_NAME").toString(), user.get("CUSTOMER_PHONE").toString(),
				user.get("CUSTOMER_BIRTH").toString(), user.get("CUSTOMER_GENDER").toString()
				);
	}

}
