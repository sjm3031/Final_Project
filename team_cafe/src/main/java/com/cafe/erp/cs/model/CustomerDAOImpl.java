package com.cafe.erp.cs.model;

import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CustomerDAOImpl implements CustomerDAO {
	
	@Inject
	SqlSession sqlSession;
	
	@Override
	public int insertCustomer(Map<String, String> map) {
		return sqlSession.insert("customer.insertCustomer", map);
	}

	@Override
	public Map<String, Object> selectCustomer(String customer_id) {
		return sqlSession.selectOne("customer.selectCustomer", customer_id);
	}

}
