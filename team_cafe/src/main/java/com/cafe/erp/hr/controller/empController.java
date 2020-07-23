package com.cafe.erp.hr.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe.erp.hr.model.empDTO;
import com.cafe.erp.hr.model.empTnaDTO;
import com.cafe.erp.hr.model.jobDTO;
import com.cafe.erp.hr.service.empService;
import com.cafe.erp.hr.service.jobService;
import com.cafe.erp.hr.service.salaryService;



@Controller
public class empController {

	@Resource
	private empService empService;
	@Resource
	private jobService jobService;
	@Resource
	private salaryService salaryService;
	
	@RequestMapping(value="hr/emp/insert.cafe",method=RequestMethod.GET)
	public String empInsertForm(Model model) {
		
		List<jobDTO> list = jobService.getJobList();
		
		model.addAttribute("list", list);
		
		return "hr/emp/empInsertForm";
	}

	@RequestMapping(value="hr/emp/insert.cafe",method=RequestMethod.POST)
	public String empInsert(empDTO dto,HttpServletResponse resp) throws Exception{
		
		List<jobDTO> joblist = jobService.getJobList();
		
		if(joblist.isEmpty()) {
			resp.setContentType("text/html; charset=UTF-8");
			PrintWriter out = resp.getWriter();
			out.println("<script>alert('직급을 먼저 등록해주세요');</script>");
			out.flush();

			return "hr/job/jobListForm"; }
		
		empService.insertEmp(dto);
			
		return "redirect:/hr/emp/list.cafe";
	}

	@RequestMapping("hr/emp/list.cafe")
	public String empList(HttpServletRequest req,Model model) {
		
		List<jobDTO> joblist = jobService.getJobList();
		model.addAttribute("joblist", joblist);

		List<empDTO> nameList = salaryService.getName();
		List<empTnaDTO> yearList = salaryService.getYear();
		List<empTnaDTO> monthList = salaryService.getMonth();

		model.addAttribute("nameList", nameList);
		model.addAttribute("yearList", yearList);
		model.addAttribute("monthList", monthList);
		
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

		return "hr/emp/empListForm";
	}

	@RequestMapping("hr/emp/read.cafe")
	public String empRead(int num, int pg, Model model) {

		empDTO dto = empService.getEmp(num);
		model.addAttribute("emp", dto);
		model.addAttribute("pg", pg);
		model.addAttribute("num", num);
		return "hr/emp/empReadForm";
	}

	@RequestMapping("hr/emp/updateForm.cafe")
	public String empUpdateForm(int num, int pg, Model model) {
		
		empDTO dto = empService.getEmp(num);
		
		model.addAttribute("emp", dto);
		model.addAttribute("pg", pg);
		model.addAttribute("num", num);
		
		List<jobDTO> list = jobService.getJobList();
		
		model.addAttribute("list", list);
		
		List<jobDTO> joblist = jobService.getJobList();
		model.addAttribute("joblist", joblist);

		List<empDTO> nameList = salaryService.getName();
		List<empTnaDTO> yearList = salaryService.getYear();
		List<empTnaDTO> monthList = salaryService.getMonth();

		model.addAttribute("nameList", nameList);
		model.addAttribute("yearList", yearList);
		model.addAttribute("monthList", monthList);
		
		return "hr/emp/empUpdateForm";
	}

	@RequestMapping("hr/emp/update.cafe")
	public String empUpdate(empDTO dto,int pg) {
		
		System.out.println(dto.getEmployee_code());
		System.out.println(dto.getEmployee_name());
		int result = empService.updateEmp(dto);
		String res = "redirect:list.cafe?pg=" + pg;
		
		if (result == 0) {
			res = "fail";
		}
		return res;

	}
	
	@RequestMapping("hr/emp/update2.cafe")
	public String empUpdate2(empDTO dto,int pg) {
		
		System.out.println(dto.getEmployee_code());
		System.out.println(dto.getEmployee_name());
		int result = empService.updateEmp2(dto);
		String res = "redirect:list.cafe?pg=" + pg;
		
		if (result == 0) {
			res = "fail";
		}
		return res;

	}
	
//	@RequestMapping("/main.cafe")
//	public String main() {
//		
//		return "erp/main";
//	}
//	@RequestMapping("/empDelete.cafe")
//	public String delete(empDTO dto,int pg) {
//		
//		int result = empService.deleteEmp(dto);
//		System.out.println(dto.getEmployee_code());
//		String res = "redirect:/empList.cafe?pg=" +pg;
//		
//		if (result == 0) {
//			res = "fail";
//		}
//		System.out.println(pg);
//		return res;
//	}
	
	
}
