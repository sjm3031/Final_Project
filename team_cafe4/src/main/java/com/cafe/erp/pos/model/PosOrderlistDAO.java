package com.cafe.erp.pos.model;

import java.util.HashMap;
import java.util.List;

public interface PosOrderlistDAO {
	
	public void insertOrderList(HashMap map2); // 입력
	
	public int deleteOrder(PosOrderlistVO vo);  //삭제
	public List<PosOrderlistVO> listOrder(); // 읽기
}
