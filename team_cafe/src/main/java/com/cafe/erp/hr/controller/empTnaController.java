package com.cafe.erp.hr.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe.erp.hr.model.empTnaDTO;
import com.cafe.erp.hr.service.empTnaService;

@Controller
public class empTnaController {
	
	@Resource
	private empTnaService empTnaService;
	
	@RequestMapping("/empTnaDayList.cafe")
	public String empTnaDaylist(HttpServletRequest req) {
		
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

		List<empTnaDTO> list = empTnaService.getDayTnaList(map);
		req.setAttribute("list", list);
		req.setAttribute("pg", pg);
		req.setAttribute("allPage", allPage);
		req.setAttribute("block", block);
		req.setAttribute("fromPage", fromPage);
		req.setAttribute("toPage", toPage);

		return "empTnaDayListForm";
	}
	
	@RequestMapping("/empTnaMonthList.cafe")
	public String empTnaMonthlist(HttpServletRequest req) {
		
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

		List<empTnaDTO> list = empTnaService.getDayTnaList(map);
		req.setAttribute("list", list);
		req.setAttribute("pg", pg);
		req.setAttribute("allPage", allPage);
		req.setAttribute("block", block);
		req.setAttribute("fromPage", fromPage);
		req.setAttribute("toPage", toPage);

		return "empTnaMonthListForm";
	}
	
	@RequestMapping(value ="/empTnaInsert.cafe", method=RequestMethod.GET)
	public String empTnaDayInsertForm() {
		
		return "empTnaInsertForm";
	}
	
	@RequestMapping(value ="/empTnaInsert.cafe", method=RequestMethod.POST)
	public String empTnaMonthInsertForm(empTnaDTO dto) {
		
		empTnaService.insertEmpTna(dto);
		return "redirect:empTnaDayList.cafe";
	}
	
//	@RequestMapping(value ="/empTnaUpdate.cafe", method=RequestMethod.GET)
//	public String empTnaUpdateForm 
}
