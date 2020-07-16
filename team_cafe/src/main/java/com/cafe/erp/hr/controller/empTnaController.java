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
import com.cafe.erp.hr.model.empTnaDAO;
import com.cafe.erp.hr.model.empTnaDTO;
import com.cafe.erp.hr.service.empTnaService;

@Controller
public class empTnaController {
	
	@Resource
	private empTnaService empTnaService;
	
	
//	@RequestMapping(value="/empTnaSelect.cafe",method=RequestMethod.GET)
//	public String empTnaSelectForm() {
//		
//		return "empTnaSelectForm";
//	}
//	
//	@RequestMapping(value="/empTnaSelect.cafe",method=RequestMethod.POST)
//	public String empTnaSelect(empDTO dto,Model model) {
//		
//		dto= empTnaService.getEmpTna(dto);
//		
//		int code = dto.getEmployee_code();
//		model.addAttribute("emp", dto);
//		model.addAttribute("code", code);
//		
//		return "empTnaReadForm";
//	}
	
	@RequestMapping(value="/empTnaInsert.cafe",method=RequestMethod.GET)
	public String empTnaInsertForm() {
		
		return "empTnaInsertForm";
	}
	
	@RequestMapping(value="/empTnaInsert.cafe",method=RequestMethod.POST)
	public String empTnaInsert(empTnaDTO dto) {
		
		empTnaService.insertEmpTna(dto);
		
		return "redirect:empTnaList.cafe";
	}
	@RequestMapping(value="/empTnaUpdate.cafe",method=RequestMethod.GET)
	public String empTnaUpdateForm() {
		
		return "empTnaUpdateForm";
	}
	
	@RequestMapping(value="/empTnaUpdate.cafe",method=RequestMethod.POST)
	public String empTnaUpdate(empTnaDTO dto) {
		
		empTnaService.updateEmpTna(dto);
		
		return "redirect:empTnaList.cafe";
	}
	
	@RequestMapping("/empTnaDaySearch.cafe")
	public String empTnaDayForm(Model model) {
		
		List<empTnaDTO> list = empTnaService.getYear();
		List<empTnaDTO> list1 = empTnaService.getMonth();
		List<empTnaDTO> list2 = empTnaService.getDay();
		model.addAttribute("list", list);
		model.addAttribute("list1", list1);
		model.addAttribute("list2", list2);
		return "empTnaDayForm";
	}
	
	@RequestMapping("/empTnaMonthSearch.cafe")
	public String empTnaMonthForm(Model model) {
		
		List<empTnaDTO> list = empTnaService.getYear();
		List<empTnaDTO> list1 = empTnaService.getMonth();
		
		model.addAttribute("list", list);
		model.addAttribute("list1", list1);
		
		return "empTnaMonthForm";
	}
		
	@RequestMapping("/empTnaMonthRead.cafe")
	public String empTnaMonthRead(HttpServletRequest req,int emptna_year,int emptna_month) {
		
		
		int pg = 1;
		String strPg = req.getParameter("pg");

		if (strPg != null) {
			pg = Integer.parseInt(strPg);
		}

		int rowSize = 10;
		int start = (pg * rowSize) - (rowSize - 1);
		int end = pg * rowSize;

		int total = empTnaService.getEmpTnaCount(); // 총 게시글수
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
		map.put("emptna_year", emptna_year);
		map.put("emptna_month", emptna_month);
		
		List<empTnaDTO> list = empTnaService.getMonthRead(map);
		
		req.setAttribute("list", list);
	
		req.setAttribute("pg", pg);
		req.setAttribute("allPage", allPage);
		req.setAttribute("block", block);
		req.setAttribute("fromPage", fromPage);
		req.setAttribute("toPage", toPage);
		
		
		return "empTnaMonthReadForm";
	}
	@RequestMapping("/empTnaDayRead.cafe")
	public String empTnaDayRead(HttpServletRequest req,int emptna_year,int emptna_month,int emptna_day) {
		
		
		int pg = 1;
		String strPg = req.getParameter("pg");

		if (strPg != null) {
			pg = Integer.parseInt(strPg);
		}

		int rowSize = 10;
		int start = (pg * rowSize) - (rowSize - 1);
		int end = pg * rowSize;

		int total = empTnaService.getEmpTnaCount(); // 총 게시글수
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
		map.put("emptna_year", emptna_year);
		map.put("emptna_month", emptna_month);
		map.put("emptna_day", emptna_day);
		
		List<empTnaDTO> list = empTnaService.getDayRead(map);
		
		req.setAttribute("list", list);
	
		req.setAttribute("pg", pg);
		req.setAttribute("allPage", allPage);
		req.setAttribute("block", block);
		req.setAttribute("fromPage", fromPage);
		req.setAttribute("toPage", toPage);
		
		
		return "empTnaDayReadForm";
	}
	
	@RequestMapping("/empTnaList.cafe")
	public String empTnalist(HttpServletRequest req) {
		
		
		int pg = 1;
		String strPg = req.getParameter("pg");

		if (strPg != null) {
			pg = Integer.parseInt(strPg);
		}

		int rowSize = 10;
		int start = (pg * rowSize) - (rowSize - 1);
		int end = pg * rowSize;

		int total = empTnaService.getEmpTnaCount(); // 총 게시글수
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
		
		
		List<empTnaDTO> list = empTnaService.getEmpTnaList(map);
		
		
		
		req.setAttribute("list", list);

		req.setAttribute("pg", pg);
		req.setAttribute("allPage", allPage);
		req.setAttribute("block", block);
		req.setAttribute("fromPage", fromPage);
		req.setAttribute("toPage", toPage);
		
		return "empTnaListForm";
	}
	
	

//	
//	
//	@RequestMapping(value ="/empTnaInsert.cafe", method=RequestMethod.POST)
//	public String empTnaMonthInsertForm(empTnaDTO dto) {
//		
//	
//		return "redirect:empTnaDayList.cafe";
//	}
//	
//	@RequestMapping(value ="/empTnaUpdate.cafe", method=RequestMethod.GET)
//	public String empTnaUpdateForm(int emptna_code,int pg ,Model model) {
//		
//			empTnaDTO dto = empTnaService.getempTna(emptna_code);
//			
//			model.addAttribute("dto", dto);
//			model.addAttribute("pg", pg);
//			model.addAttribute("dto", dto);
//			
//			
//		return "empTnaUpdateForm";
//	}
////	
//	@RequestMapping(value ="/empTnaUpdate.cafe", method=RequestMethod.POST)
//	public String empTnaUpdateForm(empTnaDTO dto,int pg) {
//		
//		
//		int result = empTnaService.updateEmpTna(dto);
//		String res = "redirect:empTnaList.cafe?pg=" + pg;
//		
//		if (result == 0) {
//			res = "fail";
//		}
//		return res;
//	}
}
