package com.cafe.erp.hr.controller;

import java.io.PrintWriter;
import java.util.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe.erp.hr.model.empTnaDTO;
import com.cafe.erp.hr.service.empTnaService;

@Controller
public class empTnaController {

	@Resource
	private empTnaService empTnaService;

	@RequestMapping(value = "hr/emptna/insert.cafe", method = RequestMethod.GET)
	public String empTnaInsertForm() {

		return "hr/emptna/empTnaInsertForm";
	}

	@RequestMapping(value = "hr/emptna/insert.cafe", method = RequestMethod.POST)
	public String empTnaInsert(empTnaDTO dto, String employee_name, String employee_jumin, HttpServletResponse resp)
			throws Exception {

		HashMap map = new HashMap();
		map.put("employee_name", employee_name);
		map.put("employee_jumin", employee_jumin);
		int total = empTnaService.selectEmp(map);

		if (total == 0) {
			empTnaService.insertEmpTna(dto);
		} else if (total != 0) {
			resp.setContentType("text/html; charset=UTF-8");
			PrintWriter out = resp.getWriter();
			out.println("<script>alert('이미 출근처리 되었습니다.');</script>");
			out.flush();

			return "hr/emptna/empTnaInsertForm";
		}

		return "redirect:list.cafe";
	}

	@RequestMapping(value = "hr/emptna/update.cafe", method = RequestMethod.GET)
	public String empTnaUpdateForm() {

		return "hr/emptna/empTnaUpdateForm";
	}

	@RequestMapping(value = "hr/emptna/update.cafe", method = RequestMethod.POST)
	public String empTnaUpdate(empTnaDTO dto, String employee_name, String employee_jumin, HttpServletResponse resp)
			throws Exception {

		HashMap map = new HashMap();
		map.put("employee_name", employee_name);
		map.put("employee_jumin", employee_jumin);

		dto = empTnaService.selectEmp2(map);

		int total = empTnaService.selectEmp(map);

		if (total == 0) {
			
			resp.setContentType("text/html; charset=UTF-8");
			PrintWriter out = resp.getWriter();
			out.println("<script>alert('출근버튼을 먼저 눌러주세요');</script>");
			out.flush();

			return "hr/emptna/empTnaInsertForm";
			
		} else {
			if (dto.getEmptna_endtime() == null) {

				empTnaService.updateEmpTna(map);

			} else {
				resp.setContentType("text/html; charset=UTF-8");
				PrintWriter out = resp.getWriter();
				out.println("<script>alert('이미 퇴근처리 되었습니다.');</script>");
				out.flush();

				return "hr/emptna/empTnaUpdateForm";
			}
		}

		return "redirect:list.cafe";
	}

	@RequestMapping("hr/emptna/daySearch.cafe")
	public String empTnaDayForm(Model model) {

		List<empTnaDTO> list = empTnaService.getYear();
		List<empTnaDTO> list1 = empTnaService.getMonth();
		List<empTnaDTO> list2 = empTnaService.getDay();
		model.addAttribute("list", list);
		model.addAttribute("list1", list1);
		model.addAttribute("list2", list2);
		return "hr/emptna/empTnaDayForm";
	}

	@RequestMapping("hr/emptna/monthSearch.cafe")
	public String empTnaMonthForm(Model model) {

		List<empTnaDTO> list = empTnaService.getYear();
		List<empTnaDTO> list1 = empTnaService.getMonth();
		List<empTnaDTO> list2 = empTnaService.getName();
		model.addAttribute("list", list);
		model.addAttribute("list1", list1);
		model.addAttribute("list2", list2);
		return "hr/emptna/empTnaMonthForm";
	}

	@RequestMapping("hr/emptna/monthRead.cafe")
	public String empTnaMonthRead(HttpServletRequest req, int emptna_year, int emptna_month, String employee_name) {

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
		map.put("employee_name", employee_name);
		List<empTnaDTO> list = empTnaService.getMonthRead(map);

		req.setAttribute("list", list);

		req.setAttribute("pg", pg);
		req.setAttribute("allPage", allPage);
		req.setAttribute("block", block);
		req.setAttribute("fromPage", fromPage);
		req.setAttribute("toPage", toPage);

		return "hr/emptna/empTnaMonthReadForm";
	}

	@RequestMapping("hr/emptna/dayRead.cafe")
	public String empTnaDayRead(HttpServletRequest req, int emptna_year, int emptna_month, int emptna_day) {

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

		return "hr/emptna/empTnaDayReadForm";
	}

	@RequestMapping("hr/emptna/list.cafe")
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

		return "hr/emptna/empTnaListForm";
	}

	@RequestMapping(value = "hr/emptna/update2.cafe", method = RequestMethod.GET)
	public String empTnaUpdateForm(int emptna_code, int pg, Model model) {

		empTnaDTO dto = empTnaService.getEmpTna(emptna_code);
		System.out.println(dto.getEmptna_starttime());
		model.addAttribute("dto", dto);
		model.addAttribute("pg", pg);
		model.addAttribute("emptna_code", emptna_code);

		return "hr/emptna/empTnaUpdateForm2";
	}

	@RequestMapping(value = "hr/emptna/update2.cafe", method = RequestMethod.POST)
	public String empTnaUpdate(empTnaDTO dto, int pg, @RequestParam("starttime") String starttime,
			@RequestParam("endtime") String endtime, Model model, int emptna_code, HttpServletResponse resp)
			throws Exception {

		model.addAttribute("starttime", starttime);
		model.addAttribute("endtime", endtime);
		model.addAttribute("emptna_code", emptna_code);

		int result = empTnaService.updateEmpTna3(dto);

		HashMap map = new HashMap();
		map.put("emptna_code", emptna_code);

		String res = "redirect:list.cafe?pg=" + pg;

		if (result == 0) {
			res = "fail";
		}
		return res;
	}

}