package com.cafe.erp.sale.controller;

import java.io.FileOutputStream;
import java.io.IOException;

import java.util.HashMap;

import java.util.List;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cafe.erp.sale.model.ProductCategoryVO;
import com.cafe.erp.sale.model.ProductVO;
import com.cafe.erp.sale.service.ProductCategoryService;
import com.cafe.erp.sale.service.ProductService;


@Controller
@RequestMapping("sale/")
public class ProductCategoryController {

	@Resource
	private ProductCategoryService productCategoryService;
	
	@RequestMapping("productCategory/writeform.cafe")
	public String writeForm() {
		return "sale/productCategory/writeform";
	}
	
	
	@RequestMapping("productCategory/write.cafe")
	public String write(ProductCategoryVO vo,HttpServletRequest request) throws IOException {


		
		productCategoryService.insertProductCategory(vo);
		return "redirect:/sale/productCategory/list.cafe";
		
		
	}
	
	@RequestMapping("productCategory/list.cafe")
	public String list(HttpServletRequest request){
		 HashMap map = new HashMap();
		 List<ProductCategoryVO> list = productCategoryService.getProductCategoryList(map);
		 request.setAttribute("list", list);


		return "sale/productCategory/list";
	
	}
	

	
	@RequestMapping("productCategory/updateform.cafe")
	public String updateform(HttpServletRequest request) {
		int num = Integer.parseInt(request.getParameter("num"));

		ProductCategoryVO vo = productCategoryService.getProductCategoryByCode(num);
		request.setAttribute("b", vo);
		return "sale/productCategory/updateform";
	}	
	
	@RequestMapping("productCategory/update.cafe")
	public String update(ProductCategoryVO vo) {
		int result = productCategoryService.updateProductCategory(vo);	// 0: 실패 1:성공
		return "redirect:/sale/productCategory/list.cafe";	
	}
		
	
	@RequestMapping("productCategory/delete.cafe")														/////////////////수정하자..
	public String delete(ProductCategoryVO vo,HttpServletRequest request) {
		int num = Integer.parseInt(request.getParameter("num"));
		vo.setProduct_category_code(num);
		productCategoryService.deleteProductCategory(vo);
		return "redirect:/sale/productCategory/list.cafe";	
	}
	

}
