package com.cafe.erp;


import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class ERPController {

	
	@RequestMapping("main.cafe")
	public String login() {
		return "erp/main";
		
	}


}
