package com.cafe.erp.pos.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cafe.erp.pos.model.PosOrderDAO;
import com.cafe.erp.pos.model.PosOrderVO;

@Component
public class PosOrderServiceImpl implements PosOrderService {

	
	@Autowired
	private SqlSession sqlSession;			//SqlSessionTemplete	
	
	//익명 신규 회원 추가
	@Override
	public void insertAnonymous(HashMap map2) {
		PosOrderDAO dao = sqlSession.getMapper(PosOrderDAO.class);
		dao.insertAnonymous(map2);
	}
	
	// 입력
	@Override
	public void insertOrder(HashMap map2) {
		PosOrderDAO dao = sqlSession.getMapper(PosOrderDAO.class);
		System.out.println("insert 완" + map2);
		dao.insertOrder(map2);		
	}
	
	// 아이디 체크
	@Override
	public int phoneCheck(String phone) {
		PosOrderDAO dao = sqlSession.getMapper(PosOrderDAO.class);
		int result =  dao.phoneCheck(phone);
		return result;
	}
	
	@Override
	public void updateStamp(HashMap map) {
		PosOrderDAO dao = sqlSession.getMapper(PosOrderDAO.class);
		dao.updateStamp(map);
	}

	@Override
	public int deleteOrder(PosOrderVO vo) {
		PosOrderDAO dao = sqlSession.getMapper(PosOrderDAO.class);
		
		return 0;
	}



	@Override
	public List<PosOrderVO> listOrder() {
		PosOrderDAO dao = sqlSession.getMapper(PosOrderDAO.class);
		
		return null;
	}












}
