package com.cafe.erp.hr.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cafe.erp.hr.model.empDTO;
import com.cafe.erp.hr.service.empService;



@Controller
public class empController {

	@Resource
	private empService empService;

	@RequestMapping("/empInsertForm.cafe")
	public String empInsertForm() {

		return "empInsertForm";
	}

	@RequestMapping("/empInsert.cafe")
	public String empInsert(empDTO dto) {
		empService.insertEmp(dto);
			
		return "redirect:empList.cafe";
	}

	@RequestMapping("/empList.cafe")
	public String empList(HttpServletRequest req) {

		int pg = 1;
		String strPg = req.getParameter("pg");

		if (strPg != null) {
			pg = Integer.parseInt(strPg);
		}

		int rowSize = 10;
		int start = (pg * rowSize) - (rowSize - 1);
		int end = pg * rowSize;

		int total = empService.getEmpCount(); // 총 게시글수
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

		List<empDTO> list = empService.getEmpList(map);
		req.setAttribute("list", list);
		req.setAttribute("pg", pg);
		req.setAttribute("allPage", allPage);
		req.setAttribute("block", block);
		req.setAttribute("fromPage", fromPage);
		req.setAttribute("toPage", toPage);

		return "empListForm";
	}

//	@RequestMapping("/empRead.cafe")
//	public String empRead(int num, int pg, Model model) {
//
//		empDTO dto = empService.getEmp(num);
//		model.addAttribute("emp", dto);
//		model.addAttribute("pg", pg);
//		model.addAttribute("num", num);
//		return "empReadForm";
//	}

	@RequestMapping("/empUpdateForm.cafe")
	public String empUpdateForm(int num, int pg, Model model) {
		
		empDTO dto = empService.getEmp(num);
		
		model.addAttribute("emp", dto);
		model.addAttribute("pg", pg);
		model.addAttribute("num", num);
		return "empUpdateForm";
	}

	@RequestMapping("/empUpdate.cafe")
	public String empUpdate(empDTO dto,int pg) {
		
		System.out.println(dto.getEmployee_code());
		System.out.println(dto.getEmployee_name());
		int result = empService.updateEmp(dto);
		String res = "redirect:/empList.cafe?pg=" + pg;
		
		if (result == 0) {
			res = "fail";
		}
		return res;

	}
	
	
	@RequestMapping("/empDelete.cafe")
	public String delete(empDTO dto,int pg) {
		
		int result = empService.deleteEmp(dto);
		System.out.println(dto.getEmployee_code());
		String res = "redirect:/empList.cafe?pg=" +pg;
		
		if (result == 0) {
			res = "fail";
		}
		System.out.println(pg);
		return res;
	}
}
