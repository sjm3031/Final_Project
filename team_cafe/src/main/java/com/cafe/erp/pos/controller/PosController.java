package com.cafe.erp.pos.controller;


import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("pos/")
public class PosController {

	
	@RequestMapping("main.cafe")
	public String main() {
		return "pos/main";
		
	}



}
