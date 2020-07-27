package com.cafe.erp.sell.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cafe.erp.ERPController;

@Controller
@RequestMapping("admin/sell/")
public class SellController {
	
	@Resource
	private ERPController erpController;

	
	@RequestMapping("list.cafe")
	public String list(HttpServletRequest request) {
		erpController.menuMethod(request);
		return "sell/sales-reports";
	}


}