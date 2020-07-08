package com.cafe.erp.cs.service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.cafe.erp.cs.model.CustomerDTO;

public class CustomerLoginSuccessHandler implements AuthenticationSuccessHandler {
	
	// 로그인 처리가 성공했을 때의 코드
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication auth) throws IOException, ServletException {
		
		// 인증된 사용자의 정보 리턴
		CustomerDTO dto = (CustomerDTO)auth.getPrincipal();
		String msg = auth.getName() + "님 환영합니다.";
		request.setAttribute("msg", msg);	// request 영역에 저장
		request.setAttribute("dto", dto);
		
		// 시작페이지로 포워딩
		RequestDispatcher rd = request.getRequestDispatcher("/");
		rd.forward(request, response);
	}

}
