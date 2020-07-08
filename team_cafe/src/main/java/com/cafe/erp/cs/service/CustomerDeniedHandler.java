package com.cafe.erp.cs.service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;

public class CustomerDeniedHandler implements AccessDeniedHandler {

	// 사용권한이 없을 때 지정한 페이지로 이동
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response,
			AccessDeniedException accessDeniedException) throws IOException, ServletException {
		
		request.setAttribute("errMsg", "관리자만 사용할 수 있는 기능입니다.");
		RequestDispatcher rd = request
				.getRequestDispatcher("/WEB-INF/views/customer/");
		rd.forward(request, response);

	}

}
