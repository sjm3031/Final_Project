package com.cafe.erp.sale.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cafe.erp.ERPController;
import com.cafe.erp.sale.model.ProductAddDTO;
import com.cafe.erp.sale.service.ProductAddService;


@Controller
@RequestMapping("admin/sale/")
public class ProductAddController {

	@Resource
	private ProductAddService productAddService;
	@Resource
	private ERPController erpController;
	
	@RequestMapping("productAdd/writeform.cafe")
	public String writeForm() {
		return "sale/productAdd/writeform";
	}
	
	
	@RequestMapping("productAdd/write.cafe")
	public String write(ProductAddDTO dto,HttpServletRequest request) throws IOException {


		
		productAddService.insertProductAdd(dto);
		return "redirect:/sale/productAdd/list.cafe";
		
		
	}
	
	@RequestMapping("productAdd/list.cafe")
	public String list(HttpServletRequest request){
		erpController.menuMethod(request);
		 HashMap map = new HashMap();
		 List<ProductAddDTO> list = productAddService.getProductAddList(map);
		 request.setAttribute("list", list);


		return "sale/productAdd/list";
	
	}
	

	
	@RequestMapping("productAdd/updateform.cafe")
	public String updateform(HttpServletRequest request) {
		erpController.menuMethod(request);
		int num = Integer.parseInt(request.getParameter("num"));

		ProductAddDTO dto = productAddService.getProductAddByCode(num);
		request.setAttribute("b", dto);
		return "sale/productAdd/updateform";
	}	
	
	@RequestMapping("productAdd/update.cafe")
	public String update(ProductAddDTO dto) {
		int result = productAddService.updateProductAdd(dto);	// 0: 실패 1:성공
		return "redirect:/sale/productAdd/list.cafe";	
	}
		
	
	@RequestMapping("productAdd/delete.cafe")														/////////////////수정하자..
	public String delete(ProductAddDTO dto,HttpServletRequest request) {
		int num = Integer.parseInt(request.getParameter("num"));
		dto.setProduct_add_code(num);
		productAddService.deleteProductAdd(dto);
		return "redirect:/sale/productAdd/list.cafe";	
	}
	

}
