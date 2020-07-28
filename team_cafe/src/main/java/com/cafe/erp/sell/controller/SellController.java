package com.cafe.erp.sell.controller;


import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cafe.erp.ERPController;
import com.cafe.erp.sell.model.SellDTO;
import com.cafe.erp.sell.service.SellReportsService;


@Controller
@RequestMapping("admin/sell/")
public class SellController {
	
	@Resource
	private SellReportsService sellReprtsService;

	@Resource
	private ERPController erpController;

	
	@RequestMapping("list.cafe")
	public String list(HttpServletRequest request) {
		erpController.menuMethod(request);
		List<SellDTO> list = sellReprtsService.pcount();
		int total = sellReprtsService.pcounttotal();
		
		for (int i = 0; i < list.size(); i++) {
			System.out.println("name : " + list.get(i).getName());
		}
		
		System.out.println("list : " + list);		
		System.out.println("total : " + total);
		
		request.setAttribute("list", list);
		request.setAttribute("total", total);
		
		
		return "sell/sales-reports";
	}


}
