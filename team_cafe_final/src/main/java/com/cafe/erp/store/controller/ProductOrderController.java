package com.cafe.erp.store.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cafe.erp.ERPController;
import com.cafe.erp.store.model.AccountDTO;
import com.cafe.erp.store.model.OrderDTO;
import com.cafe.erp.store.model.ProductOrderDTO;
import com.cafe.erp.store.model.ProductOrderListDTO;
import com.cafe.erp.store.service.OrderService;
import com.cafe.erp.store.service.ProductOrderListSercvice;
import com.cafe.erp.store.service.ProductOrderService;

@Controller
@RequestMapping("admin/store")
public class ProductOrderController {

	@Resource
	private ProductOrderService productOrderService;
	@Resource
	private ERPController erpController;
	
	@Resource
	private OrderService orderService;
	
	@Resource
	private ProductOrderListSercvice productOrderListSercvice;
	
	@RequestMapping("/orderinsert.cafe")
	public String orderinsert(ProductOrderDTO dto, ProductOrderListDTO dto1, HttpServletRequest req) throws Exception {
//		System.out.println("orderinsert 진입");
		
		//발주 등록
    	productOrderService.orderinsert(dto);
//    	System.out.println("발주 등록 완료");
	
		//임시 발주 목록에 발주 등록번호를 업데이트 해줌
		orderService.updatecode();
		int pg = 1;
		String strPg = req.getParameter("pg");

		if (strPg != null) {
			pg = Integer.parseInt(strPg);
		}

		int rowSize = 10;
		int start = (pg * rowSize) - (rowSize - 1);
		int end = pg * rowSize;
		//임시 발주 목록에 등록되어 있는 거래처 email로 메일 보내기
		//거래처 테이블에 등록되어있는 사업자번호 가져오기
		HashMap map = new HashMap();
		map.put("start", start);
		map.put("end", end);
		List<AccountDTO> accountnumber = productOrderService.getaccountnumber();
//		List<OrderDTO> orderlistaccountnumber = orderService.getStockOrderList(map);
		List<OrderDTO> orderlistaccountnumber = orderService.getStockOrderListaccountnumber();
		for (int i = 0; i < accountnumber.size(); i++) {
			System.out.println("accountnumber : " + accountnumber.get(i).getAccount_number());
			for (int j = 0; j < orderlistaccountnumber.size(); j++) {
				System.out.println("orderlist accountnumber : " + orderlistaccountnumber.get(j).getAccount_number());
				if (accountnumber.get(i).getAccount_number() == orderlistaccountnumber.get(j).getAccount_number()) {
					System.out.println(accountnumber.get(i).getAccount_number() + "=" + orderlistaccountnumber.get(j).getAccount_number());
					System.out.println("같다");
					map.put("account_number", accountnumber.get(i).getAccount_number());
					String email = orderService.getemail(map);
					System.out.println("email : " + email);
					List<OrderDTO> stockorderlist = orderService.getOrderListByNumber(map);
					System.out.println("list : " + stockorderlist);
					orderService.sendEmail(email, stockorderlist);
					
				}
				else {
					System.out.println("다르다");
				}
				
			}
			
		}
		//임시 발주 목록을 그대로 복사해서 상세내역 테이블에 복사 insert함
		productOrderListSercvice.orderlistinsert(dto1);
//		System.out.println("발주 상세내역 등록 완료");
		//임시 발주 목록을 삭제해서 초기화
		orderService.deleteorderlistcart();
//		System.out.println("임시 발주 목록 초기화 완료");
		return "redirect:stockorder.cafe";
	}
	
	
	@RequestMapping("/orderlist.cafe")
	public String orderlist(HttpServletRequest req) {
		erpController.menuMethod(req);
//		System.out.println("orderlist 진입");
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
//		System.out.println("start : " + start + "end : " + end);
//		System.out.println("write count : " + total);

		int allPage = (int) Math.ceil(total / (double) rowSize); // 페이지수
		int totalPage = total / rowSize + (total % rowSize == 0 ? 0 : 1);
//		System.out.println("page count : " + allPage);

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
		
		return "store/order/orderlist";
	}
	
	@RequestMapping("/detaillist.cafe")
	public String detaillist(HttpServletRequest req, int productOrder_code) {
		erpController.menuMethod(req);
//		System.out.println("detaillist 진입");
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
//		System.out.println("start : " + start + "end : " + end);
//		System.out.println("write count : " + total);

		int allPage = (int) Math.ceil(total / (double) rowSize); // 페이지수
		int totalPage = total / rowSize + (total % rowSize == 0 ? 0 : 1);
//		System.out.println("page count : " + allPage);

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
		
		return "store/order/orderdetail";
	}
	
}
