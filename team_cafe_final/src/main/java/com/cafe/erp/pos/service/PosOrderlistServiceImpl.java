package com.cafe.erp.pos.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cafe.erp.pos.model.PosOrderlistDAO;
import com.cafe.erp.pos.model.PosOrderlistVO;

@Component
public class PosOrderlistServiceImpl implements PosOrderlistService {
	
	
	@Autowired
	private SqlSession sqlSession;			//SqlSessionTemplete	
	


	@Override
	public int deleteOrder(PosOrderlistVO vo) {
		PosOrderlistDAO dao = sqlSession.getMapper(PosOrderlistDAO.class);
		
		return 0;
	}

	@Override
	public List<PosOrderlistVO> listOrder() {
		PosOrderlistDAO dao = sqlSession.getMapper(PosOrderlistDAO.class);
		
		return null;
	}

	// 입력
	@Override
	public void insertOrderList(HashMap map2) {
		PosOrderlistDAO dao = sqlSession.getMapper(PosOrderlistDAO.class);
		dao.insertOrderList(map2);
		
	}

}
