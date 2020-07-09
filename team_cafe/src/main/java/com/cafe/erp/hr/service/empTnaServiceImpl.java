package com.cafe.erp.hr.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cafe.erp.hr.model.empTnaDAO;
import com.cafe.erp.hr.model.empTnaDTO;

@Component
public class empTnaServiceImpl implements empTnaService {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insertEmpTna(empTnaDTO dto) {

		empTnaDAO dao = sqlSession.getMapper(empTnaDAO.class);
		
		dao.insertEmpTna(dto);
	}

	@Override
	public List<empTnaDTO> getDayTnaList(HashMap map) {

		empTnaDAO dao = sqlSession.getMapper(empTnaDAO.class);
		
		return dao.getDayTnaList(map);
	}

	@Override
	public List<empTnaDTO> getMonthTnaList(HashMap map) {

		empTnaDAO dao = sqlSession.getMapper(empTnaDAO.class);
		
		return dao.getMonthTnaList(map);
	}

	@Override
	public empTnaDTO getEmpTna(int enptna_empcode) {
		
		empTnaDAO dao = sqlSession.getMapper(empTnaDAO.class);
		
		return dao.getEmpTna(enptna_empcode);
	}

	@Override
	public int updateEmpTna(empTnaDTO dto) {
		
		empTnaDAO dao = sqlSession.getMapper(empTnaDAO.class);
		
		return dao.updateEmpTna(dto);
	}

	@Override
	public int getEmpTnaCount() {

		empTnaDAO dao = sqlSession.getMapper(empTnaDAO.class);
		
		return dao.getEmpTnaCount();
	}

	
	
	
	
}
