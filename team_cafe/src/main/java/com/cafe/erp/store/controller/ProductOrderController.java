package com.cafe.erp.store.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
		
		orderService.updatecode();
		productOrderListSercvice.orderlistinsert(dto1);
		System.out.println("발주 상세내역 등록 완료");
		
		orderService.deleteorderlistcart();
		
		return "redirect:stockorderlist";
	}
	
	
	@RequestMapping("/orderlist")
	public String orderlist(HttpServletRequest req) {
		System.out.println("orderlist 진입");
		ModelAndView mav = new ModelAndView();

		int pg = 1;
		String strPg = req.getParameter("pg");

		if (strPg != null) {
			pg = Integer.parseInt(strPg);
		}

		int rowSize = 10;
		int start = (pg * rowSize) - (rowSize - 1);
		int end = pg * rowSize;

		int total = productOrderService.getordercount(); // 총 게시글수
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

		List<ProductOrderDTO> list = productOrderService.showorderlist(map);
		req.setAttribute("list", list);
		req.setAttribute("pg", pg);
		req.setAttribute("allPage", allPage);
		req.setAttribute("block", block);
		req.setAttribute("fromPage", fromPage);
		req.setAttribute("toPage", toPage);
		
		return "orderlist";
	}
	
	@RequestMapping("/detaillist")
	public String detaillist(HttpServletRequest req, @Param("productOrder_code") int productOrder_code) {
		System.out.println("detaillist 진입");
//		String productOrder_code = req.getParameter("productOrder_code");
//		System.out.println(productOrder_code);
		ModelAndView mav = new ModelAndView();
		
		int pg = 1;
		String strPg = req.getParameter("pg");

		if (strPg != null) {
			pg = Integer.parseInt(strPg);
		}

		int rowSize = 10;
		int start = (pg * rowSize) - (rowSize - 1);
		int end = pg * rowSize;
		
		int total = productOrderListSercvice.detailcount(productOrder_code); // 총 게시글수
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

		map.put("productOrder_code", productOrder_code);
		List<ProductOrderListDTO> list = productOrderListSercvice.detailshow(map);
		req.setAttribute("orderdetail", list);
		req.setAttribute("pg", pg);
		req.setAttribute("allPage", allPage);
		req.setAttribute("block", block);
		req.setAttribute("fromPage", fromPage);
		req.setAttribute("toPage", toPage);
		
		return "orderdetail";
	}
	
}
