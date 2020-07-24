package com.cafe.erp.cs.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cafe.erp.cs.model.CustomerDTO;
import com.cafe.erp.cs.service.CustomerService;




@Controller
public class CustomerController {


	@Resource
	private CustomerService customerService;
	
	@RequestMapping("writeform.htm")
	public String writeForm() {
		
		return "writeform";
	}
	
	@RequestMapping("write.htm")
	public String write(CustomerDTO dto) {
	
		customerService.insertBoard(dto);
		
		return "redirect:/list.htm";
	}
	
	@RequestMapping("list.htm")
	public String list(HttpServletRequest request){
		int pg = 1; 	
		
		String strPg = request.getParameter("pg");
		  
		if( strPg != null ) {
			pg = Integer.parseInt(strPg);
		}
	
		
		int rowSize = 3;			
		int start = (pg*rowSize) - (rowSize-1);			
		int end = pg*rowSize;							
		
		int total = customerService.getBoardCount();		
		
		int allPage = (int)Math.ceil(total / (double)rowSize);			
		
		
		int block = 5;		
		
		int fromPage = ((pg-1) / block*block) + 1;
		int toPage = ( (pg-1) / block*block) + block; 
		
		if (toPage > allPage) {
			toPage = allPage;
		}
		 HashMap map = new HashMap();
		  map.put("start", start);
		  map.put("end", end);
		  
		  List<CustomerDTO> list = customerService.getBoardList(map);
		  request.setAttribute("list", list);
		  request.setAttribute("pg", pg);
		  request.setAttribute("allPage", allPage);
		  request.setAttribute("block", block);
		  request.setAttribute("fromPage", fromPage);
		  request.setAttribute("toPage", toPage);

		return "list";
		
		
		
	}
	
	@RequestMapping("/read.htm")
	public String read(int customer_code, int pg, Model model) { 
		
		CustomerDTO dto = customerService.getBoard(customer_code); 
		System.out.println(dto);
		
		model.addAttribute("b", dto);
		model.addAttribute("pg", pg);
		
		
		return "read"; 
		
		
	}
	
	

	
	@RequestMapping("updateform.htm")
	public String updateform(int  customer_code, int pg, Model model) {
		CustomerDTO dto = customerService.getBoard(customer_code);
		model.addAttribute("b", dto);
		model.addAttribute("pg", pg);
		
		return "updateform"; 
	}
	
	
	@RequestMapping("update.htm")
	public String update(CustomerDTO dto, int pg) {
		System.out.println("update ==>"+dto);
		int result = customerService.updateBoard(dto); 
		System.out.println("update result=>"+result);
		String res = "redirect:/list.htm?pg="+pg;
		
		if(result == 0) {
			res = "fail"; 

		}
		return res;
		
		
	}
	
	@RequestMapping("deleteform.htm")
	public String deleteform() {
		
		return "deleteform";
	}
	
	@RequestMapping("delete.htm")
	public String delete(CustomerDTO dto,int pg ) {
		int result = customerService.deleteBoard(dto); 
		String res = "redirect:/list.htm?pg="+pg;
		if(result == 0) res="fail";
		return res;
		
		
	}

}
