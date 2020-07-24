package com.cafe.erp.hr.model;

import java.util.HashMap;
import java.util.List;

public interface salaryDAO {

	public void insertSalary(HashMap map);

	public List<salaryDTO> getSalaryList(HashMap map);
	
	public List<salaryDTO> searchSalary(HashMap map);
	
	public List<empTnaDTO> getMonth();
	
	public List<empTnaDTO> getYear();
	
	public List<empDTO> getName();
	
	
	public salaryDTO getSalary(int salary_code);

	public int updateSalary(salaryDTO dto);

	public int getSalaryCount();
	
	public double getMaxMonthTotal(HashMap map);
}
