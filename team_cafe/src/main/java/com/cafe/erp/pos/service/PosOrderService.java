package com.cafe.erp.pos.service;

import java.util.HashMap;
import java.util.List;

import com.cafe.erp.pos.model.PosOrderVO;

public interface PosOrderService {
	public void insertOrder(HashMap map2); 					// 입력
	public void insertAnonymous(HashMap map2); 			// 익명 신규 회원 등록
	public int phoneCheck(String phone); 						// 회원 확인
	
	public void updateStamp(HashMap map);					// 스탬프 음료 개수만큼 누적
	
	public int deleteOrder(PosOrderVO vo);  					// 삭제
	public List<PosOrderVO> listOrder(); 						// 읽기
}
