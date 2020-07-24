package com.cafe.erp.pos.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cafe.erp.pos.model.PosOrderlistAddDAO;
import com.cafe.erp.pos.model.PosOrderlistAddVO;

@Component
public class PosOrderlistAddServiceImpl implements PosOrderlistAddService {

	@Autowired
	private SqlSession sqlSession;			//SqlSessionTemplete	
	
	

	@Override
	public int deleteOrder(PosOrderlistAddVO vo) {
		PosOrderlistAddDAO dao = sqlSession.getMapper(PosOrderlistAddDAO.class);
		
		return 0;
	}

	@Override
	public List<PosOrderlistAddVO> listOrder() {
		PosOrderlistAddDAO dao = sqlSession.getMapper(PosOrderlistAddDAO.class);
		
		return null;
	}

	 // 입력
	@Override
	public void insertOrderListAdd(HashMap map2) {
		PosOrderlistAddDAO dao = sqlSession.getMapper(PosOrderlistAddDAO.class);
		dao.insertOrderListAdd(map2);
	}

}
