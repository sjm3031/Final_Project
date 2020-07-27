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

	@Override
	public void insertAttend(HashMap map) {
		PosOrderDAO dao = sqlSession.getMapper(PosOrderDAO.class);
		dao.insertAttend(map);
	}

	@Override
	public void updateAttend(HashMap map) {
		PosOrderDAO dao = sqlSession.getMapper(PosOrderDAO.class);
		dao.updateAttend(map);
		
	}

	@Override
	public int checkAttend(HashMap map) {
		PosOrderDAO dao = sqlSession.getMapper(PosOrderDAO.class);
		return dao.checkAttend(map);
	}

	@Override
	public HashMap checkOffWork(HashMap map) {
		PosOrderDAO dao = sqlSession.getMapper(PosOrderDAO.class);
		return dao.checkOffWork(map);
	}

	@Override
	public int isEmployee(HashMap map) {
		PosOrderDAO dao = sqlSession.getMapper(PosOrderDAO.class);
		return dao.isEmployee(map);
	}

	@Override
	public List sellByGroup() {
		PosOrderDAO dao = sqlSession.getMapper(PosOrderDAO.class);
		return dao.sellByGroup();
	}

	@Override
	public HashMap getEndTime() {
		PosOrderDAO dao = sqlSession.getMapper(PosOrderDAO.class);
		return dao.getEndTime();
	}

	@Override
	public HashMap getPosStartInfo() {
		PosOrderDAO dao = sqlSession.getMapper(PosOrderDAO.class);
		return dao.getPosStartInfo();
	}

	@Override
	public void insertPosEndInfo(HashMap map) {
		PosOrderDAO dao = sqlSession.getMapper(PosOrderDAO.class);
		dao.insertPosEndInfo(map);
	}

	@Override
	public int hasTodayPosEnd() {
		PosOrderDAO dao = sqlSession.getMapper(PosOrderDAO.class);
		return dao.hasTodayPosEnd();
	}

	@Override
	public int hasTodayPosStart() {
		PosOrderDAO dao = sqlSession.getMapper(PosOrderDAO.class);
		return dao.hasTodayPosStart();
	}

	@Override
	public void insertPosStartInfo(HashMap map) {
		PosOrderDAO dao = sqlSession.getMapper(PosOrderDAO.class);
		dao.insertPosStartInfo(map);
	}

	@Override
	public void updatePosStartEnd(HashMap map) {
		PosOrderDAO dao = sqlSession.getMapper(PosOrderDAO.class);
		dao.updatePosStartEnd(map);
	}
}
