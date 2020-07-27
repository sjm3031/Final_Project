package com.cafe.erp.pos.controller;


import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cafe.erp.sale.model.ProductAddDTO;
import com.cafe.erp.sale.model.ProductVO;
import com.cafe.erp.sale.service.ProductAddService;
import com.cafe.erp.userWeb.model.OrderWebDTO;
import com.cafe.erp.userWeb.model.OrderWebListAddJoinDTO;
import com.cafe.erp.userWeb.service.OrderWebService;
import com.cafe.erp.userWeb.service.ProductCartService;

/*

@Controller
@RequestMapping("pos/")
public class PosController_before {

	@Autowired
	private OrderWebService orderWebService;
	
	@Resource
	private ProductCartService productCartService;
	
	@Resource
	private ProductAddService productAddService;
	
	
	@RequestMapping("main.cafe")
	public String main() {
		return "pos/main";
		
	}

	@ResponseBody
	@RequestMapping("webOrderCheck.cafe")
	public String webOrderCheck(){
		int check=orderWebService.getOrderWebCheck();
		String result = "null";
		if (check !=0) {
			result = "exit";
		}
		return result;			//null이면 접수안된 주문이 없는것
	}
	
	@RequestMapping("orderlist.cafe")				//주문 list 불러오기
	public String orderlist(HttpServletRequest request) {
		//주문테이블에 오늘날짜의 주문 list 가져오기

		String pattern = "yyyy/MM/dd";
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
		String date = simpleDateFormat.format(new Date());
		date =date.substring(2);
		
		List<OrderWebDTO> orderlist = orderWebService.getOrderWebListAll(date);
		request.setAttribute("orderlist", orderlist);
	
		return "pos/order/orderList";
	}
	
	
	@RequestMapping("orderlistview.cafe")				//주문 list 불러오기
	public String orderlistview(HttpServletRequest request) {
		int order_web_code = Integer.parseInt(request.getParameter("orderWebCode"));
		request.setAttribute("orderWebCode", order_web_code);
		
		List<ProductVO> productlist = productCartService.getProductList();
		request.setAttribute("productlist", productlist);

		HashMap map = new HashMap();
		List<ProductAddDTO> addlist = productAddService.getProductAddList(map);
		request.setAttribute("addlist", addlist);

		//주문내역 테이블 가져오기 
		//주문내역 추가사항내역테이블 가져오기
		//join..
		List<OrderWebListAddJoinDTO> list = orderWebService.getOrderWebListAddJoinList(order_web_code);
		request.setAttribute("list", list);
	
		return "pos/order/orderListView";
	}
	
	@RequestMapping("orderconfirm.cafe")
	public String orderconfirm(HttpServletRequest request) {
		int order_web_code = Integer.parseInt(request.getParameter("orderWebCode"));
		orderWebService.updateOrderWebCheck(order_web_code);
		return "redirect:/pos/orderlist.cafe";
		
	}
	
}
*/
