package com.cafe.erp.cs.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cafe.erp.ERPController;
import com.cafe.erp.cs.model.CustomerDTO;
import com.cafe.erp.cs.service.CustomerService;




@Controller
@RequestMapping("admin/cs/")
public class CustomerController {


	@Resource
	private CustomerService customerService;
	
	@Resource
	private ERPController erpController;

	
	@RequestMapping("customer/writeform.cafe")
	public String writeForm() {
		
		return "cs/customer/writeform";
	}
	
	
	@RequestMapping("customer/write.cafe")
	public String write(CustomerDTO dto) {
	
		customerService.insertBoard(dto);
		
		return "redirect:/cs/customer/list.cafe";
	}

	@RequestMapping("customer/list.cafe")
	public String list(HttpServletRequest request){
		
		erpController.menuMethod(request);
		
		
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

		return "cs/customer/list";
		
		
		
	}
	
	


	@RequestMapping("customer/read.cafe")
	public String read(int customer_code, int pg, Model model) { 
		
		CustomerDTO dto = customerService.getBoard(customer_code); 
		System.out.println(dto);
		
		model.addAttribute("b", dto);
		model.addAttribute("pg", pg);
		
		
		return "cs/customer/read"; 
		
		
	}
	
	

	
	
	@RequestMapping("customer/updateform.cafe")
	public String updateform(int  customer_code, int pg, Model model) {
		erpController.menuMethod(model);
		CustomerDTO dto = customerService.getBoard(customer_code);
		model.addAttribute("b", dto);
		model.addAttribute("pg", pg);
		
		return "cs/customer/updateform"; 
		
	}
	
	
	
	@RequestMapping("customer/update.cafe")
	public String update(CustomerDTO dto, int pg) {
		System.out.println("update ==>"+dto);
		int result = customerService.updateBoard(dto); 
		System.out.println("update result=>"+result);
		String res = "redirect:/cs/customer/list.cafe?pg="+pg;
		
		if(result == 0) {
			res = "fail"; 

		}
		return res;
		
		
	}
	

	@RequestMapping("customer/deleteform.cafe")
	public String deleteform() {
		
		return "cs/customer/deleteform";
	}
	
	
	@RequestMapping("customer/delete.cafe")
	public String delete(CustomerDTO dto,int pg ) {
		int result = customerService.deleteBoard(dto); 
		String res = "redirect:/cs/customer/list.cafe?pg="+pg;
		if(result == 0) res="fail";
		return res;
		
		
	}

}
