package com.cafe.erp.hr.model;

import java.util.HashMap;
import java.util.List;



public interface empDAO {
	
	public void insertEmp(empDTO dto);
	
	public List<empDTO> getEmpList(HashMap map); 
	public empDTO getEmp(int num); 
	
	public int updateEmp(empDTO dto); 
	public int updateEmp2(empDTO dto);
//	public int deleteEmp(empDTO dto); 
	
	public int getEmpCount(); 

}
