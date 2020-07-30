package com.cafe.erp;


import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cafe.erp.home.service.PosPasswordService;
import com.cafe.erp.hr.model.empDTO;
import com.cafe.erp.hr.model.empTnaDTO;
import com.cafe.erp.hr.model.jobDTO;
import com.cafe.erp.hr.service.*;
import com.cafe.erp.sale.model.ProductCategoryVO;
import com.cafe.erp.sale.service.ProductCategoryService;
import com.cafe.erp.sell.controller.SellController;
import com.cafe.erp.sell.model.SellDTO;
import com.cafe.erp.sell.service.SellReportsService;
import com.cafe.erp.store.model.AccountDTO;
import com.cafe.erp.store.service.StockService;



@Controller
@RequestMapping("admin/")
public class ERPController {

	@Resource
	private ProductCategoryService productCategoryService;
	
	@Resource
	private jobService jobService;
		 
	@Resource
	private StockService stockService;
	
	@Resource
	private salaryService salaryService;
	
	@Resource
	private PosPasswordService posPasswordService;
	
	@Resource
	private SellReportsService sellReprtsService;
		 
	@RequestMapping("main.cafe")
	public String login() {
		return "erp/main";
		
	}

	@RequestMapping("index.cafe")
	public String index(Model model) {
		menuMethod(model);
		List<SellDTO> accountslist = sellReprtsService.accountslist();
		model.addAttribute("accountslist", accountslist);
		List<SellDTO> list = sellReprtsService.pcount();
		model.addAttribute("bestseller", list.get(0).getName());
		SellDTO yesterday = sellReprtsService.accountslistYesterday();
		model.addAttribute("yesterday", yesterday);
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
	
	
	@RequestMapping("help.cafe")
	public String help(HttpServletRequest request) {
		menuMethod(request);
		return "erp/help";
	}
	
	@RequestMapping("setting.cafe")
	public String setting(HttpServletRequest request) {
		menuMethod(request);
		String pwd = posPasswordService.getPosPassword();
		request.setAttribute("pwd", pwd);
		return "erp/setting";
	}

	@RequestMapping("posPasswordupdateform.cafe")
	public String posPasswordupdateform(HttpServletRequest request) {
		menuMethod(request);
		String pwd = posPasswordService.getPosPassword();
		request.setAttribute("pwd", pwd);
		return "erp/settingUpdateForm";
	}
	//posPasswordupdate.cafe
	@RequestMapping("posPasswordupdate.cafe")
	public String posPasswordupdate(HttpServletRequest request) {
		menuMethod(request);
		String pwd = request.getParameter("cafe_pospassword");
		posPasswordService.updatePosPassword(pwd);
		return "redirect:setting.cafe";
	}
	

	
	
	public void menuMethod(Model model) {
		HashMap map = new HashMap();
		List<ProductCategoryVO> productcategorylist = productCategoryService.getProductCategoryList(map);
		model.addAttribute("productcategorylist", productcategorylist);

		List<AccountDTO> account_list = stockService.getAccountList(map);
		model.addAttribute("account_list", account_list);
		
		List<jobDTO> joblist = jobService.getJobList();
		model.addAttribute("joblist", joblist);

		List<empDTO> nameList = salaryService.getName();
		List<empTnaDTO> yearList = salaryService.getYear();
		List<empTnaDTO> monthList = salaryService.getMonth();

		model.addAttribute("nameList", nameList);
		model.addAttribute("yearList", yearList);
		model.addAttribute("monthList", monthList);
	}
	

	
	public void menuMethod(HttpServletRequest request) {
		HashMap map = new HashMap();
		List<ProductCategoryVO> productcategorylist = productCategoryService.getProductCategoryList(map);
		request.setAttribute("productcategorylist", productcategorylist);

		List<AccountDTO> account_list = stockService.getAccountList(map);
		request.setAttribute("account_list", account_list);
		
		List<jobDTO> joblist = jobService.getJobList();
		request.setAttribute("joblist", joblist);

		List<empDTO> nameList = salaryService.getName();
		List<empTnaDTO> yearList = salaryService.getYear();
		List<empTnaDTO> monthList = salaryService.getMonth();

		request.setAttribute("nameList", nameList);
		request.setAttribute("yearList", yearList);
		request.setAttribute("monthList", monthList);
	}
	

}
