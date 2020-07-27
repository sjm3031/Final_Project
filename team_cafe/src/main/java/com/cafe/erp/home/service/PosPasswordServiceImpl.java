package com.cafe.erp.home.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cafe.erp.home.model.PosPasswordDAO;

@Component
public class PosPasswordServiceImpl implements PosPasswordService {

	@Autowired
	private SqlSession sqlSession;			

	@Override
	public String getPosPassword() {
		// TODO Auto-generated method stub
		PosPasswordDAO dao = sqlSession.getMapper(PosPasswordDAO.class);
		return dao.getPosPassword();
	}

	@Override
	public void updatePosPassword(String pwd) {
		// TODO Auto-generated method stub
		PosPasswordDAO dao = sqlSession.getMapper(PosPasswordDAO.class);
		dao.updatePosPassword(pwd);
	}



}