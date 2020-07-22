package com.cafe.erp;


import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cafe.erp.sale.model.ProductCategoryVO;
import com.cafe.erp.sale.service.ProductCategoryService;
import com.cafe.erp.store.model.AccountDTO;
import com.cafe.erp.store.service.StockService;



@Controller
public class ERPController {

	@Resource
	private ProductCategoryService productCategoryService;
		 
	@Resource
	private StockService stockService;
		 
	@RequestMapping("main.cafe")
	public String login() {
		return "erp/main";
		
	}

	@RequestMapping("index.cafe")
	public String index(Model model) {
		 HashMap map = new HashMap();
		 List<ProductCategoryVO> list = productCategoryService.getProductCategoryList(map);
		 model.addAttribute("productcategorylist", list);
		 
		 List<AccountDTO> account_list = stockService.getAccountList(map);
		 model.addAttribute("account_list", account_list);
		 
	
		return "erp/index";
		
	}
	
	@RequestMapping("tem1.cafe")
	public String tem1() {
		return "erp/product-brands";
		
	}
	
	@RequestMapping("tem2.cafe")
	public String tem2() {
		return "erp/index";
		
	}
	
	@RequestMapping("tem3.cafe")
	public String tem3() {
		return "erp/index2";
	}
	
	@RequestMapping("sales-reports.cafe")
	public String salesreports(){
		return "erp/sales-reports";
	}

}
