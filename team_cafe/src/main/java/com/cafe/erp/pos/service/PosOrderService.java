package com.cafe.erp.pos.service;

import java.util.HashMap;
import java.util.List;

import com.cafe.erp.pos.model.PosOrderVO;

public interface PosOrderService {
	public void insertOrder(HashMap map2); 					// 입력
	public void insertAnonymous(HashMap map2); 			// 익명 신규 회원 등록
	public int phoneCheck(String phone); 						// 회원 확인
	public void updateStamp(HashMap map);					// 스탬프 음료 개수만큼 누적
	
	public int isEmployee(HashMap map);						// 직원 유무 판별
	public void insertAttend(HashMap map);					// 직원 출근
	public void updateAttend(HashMap map);					// 직원 퇴근
	public int checkAttend(HashMap map);					// 직원 출근 체크
	public HashMap checkOffWork(HashMap map);				// 직원 퇴근 체크

	public HashMap getPosStartInfo();					// POS 시작시 정보
	public List sellByGroup();							// 결제 유형별 결제 금액 및 개수 (Total 포함)
	public HashMap getEndTime();
	public void insertPosEndInfo(HashMap map);			// 정산 정보 입력
	public int hasTodayPosStart();						// 금일 POS 준비금 입력 여부
	public void insertPosStartInfo(HashMap map);		// 시작 준비 정보 입력
	public void updatePosStartEnd(HashMap map);			// 마감 시 준비금 테이블에 마감 시간 업데이트
	public int hasTodayPosEnd();						// 금일 마감정산 여부
	
	public int deleteOrder(PosOrderVO vo);  					// 삭제
	public List<PosOrderVO> listOrder(); 						// 읽기
}
