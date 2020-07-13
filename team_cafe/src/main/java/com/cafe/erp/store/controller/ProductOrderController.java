package com.cafe.erp.store.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cafe.erp.store.model.ProductOrderDTO;
import com.cafe.erp.store.model.ProductOrderListDTO;
import com.cafe.erp.store.service.OrderService;
import com.cafe.erp.store.service.ProductOrderListSercvice;
import com.cafe.erp.store.service.ProductOrderService;

@Controller
public class ProductOrderController {

	@Resource
	private ProductOrderService productOrderService;
	
	@Resource
	private OrderService orderService;
	
	@Resource
	private ProductOrderListSercvice productOrderListSercvice;
	
	@RequestMapping("/orderinsert")
	public String orderinsert(ProductOrderDTO dto, ProductOrderListDTO dto1) {
		System.out.println("orderinsert 진입");
		
		productOrderService.orderinsert(dto);
		System.out.println("발주 등록 완료");
		
		productOrderListSercvice.orderlistinsert(dto1);
		System.out.println("발주 상세내역 등록 완료");
		
		orderService.deleteorderlistcart();
		
		return "redirect:stockorderlist";
	}
	
}
