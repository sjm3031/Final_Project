package com.cafe.erp.hr.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cafe.erp.hr.model.empDTO;
import com.cafe.erp.hr.model.empTnaDAO;
import com.cafe.erp.hr.model.empTnaDTO;

@Component
public class empTnaServiceImpl implements empTnaService {

	@Autowired
	private SqlSession sqlSession;

//	@Override
//	public empTnaDTO getempTna(int emptna_code) {
//		
//		empTnaDAO dao = sqlSession.getMapper(empTnaDAO.class);
//
//		return dao.getempTna(emptna_code);
//	}
	
	
	@Override
	public List<empTnaDTO> getDay() {
		empTnaDAO dao = sqlSession.getMapper(empTnaDAO.class);

		return dao.getDay();
	}


	@Override
	public empTnaDTO getEmpTna(int emptna_code) {

		empTnaDAO dao = sqlSession.getMapper(empTnaDAO.class);

		return dao.getEmpTna(emptna_code);
	}

	@Override
	public int selectEmp(HashMap map) {
		
		empTnaDAO dao = sqlSession.getMapper(empTnaDAO.class);

		return dao.selectEmp(map);
	}

	@Override
	public int updateEmpTna3(empTnaDTO dto) {
		
		
		empTnaDAO dao = sqlSession.getMapper(empTnaDAO.class);

		return dao.updateEmpTna3(dto);
	}

	@Override
	public List<empTnaDTO> getName() {

		empTnaDAO dao = sqlSession.getMapper(empTnaDAO.class);

		return dao.getName();
	}

	

	@Override
	public empTnaDTO selectEmp2(HashMap map) {

		empTnaDAO dao = sqlSession.getMapper(empTnaDAO.class);

		return dao.selectEmp2(map);
		

	}

	@Override
	public void updateEmpTna(HashMap map) {

		empTnaDAO dao = sqlSession.getMapper(empTnaDAO.class);
		
		dao.updateEmpTna(map);

	}

	@Override
	public List<empTnaDTO> getMonthRead(HashMap map) {

		empTnaDAO dao = sqlSession.getMapper(empTnaDAO.class);

		return dao.getMonthRead(map);
	}

	@Override
	public List<empTnaDTO> getDayRead(HashMap map) {

		empTnaDAO dao = sqlSession.getMapper(empTnaDAO.class);

		return dao.getDayRead(map);
	}

	@Override
	public List<empTnaDTO> getYear() {

		empTnaDAO dao = sqlSession.getMapper(empTnaDAO.class);

		return dao.getYear();
	}

	@Override
	public List<empTnaDTO> getMonth() {

		empTnaDAO dao = sqlSession.getMapper(empTnaDAO.class);

		return dao.getMonth();
	}



	@Override
	public void insertEmpTna(empTnaDTO dto) {

		empTnaDAO dao = sqlSession.getMapper(empTnaDAO.class);

		dao.insertEmpTna(dto);
	}

	@Override
	public List<empTnaDTO> getEmpTnaList(HashMap map) {

		empTnaDAO dao = sqlSession.getMapper(empTnaDAO.class);

		return dao.getEmpTnaList(map);
	}

//	@Override
//	public int updateEmpTna(empTnaDTO dto) {
//
//		empTnaDAO dao = sqlSession.getMapper(empTnaDAO.class);
//
//		return dao.updateEmpTna(dto);
//	}

	@Override
	public int getEmpTnaCount() {

		empTnaDAO dao = sqlSession.getMapper(empTnaDAO.class);

		return dao.getEmpTnaCount();
	}

}
