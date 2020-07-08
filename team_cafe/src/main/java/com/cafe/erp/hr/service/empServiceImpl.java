package com.cafe.erp.hr.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cafe.erp.hr.model.empDAO;
import com.cafe.erp.hr.model.empDTO;

@Component
public class empServiceImpl implements empService {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insertEmp(empDTO dto) {
		empDAO dao = sqlSession.getMapper(empDAO.class);
		dao.insertEmp(dto);
	}

	@Override
	public List<empDTO> getEmpList(HashMap map) {
		empDAO dao = sqlSession.getMapper(empDAO.class);
		
		return dao.getEmpList(map);
	}

	@Override
	public empDTO getEmp(int num) {
		
		empDAO dao = sqlSession.getMapper(empDAO.class);
		
		return dao.getEmp(num);
	}

	@Override
	public int updateEmp(empDTO dto) {
		
		empDAO dao = sqlSession.getMapper(empDAO.class);
		
		return dao.updateEmp(dto);
	}
	
	
//	@Override
//	public int deleteEmp(empDTO dto) {
//		empDAO dao = sqlSession.getMapper(empDAO.class);
//		
//		return dao.deleteEmp(dto);
//	}

	@Override
	public int updateEmp2(empDTO dto) {
		
		empDAO dao = sqlSession.getMapper(empDAO.class);
		
		return dao.updateEmp2(dto);
	}

	@Override
	public int getEmpCount() {
		empDAO dao = sqlSession.getMapper(empDAO.class);
		
		return dao.getEmpCount();
	}
	
	
}
