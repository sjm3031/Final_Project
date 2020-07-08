package com.cafe.erp.cs.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

public class CustomerLoginFailureHandler implements AuthenticationFailureHandler {
	
	// 로그인이 실패했을 때의 처리
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
		
		// request 영역에 애트리뷰트 설정
		request.setAttribute("errMsg", "아이디 또는 비밀번호가 일치하지 않습니다.");
		
		// forward
		request.getRequestDispatcher("/WEB-INF/views/customer/login.jsp")
			.forward(request, response);

	}

}
