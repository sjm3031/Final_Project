package com.cafe.erp.hr.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cafe.erp.hr.model.empDTO;
import com.cafe.erp.hr.model.empTnaDTO;
import com.cafe.erp.hr.model.salaryDAO;
import com.cafe.erp.hr.model.salaryDTO;

@Component
public class salaryServiceImpl implements salaryService {

	@Autowired
	private SqlSession sqlSession;
	
	

	@Override
	public double getMaxMonthTotal(HashMap map) {
		
		salaryDAO dao = sqlSession.getMapper(salaryDAO.class);
				
		return dao.getMaxMonthTotal(map);
	}

	@Override
	public List<empDTO> getName() {

		salaryDAO dao = sqlSession.getMapper(salaryDAO.class);

		return dao.getName();
	}

	@Override
	public List<salaryDTO> searchSalary(HashMap map) {

		salaryDAO dao = sqlSession.getMapper(salaryDAO.class);

		return dao.searchSalary(map);
	}

	@Override
	public List<empTnaDTO> getMonth() {

		salaryDAO dao = sqlSession.getMapper(salaryDAO.class);

		return dao.getMonth();
	}

	@Override
	public List<empTnaDTO> getYear() {

		salaryDAO dao = sqlSession.getMapper(salaryDAO.class);

		return dao.getYear();
	}

	@Override
	public void insertSalary(HashMap map) {

		salaryDAO dao = sqlSession.getMapper(salaryDAO.class);

		dao.insertSalary(map);
	}

	@Override
	public List<salaryDTO> getSalaryList(HashMap map) {

		salaryDAO dao = sqlSession.getMapper(salaryDAO.class);

		return dao.getSalaryList(map);
	}

	@Override
	public salaryDTO getSalary(int salary_code) {

		salaryDAO dao = sqlSession.getMapper(salaryDAO.class);

		return dao.getSalary(salary_code);
	}

	@Override
	public int updateSalary(salaryDTO dto) {

		salaryDAO dao = sqlSession.getMapper(salaryDAO.class);

		return dao.updateSalary(dto);
	}

	@Override
	public int getSalaryCount() {

		salaryDAO dao = sqlSession.getMapper(salaryDAO.class);

		return dao.getSalaryCount();
	}

}
