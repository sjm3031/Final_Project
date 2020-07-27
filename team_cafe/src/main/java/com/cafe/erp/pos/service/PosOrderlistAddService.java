package com.cafe.erp.pos.service;

import java.util.HashMap;
import java.util.List;

import com.cafe.erp.pos.model.PosOrderlistAddVO;

public interface PosOrderlistAddService {
	public void insertOrderListAdd(HashMap map2); // 입력
	
	public int deleteOrder(PosOrderlistAddVO vo);  //삭제
	public List<PosOrderlistAddVO> listOrder(); // 읽기
}
