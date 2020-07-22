package com.cafe.erp;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cafe.erp.hr.model.empDTO;
import com.cafe.erp.hr.model.empTnaDTO;
import com.cafe.erp.hr.model.jobDTO;
import com.cafe.erp.hr.service.jobService;
import com.cafe.erp.hr.service.salaryService;
import com.cafe.erp.sale.model.ProductCategoryVO;
import com.cafe.erp.sale.service.ProductCategoryService;

@Controller
public class ERPController {

	@Resource
	private ProductCategoryService productCategoryService;
	@Resource
	private jobService jobService;
	@Resource
	private salaryService salaryService;
	
	@RequestMapping("main.cafe")
	public String login() {
		return "erp/main";

	}

	@RequestMapping("index.cafe")
	public String index(Model model) {
		HashMap map = new HashMap();

		List<ProductCategoryVO> list = productCategoryService.getProductCategoryList(map);
		model.addAttribute("productcategorylist", list);

		List<jobDTO> joblist = jobService.getJobList();
		model.addAttribute("joblist", joblist);

		List<empDTO> nameList = salaryService.getName();
		List<empTnaDTO> yearList = salaryService.getYear();
		List<empTnaDTO> monthList = salaryService.getMonth();

		model.addAttribute("nameList", nameList);
		model.addAttribute("yearList", yearList);
		model.addAttribute("monthList", monthList);
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
