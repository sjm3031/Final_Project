package com.cafe.erp;


import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cafe.erp.sale.model.ProductCategoryVO;
import com.cafe.erp.sale.service.ProductCategoryService;



@Controller
public class ERPController {

	@Resource
	private ProductCategoryService productCategoryService;
		 
		 
	@RequestMapping("main.cafe")
	public String login() {
		return "erp/main";
		
	}

	@RequestMapping("index.cafe")
	public String index(Model model) {
		 HashMap map = new HashMap();
		 List<ProductCategoryVO> list = productCategoryService.getProductCategoryList(map);
		 model.addAttribute("productcategorylist", list);
	
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

}
