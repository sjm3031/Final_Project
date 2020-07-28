package com.cafe.erp.sell.controller;


import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cafe.erp.ERPController;
import com.cafe.erp.hr.model.empDTO;
import com.cafe.erp.hr.model.empTnaDTO;
import com.cafe.erp.hr.model.jobDTO;
import com.cafe.erp.hr.service.*;
import com.cafe.erp.sale.model.ProductCategoryVO;
import com.cafe.erp.sale.service.ProductCategoryService;
import com.cafe.erp.store.model.AccountDTO;
import com.cafe.erp.store.service.StockService;



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
