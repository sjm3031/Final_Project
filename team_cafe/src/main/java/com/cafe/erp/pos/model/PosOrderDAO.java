package com.cafe.erp.pos.model;

import java.util.HashMap;
import java.util.List;


public interface PosOrderDAO {
	
	/* 주문 관련 메소드 */	
	public void insertOrder(HashMap map2); 					// 주문 입력
	public void insertOrderList(HashMap map2); 				// 내역 입력
	public void insertOrderListAdd(HashMap map2); 			//옵션 입력
	
	
	/* 회원 조회 관련 메소드 */
	public void insertAnonymous(HashMap map2); 				// 익명 신규 회원 등록
	public int phoneCheck(String phone); 					// 기존 등록된 회원 확인
	public void updateStamp(HashMap map);					// 스탬프 적립
	
	
	/* 직원 근태 관련 메소드 */
	public int isEmployee(HashMap map);						// 직원 확인 여부
	public void insertAttend(HashMap map);					// 직원 출근
	public void updateAttend(HashMap map);					// 직원 퇴근
	public int checkAttend(HashMap map);					// 직원 출근 중복 확인
	public HashMap checkOffWork(HashMap map);				// 직원 퇴근 중복 확인
	
	
	/* POS 시작 준비 관련 메소드 */
	public HashMap getPosStartInfo();						// POS 시작시 정보
	public int hasTodayPosStart();							// 금일 POS 준비금 입력 여부 (중복 방지)
	public HashMap getEndTime();							// 현재시간 정보
	public void insertPosStartInfo(HashMap map);			// 시작 준비 정보 입력
	public void updatePosStartEnd(HashMap map);				// 마감 시 준비금 테이블에 마감 시간 업데이트
	
	
	/* POS 마감 관련 메소드 */
	public List sellByGroup();								// 결제 유형별 결제 금액 및 개수 (Total 포함)
	public void insertPosEndInfo(HashMap map);				// 마감정산 정보 입력
	public int hasTodayPosEnd();							// 금일 마감정산 여부
	
	
	/* 사용 안함 */
	public int deleteOrder(PosOrderVO vo);  //삭제
	public List<PosOrderVO> listOrder(); // 읽기
	
}
