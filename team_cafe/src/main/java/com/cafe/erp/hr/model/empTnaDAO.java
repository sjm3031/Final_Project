package com.cafe.erp.hr.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface empTnaDAO {
	
	public empDTO getEmpTna(empDTO dto); //select
	
	public void insertEmpTna(empTnaDTO dto);  //insert
	
	public void updateEmpTna(empTnaDTO dto);
	
	public List<empTnaDTO> getEmpTnaList(HashMap map); 
	
	public List<empTnaDTO> getYear();
	
	public List<empTnaDTO> getMonth();
	
	public List<empTnaDTO> getDay();
	
	public List<empTnaDTO> getMonthRead(HashMap map);
	
	public List<empTnaDTO> getDayRead(HashMap map); //년 월 불러오기
	
//	public int updateEmpTna(empTnaDTO dto);  
	
//	public empTnaDTO getempTna(int emptna_code);
	
	public int getEmpTnaCount();
	
	public int getTotal();
}
