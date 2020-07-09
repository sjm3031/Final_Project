package com.cafe.erp.hr.model;

import java.util.HashMap;
import java.util.List;

public interface empTnaDAO {
	
	public void insertEmpTna(empTnaDTO dto);
	
	public List<empTnaDTO> getDayTnaList(HashMap map); 
	public List<empTnaDTO> getMonthTnaList(HashMap map);
	
	public empTnaDTO getEmpTna(int enptna_empcode); 
	
	public int updateEmpTna(empTnaDTO dto);  
	
	public int getEmpTnaCount();
}
