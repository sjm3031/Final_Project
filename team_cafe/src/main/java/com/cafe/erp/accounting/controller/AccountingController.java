package com.cafe.erp.accounting.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cafe.erp.ERPController;
import com.cafe.erp.cs.model.CustomerDTO;
import com.cafe.erp.cs.service.CustomerService;




@Controller
@RequestMapping("admin/accounting/")
public class AccountingController {
	
	@Resource
	private ERPController erpController;

	
	@RequestMapping("list.cafe")
	public String list(HttpServletRequest request) {
		erpController.menuMethod(request);
		return "accounting/list";
	}


}
