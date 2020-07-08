package com.cafe.erp.hr.service;

import java.util.HashMap;
import java.util.List;

import com.cafe.erp.hr.model.empDTO;

public interface empService {

	public void insertEmp(empDTO dto);

	public List<empDTO> getEmpList(HashMap map);

	public empDTO getEmp(int num);

	public int updateEmp(empDTO dto);
	
	public int updateEmp2(empDTO dto);
//	public int deleteEmp(empDTO dto);

	public int getEmpCount();
}
