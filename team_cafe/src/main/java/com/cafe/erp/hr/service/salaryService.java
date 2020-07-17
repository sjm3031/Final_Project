package com.cafe.erp.hr.service;

import java.util.HashMap;
import java.util.List;

import com.cafe.erp.hr.model.empDTO;
import com.cafe.erp.hr.model.empTnaDTO;
import com.cafe.erp.hr.model.salaryDTO;

public interface salaryService {

	public void insertSalary(HashMap map);
	
	public List<salaryDTO> getSalaryList(HashMap map);

	public List<salaryDTO> searchSalary(HashMap map);

	public List<empTnaDTO> getMonth();

	public List<empTnaDTO> getYear();

	public List<empDTO> getName();

	public salaryDTO getSalary(int salary_code);

	public int updateSalary(salaryDTO dto);

	public int getSalaryCount();
	
	public int getMaxMonthTotal(HashMap map);
}
