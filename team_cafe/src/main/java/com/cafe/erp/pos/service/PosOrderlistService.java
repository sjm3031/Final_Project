package com.cafe.erp.pos.service;

import java.util.HashMap;
import java.util.List;

import com.cafe.erp.pos.model.PosOrderlistVO;

public interface PosOrderlistService {

	public void insertOrderList(HashMap map2);
	public int deleteOrder(PosOrderlistVO vo);  //삭제
	public List<PosOrderlistVO> listOrder(); // 읽기
}
