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
		
		List<SellDTO> accountslist = sellReprtsService.accountslist();
		
		for (int i = 0; i < list.size(); i++) {
			System.out.println("name : " + list.get(i).getName());
		}
		
		for (int i = 0; i < accountslist.size(); i++) {
			System.err.println("date : " + accountslist.get(i).getAccounts_startsell());
		}
		
		//System.out.println("list : " + list);		
		//System.out.println("total : " + total);
		
		request.setAttribute("accountslist", accountslist);
		request.setAttribute("list", list);
		request.setAttribute("total", total);
		
		
		return "sell/sales-reports";
	}


}
