package com.cafe.erp.pos.model;

import java.util.HashMap;
import java.util.List;

public interface PosOrderlistAddDAO {
	public void insertOrderListAdd(HashMap map2); // 입력
	
	public int deleteOrder(PosOrderlistAddVO vo);  //삭제
	public List<PosOrderlistAddVO> listOrder(); // 읽기
}
