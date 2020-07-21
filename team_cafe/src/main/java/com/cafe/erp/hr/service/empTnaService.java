package com.cafe.erp.hr.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cafe.erp.hr.model.empDTO;
import com.cafe.erp.hr.model.empTnaDTO;

public interface empTnaService {

	public empDTO getEmpTna(empDTO dto);

	public void insertEmpTna(empTnaDTO dto);

	public void updateEmpTna(HashMap map);

	public List<empTnaDTO> getEmpTnaList(HashMap map);

	public List<empTnaDTO> getYear();

	public List<empTnaDTO> getMonth();
	
	public List<empTnaDTO> getDay();
	
	public List<empTnaDTO> getName();

	public List<empTnaDTO> getDayRead(HashMap map);

	public List<empTnaDTO> getMonthRead(HashMap map);

//	public int updateEmpTna(empTnaDTO dto);

//	public empTnaDTO getempTna(int emptna_code);

	public int getEmpTnaCount();

	public int getTotal(HashMap map);
}
