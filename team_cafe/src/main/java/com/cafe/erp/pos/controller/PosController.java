package com.cafe.erp.pos.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cafe.erp.userWeb.service.OrderWebService;



@Controller
@RequestMapping("pos/")
public class PosController {

	@Autowired
	private OrderWebService orderWebService;
	
	
	@RequestMapping("main.cafe")
	public String main() {
		return "pos/main";
		
	}

	@ResponseBody
	@RequestMapping("webOrderCheck.cafe")
	public String webOrderCheck(){
		int check=orderWebService.getOrderWebCheck();
		String result = "null";
		if (check !=0) {
			result = "exit";
		}
		return result;			//null이면 접수안된 주문이 없는것
	}
	
}
