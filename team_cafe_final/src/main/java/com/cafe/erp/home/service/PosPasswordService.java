package com.cafe.erp.home.service;

public interface PosPasswordService {
	
	public String getPosPassword();							//db에서 password값 가져오기
	public void updatePosPassword(String pwd);				//password 변경
}
