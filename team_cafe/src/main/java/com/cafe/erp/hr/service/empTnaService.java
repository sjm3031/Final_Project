package com.cafe.erp.hr.service;

import java.util.HashMap;
import java.util.List;

import com.cafe.erp.hr.model.empDTO;
import com.cafe.erp.hr.model.empTnaDTO;

public interface empTnaService {
	public void insertEmpTna(empTnaDTO dto);

	public List<empTnaDTO> getDayTnaList(HashMap map);

	public List<empTnaDTO> getMonthTnaList(HashMap map);

	public empTnaDTO getEmpTna(int num);

	public int updateEmpTna(empTnaDTO dto);

	public int getEmpTnaCount();
}
