package com.cafe.erp.store.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cafe.erp.store.model.OrderDTO;
import com.cafe.erp.store.model.StockDTO;
import com.cafe.erp.store.service.OrderService;

@Controller
public class OrderController {

	@Resource
	private OrderService orderService;
	
	//발주 신청목록보기
	@RequestMapping("/stockorder")
	public String order(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();

		int pg = 1;
		String strPg = req.getParameter("pg");

		if (strPg != null) {
			pg = Integer.parseInt(strPg);
		}

		int rowSize = 10;
		int start = (pg * rowSize) - (rowSize - 1);
		int end = pg * rowSize;

		int total = orderService.getStockCount(); // 총 게시글수
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

		List<StockDTO> list = orderService.getStockList(map);
		req.setAttribute("list", list);
		req.setAttribute("pg", pg);
		req.setAttribute("allPage", allPage);
		req.setAttribute("block", block);
		req.setAttribute("fromPage", fromPage);
		req.setAttribute("toPage", toPage);
		
		return "stockorder";
	}
	
	//임시 발주 테이블에 담기
	@RequestMapping("/ordercartinsert")
	public String ordercartinsert(OrderDTO dto) {
		System.out.println("insert controller 진입");
		orderService.insertordercart(dto);
		System.out.println("insertordercart 완료");
		
		return "redirect:stockorder";
	}
	
	//임시 발주 테이블 목록
	@RequestMapping("/stockorderlist")
	public String showordercartlist(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		int pg = 1;
		String strPg = req.getParameter("pg");

		if (strPg != null) {
			pg = Integer.parseInt(strPg);
		}

		int rowSize = 10;
		int start = (pg * rowSize) - (rowSize - 1);
		int end = pg * rowSize;

		int total = orderService.getStockOrderCount(); // 총 게시글수
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
		List<OrderDTO> order_list = orderService.getStockOrderList(map);
		int cart_total = orderService.getcarttotal();
		req.setAttribute("cart_total", cart_total);
		req.setAttribute("order_list", order_list);
		req.setAttribute("pg", pg);
		req.setAttribute("allPage", allPage);
		req.setAttribute("block", block);
		req.setAttribute("fromPage", fromPage);
		req.setAttribute("toPage", toPage);
		System.out.println(order_list);
		return "stockorderlist";
	}
	
	//임시 발주 테이블 목록 수정페이지
	@RequestMapping("/stockorderupdateform")
	public String stockorderupdateform(int cart_number, int pg, Model model) {
		System.out.println("stockorderupdateform 진입");
		System.out.println("cart_number" + cart_number);
		OrderDTO dto = orderService.getOrder(cart_number);
		
		model.addAttribute("c", dto);
		model.addAttribute("pg", pg);
		System.out.println("수정하기               "+dto.getCart_stock_quantity());
		return "stockorderlistupdate";
	}
	
	//임시 발주 테이블 수정
	@RequestMapping("/stockorderlistupdate")
	public String stockorderupdate (OrderDTO dto, int pg) {
		System.out.println("stockorderupdate 진입");
//		System.out.println("수정한 수량 = " + dto.getCart_stock_quantity());
		orderService.updateordercart(dto);
		
		return "redirect:stockorderlist?pg=" + pg;
	}
	
	//임시 발주 테이블 목록 삭제
	@RequestMapping("/stockorderdelete")
	public String stockorderdelete(OrderDTO dto, int pg) {
		System.out.println("stockorderdelete 진입");
		orderService.deleteordercart(dto);
		System.out.println("stockorderdelete 완료");
		return "redirect:stockorderlist?pg=" + pg;
	}
	
	@RequestMapping("/orderinsert")
	public String orderinsert(OrderDTO dto, int pg) {
		System.out.println("orderinsert 진입");
		orderService.orderinsert(dto);
		System.out.println("발주등록 완료");
		return "redirect:stockorderlist?pg=" + pg;
	}
}
