package com.cafe.erp.pos.model;

import java.util.HashMap;
import java.util.List;


public interface PosOrderDAO {
	
	public void insertOrder(HashMap map2); // 주문 입력
	public void insertOrderList(HashMap map2); // 내역 입력
	public void insertOrderListAdd(HashMap map2); //옵션 입력
	public void insertAnonymous(HashMap map2); // 익명 신규 회원 등록
	public int phoneCheck(String phone); // 회원 확인
	
	public void updateStamp(HashMap map);
	
	public int deleteOrder(PosOrderVO vo);  //삭제
	public List<PosOrderVO> listOrder(); // 읽기
	
	
	

//	public int updateStamp(PosOrderVO vo); //스탬프 업데이트
	

}
