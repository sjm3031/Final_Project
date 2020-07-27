package com.cafe.erp.hr.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe.erp.ERPController;
import com.cafe.erp.hr.model.empDTO;
import com.cafe.erp.hr.model.empTnaDTO;
import com.cafe.erp.hr.model.jobDTO;
import com.cafe.erp.hr.service.jobService;
import com.cafe.erp.hr.service.salaryService;
import com.cafe.erp.sale.model.ProductCategoryVO;
import com.cafe.erp.sale.service.ProductCategoryService;
import com.cafe.erp.store.model.AccountDTO;
import com.cafe.erp.store.service.StockService;






@Controller
@RequestMapping("admin/")
public class jobController {

	@Resource
	private jobService jobService;
	@Resource
	private salaryService salaryService;
	@Resource
	private StockService stockService;
	@Resource
	private ProductCategoryService productCategoryService;
	@Resource
	private ERPController erpController;
	
	@RequestMapping(value = "hr/job/list.cafe", method = RequestMethod.GET)
	public String jobList(Model model) {
		HashMap map = new HashMap();
		List<ProductCategoryVO> productcategorylist = productCategoryService.getProductCategoryList(map);
		model.addAttribute("productcategorylist", productcategorylist);

		List<AccountDTO> account_list = stockService.getAccountList(map);
		model.addAttribute("account_list", account_list);
		
		List<jobDTO> list = jobService.getJobList();
		model.addAttribute("list", list);

		List<empDTO> nameList = salaryService.getName();
		List<empTnaDTO> yearList = salaryService.getYear();
		List<empTnaDTO> monthList = salaryService.getMonth();

		model.addAttribute("nameList", nameList);
		model.addAttribute("yearList", yearList);
		model.addAttribute("monthList", monthList);
		
		return "hr/job/jobListForm";
	}
	
	@RequestMapping(value = "hr/job/list.cafe", method = RequestMethod.POST)
	public String jobInsert(jobDTO dto) {
		
			jobService.insertJob(dto);
			
			return "redirect:list.cafe";
		}
	
	@RequestMapping("hr/job/delete.cafe")
	public String jobDelete(int job_code) {
			
			jobService.deleteJob(job_code);
			
			return "redirect:list.cafe";
	}
	
	@RequestMapping(value = "hr/job/update.cafe", method = RequestMethod.GET)
	public String jobUpdateForm(int job_code, Model model) {
		jobDTO dto = jobService.getJob(job_code);
		model.addAttribute("dto", dto);
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
		
		return "hr/job/jobUpdateForm";
	}
	
	@RequestMapping(value = "hr/job/update.cafe", method = RequestMethod.POST)
	public String jobUpdate(jobDTO dto) {
		jobService.updateJob(dto);
		return "redirect:list.cafe";
	}
}
