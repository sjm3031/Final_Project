package com.cafe.erp.accounting.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cafe.erp.ERPController;
import com.cafe.erp.accounting.model.AccountsDTO;
import com.cafe.erp.accounting.service.AccountsService;




@Controller
@RequestMapping("admin/accounting/")
public class AccountingController {
	
	@Resource
	private ERPController erpController;
	
	@Resource
	private AccountsService accountsService;
	

	
	@RequestMapping("list.cafe")
	public String list(HttpServletRequest request) {
		erpController.menuMethod(request);
		
		int pg = 1; 	
		
		String strPg = request.getParameter("pg");
		  
		if( strPg != null ) {
			pg = Integer.parseInt(strPg);
		}
	
		
		int rowSize = 3;			
		int start = (pg*rowSize) - (rowSize-1);			
		int end = pg*rowSize;							
		
		int total = accountsService.getAccountsCount();	
		
		int allPage = (int)Math.ceil(total / (double)rowSize);			
		
		
		int block = 5;		
		
		int fromPage = ((pg-1) / block*block) + 1;
		int toPage = ( (pg-1) / block*block) + block; 
		
		if (toPage > allPage) {
			toPage = allPage;
		}
		 HashMap map = new HashMap();
		  map.put("start", start);
		  map.put("end", end);
		  
		  List<AccountsDTO> list = accountsService.getAccountsList();
		  request.setAttribute("list", list);
		  request.setAttribute("pg", pg);
		  request.setAttribute("allPage", allPage);
		  request.setAttribute("block", block);
		  request.setAttribute("fromPage", fromPage);
		  request.setAttribute("toPage", toPage);
		  
		  
		return "accounting/list";
	}


}
