package com.cafe.erp.pos.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PosController {

	@RequestMapping("/pos")
	public String posHome() {
		return "pos/posHome";
	}
	
	@RequestMapping("/pos/login")
	public String posLogin(HttpServletRequest request, HttpServletResponse response) {
		return "pos/posLogin";
	}
	
	@RequestMapping("/admin/")
	public String admin(Authentication auth) {
		return "admin/main";
	}
}
