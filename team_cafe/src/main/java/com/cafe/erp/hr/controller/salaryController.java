package com.cafe.erp.hr.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe.erp.hr.model.empDTO;
import com.cafe.erp.hr.model.empTnaDTO;
import com.cafe.erp.hr.model.salaryDTO;
import com.cafe.erp.hr.service.salaryService;

@Controller
public class salaryController {

	@Resource
	private salaryService salaryService;

	@RequestMapping(value="hr/salary/list.cafe",method=RequestMethod.GET)
	public String SalaryListForm(HttpServletRequest req) {
		
		List<empTnaDTO> list = salaryService.getMonth();
		req.setAttribute("tm", list);
		
		List<empTnaDTO> list2 = salaryService.getYear();
		req.setAttribute("ty", list2);
		
		int pg = 1;
		String strPg = req.getParameter("pg");

		if (strPg != null) {
			pg = Integer.parseInt(strPg);
		}

		int rowSize = 10;
		int start = (pg * rowSize) - (rowSize - 1);
		int end = pg * rowSize;

		int total = salaryService.getSalaryCount(); // 총 게시글수
		System.out.println("start : " + start + "end : " + end);
		System.out.println("write count : " + total);

		int allPage = (int) Math.ceil(total / (double) rowSize); // 페이지수
		int totalPage = total / rowSize + (total % rowSize == 0 ? 0 : 1);
		System.out.println("page count : " + allPage);

		int block = 10; // 한페이지에 보여줄 범위 [1][2][3]~~[10]
		int fromPage = ((pg - 1) / block * block) + 1; // 보여줄 페이지의 시작
		int toPage = ((pg - 1) / block * block) + block; // 보여줄 페이지의 끝

		if (toPage > allPage) { // ex)20>17
			toPage = allPage;
		}

		HashMap map = new HashMap();
		map.put("start", start);
		map.put("end", end);

		List<salaryDTO> list1 = salaryService.getSalaryList(map);
		req.setAttribute("list1", list1);
		req.setAttribute("pg", pg);
		req.setAttribute("allPage", allPage);
		req.setAttribute("block", block);
		req.setAttribute("fromPage", fromPage);
		req.setAttribute("toPage", toPage);

		return "hr/salary/salaryListForm";
	
	}
	
	@RequestMapping(value="hr/salary/list.cafe",method=RequestMethod.POST)
	public String SalarySearch(HttpServletRequest req,int salary_year,int salary_month) {
		
		List<empTnaDTO> tm = salaryService.getMonth();
		req.setAttribute("tm", tm);
		
		List<empTnaDTO> ty = salaryService.getYear();
		req.setAttribute("ty", ty);
		
		int pg = 1;
		String strPg = req.getParameter("pg");

		if (strPg != null) {
			pg = Integer.parseInt(strPg);
		}

		int rowSize = 10;
		int start = (pg * rowSize) - (rowSize - 1);
		int end = pg * rowSize;

		int total = salaryService.getSalaryCount(); // 총 게시글수
		System.out.println("start : " + start + "end : " + end);
		System.out.println("write count : " + total);

		int allPage = (int) Math.ceil(total / (double) rowSize); // 페이지수
		int totalPage = total / rowSize + (total % rowSize == 0 ? 0 : 1);
		System.out.println("page count : " + allPage);

		int block = 10; // 한페이지에 보여줄 범위 [1][2][3]~~[10]
		int fromPage = ((pg - 1) / block * block) + 1; // 보여줄 페이지의 시작
		int toPage = ((pg - 1) / block * block) + block; // 보여줄 페이지의 끝

		if (toPage > allPage) { // ex)20>17
			toPage = allPage;
		}

		HashMap map = new HashMap();
		map.put("start", start);
		map.put("end", end);
		
		map.put("salary_year", salary_year);
		map.put("salary_month", salary_month);
		
		System.out.println(salary_year);
		System.out.println(salary_month);
		List<salaryDTO> list = salaryService.searchSalary(map);
		
		req.setAttribute("list1", list);
		req.setAttribute("pg", pg);
		req.setAttribute("allPage", allPage);
		req.setAttribute("block", block);
		req.setAttribute("fromPage", fromPage);
		req.setAttribute("toPage", toPage);
		
		return "hr/salary/salaryListForm";
	}
	
	@RequestMapping(value="hr/salary/insert.cafe",method=RequestMethod.GET)
	public String insertForm(Model model) {
		
		List<empDTO> list = salaryService.getName();
		List<empTnaDTO> list2 = salaryService.getYear();
		List<empTnaDTO> list3 = salaryService.getMonth();
		
		
		model.addAttribute("list", list);
		model.addAttribute("list2", list2);
		model.addAttribute("list3", list3);
		return "hr/salary/salaryInsertForm";
	
	}
	
	@RequestMapping(value="hr/salary/insert.cafe",method=RequestMethod.POST)
	public String insert(salaryDTO dto,Model model,String employee_name,int salary_year,int salary_month,int
			salary_date) {
		
		HashMap map = new HashMap();
		map.put("employee_name", employee_name);
		map.put("salary_year", salary_year);
		map.put("salary_month", salary_month);
		map.put("salary_date", salary_date);
		
		int monthtotal = salaryService.getMaxMonthTotal(map);
		map.put("monthtotal", monthtotal);
		
		salaryService.insertSalary(map);
//		model.addAttribute("salary_date", salary_date);
//		System.out.println(salary_date);
		return "redirect:list.cafe";
	}
	@RequestMapping(value="hr/salary/update.cafe",method=RequestMethod.GET)
	public String SalaryUpdate(int salary_code,Model model,int pg) {
		
		salaryDTO dto = salaryService.getSalary(salary_code);
		model.addAttribute("salary", dto);
		model.addAttribute("pg", pg);
		model.addAttribute("salary_code",salary_code);
		
		return "hr/salary/salaryUpdateForm";
	}
	
	@RequestMapping(value="hr/salary/update.cafe",method=RequestMethod.POST)
	public String SalaryUpdate(salaryDTO dto,int pg) {
		
		int result = salaryService.updateSalary(dto);
		
		String res = "redirect:list.cafe?pg=" + pg;
		
		if (result == 0) {
			res = "fail";
		}
		return res;
	}
}
