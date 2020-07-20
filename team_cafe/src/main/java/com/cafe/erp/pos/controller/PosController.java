package com.cafe.erp.pos.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cafe.erp.sale.model.ProductAddDTO;
import com.cafe.erp.sale.model.ProductVO;
import com.cafe.erp.sale.service.ProductAddService;
import com.cafe.erp.sale.service.ProductCategoryService;
import com.cafe.erp.sale.service.ProductService;

@Controller
@RequestMapping("pos/")
public class PosController {
	
	@Resource
	private ProductService productService;
	
	@Resource
	private ProductCategoryService productCategoryService;
	
	@Resource
	private ProductAddService productAddService;
	
	@RequestMapping("home.cafe")
	public String posMain(Model model) {
		return "pos/home";
	}
	
	@ResponseBody
	@RequestMapping("typeSelect.cafe")
	public List<ProductVO> posTypeSelect(@RequestParam(value = "code") String code) {
		System.out.println(code);
		int pcode = Integer.parseInt(code);
		return productService.getProductListByCategory(pcode);
	}
	
	@ResponseBody
	@RequestMapping("productSelect.cafe")
	public ProductVO posProductSelect(@RequestParam(value = "id") String id) {
		System.out.println(id);
		int pid = Integer.parseInt(id);
		return productService.getProductByCode(pid);
	}
	
	@ResponseBody
	@RequestMapping("optionList.cafe")
	public List<ProductAddDTO> posOptionList(){
		HashMap map = new HashMap();
		return productAddService.getProductAddList(map);
	}
	
	@ResponseBody
	@RequestMapping("optionSelect.cafe")
	public ProductAddDTO posOptionSelect(@RequestParam(value = "id") String id) {
		int oid = Integer.parseInt(id);
		return productAddService.getProductAddByCode(oid);
	}
	
	@RequestMapping("/pos/login")
	public String posLogin(HttpServletRequest request, HttpServletResponse response) {
		return "pos/posLogin";
	}
	
	@RequestMapping("/admin/")
	public String admin(Authentication auth) {
		return "admin/main";
	}
}
