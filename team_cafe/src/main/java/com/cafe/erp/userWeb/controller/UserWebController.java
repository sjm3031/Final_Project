package com.cafe.erp.userWeb.controller;

import java.io.IOException;

import java.util.HashMap;

import java.util.List;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cafe.erp.cs.model.CustomerDTO;
import com.cafe.erp.cs.service.LoginService;
import com.cafe.erp.sale.model.ProductAddDTO;
import com.cafe.erp.sale.model.ProductCategoryVO;
import com.cafe.erp.sale.model.ProductVO;
import com.cafe.erp.sale.service.ProductAddService;
import com.cafe.erp.sale.service.ProductCategoryService;
import com.cafe.erp.sale.service.ProductService;
import com.cafe.erp.userWeb.model.OrderWebDTO;
import com.cafe.erp.userWeb.model.OrderWebListAddJoinDTO;
import com.cafe.erp.userWeb.model.ProductCartAddDTO;
import com.cafe.erp.userWeb.model.ProductCartAddJoinDTO;
import com.cafe.erp.userWeb.model.ProductCartDTO;
import com.cafe.erp.userWeb.model.ProductCartDTOMulti;
import com.cafe.erp.userWeb.service.MemberService;
import com.cafe.erp.userWeb.service.OrderWebService;
import com.cafe.erp.userWeb.service.ProductCartService;


@Controller
@RequestMapping("userWeb/")
public class UserWebController {

	@Resource
	private ProductCategoryService productCategoryService;
	
	@Resource
	private ProductService productService;
	
	@Resource
	private ProductCartService productCartService;
	
	@Resource
	private ProductAddService productAddService;
	
	//로그인화면
	@Autowired
	private LoginService loginService;
	
	//주문하기
	@Autowired
	private OrderWebService orderWebService;
		
		
		/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		//														로그인 관련
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


		
		@RequestMapping("login.cafe")
		public String login() {
			return "userWeb/login";
			
		}
		
		@RequestMapping("main.cafe")
		public String main() {
			return "userWeb/main";
			
		}
		
		//로그인 처리
		@RequestMapping("loginCheck.cafe")
		public ModelAndView loginCheck(@ModelAttribute CustomerDTO dto, HttpSession session) {

			
			CustomerDTO result = loginService.loginCheck(dto);
			ModelAndView mav = new ModelAndView();

			
			if(result != null) {
				
				session.setAttribute("USERCODE", result.getCustomer_code()); 
				/* session.setAttribute("USERNAME", result.getCustomer_name()); */
				
				mav.setViewName("userWeb/loginSuccess");
			
				
			}else {
				mav.setViewName("userWeb/login");
			
				
			}

			
			return mav;
		}
		//로그아웃 처리
		@RequestMapping("logout.cafe")
		public ModelAndView logout(HttpSession session) {
			loginService.logout(session);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("redirect:/userWeb/home.cafe");
			
			return mav;
			
		}
		
		
		
		/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		//														제품리스트 보고 장바구니 담기
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
		
	@RequestMapping("home.cafe")		//main/home 화면
	public String home() {
		return "userWeb/home";
	}
	
	
	@RequestMapping("productlist.cafe")			// 카테고리별 제품리스트 보여주기
	public String proudctList(HttpServletRequest request) {
		 HashMap map = new HashMap();
		 List<ProductCategoryVO> list = productCategoryService.getProductCategoryList(map);
		 request.setAttribute("categorylist", list);
		
			
		int product_category_code=1;
		String product_category_code2 = request.getParameter("category");
	
		  
		if( product_category_code2 != null ) {
			product_category_code = Integer.parseInt(product_category_code2);
		}
		
		
		
		List<ProductVO> list2 = productService.getProductListByCategory(product_category_code);	
		
		request.setAttribute("list", list2);
		request.setAttribute("listsize", list2.size());
		
		return "userWeb/cart/proudctList";
	}
	
	
	@RequestMapping("productview.cafe")		//리스트에서 제품을 클릭하면 상세보기 화면을 보여주기
	public String productview(HttpServletRequest request){
		HashMap map = new HashMap();
		List<ProductCategoryVO> list = productCategoryService.getProductCategoryList(map);
		request.setAttribute("categorylist", list);
		 
		int productcode = Integer.parseInt(request.getParameter("productcode"));
		ProductVO vo = productCartService.getProductViewByCode(productcode);
		request.setAttribute("vo", vo);
		
		
		HashMap map2 = new HashMap();
		List<ProductAddDTO> list2 = productAddService.getProductAddList(map2);
		request.setAttribute("dlist", list2);
		

		return "userWeb/cart/productView";
	
	}

	
	
	
	@RequestMapping("cart.cafe")        // 장바구니 추가
	public String cart(ProductCartDTO dto,HttpServletRequest request){
	
		String productAdd[] = request.getParameterValues("productAdd");		// form 에서 받아온 옵션추가사항들을 배열로 저장
		

		int customer_code = dto.getCustomer_code();
		if (productAdd == null) {				// checkbox에 선택을 하나도 안했을때... >> 추가사항이없는 음료주문한 상황
			
			ProductCartAddJoinDTO joindto = productCartService.getCartJoinByCustomerProduct(dto);

			if (joindto == null) {			// db에 해당하는 데이터가 없기때문에 새로 insert해야한다.
				productCartService.insertProductCart(dto);	
			}else {				// db에 해당하는 데이터가 있기때문에 수량을 추가해준다.
				dto.setCart_code(joindto.getCart_code());			// 해당 장바구니 코드값을 setting
				productCartService.updateProductCartNum(dto);	// 수량만  update
			}
			
		
			
		}else {					// checkbox에 선택을 했을때.. >> 추가사항이있는 음료주문한 상황
		
			
			
			int formCount = productAdd.length;		// checkbox 선택한 값들의 갯수 저장
			List<ProductCartDTO> codelist=productCartService.getProductCartNumByCustomerProduct(dto);			// 해당 고객과 해당 제품에 일치하는 장바구니 리스트 가져오기
			int dbCount;
			int result = ProductCartIS(codelist,formCount,productAdd);		//db에 추가(옵션)사항까지 동일한 장바구니 내역이 있으면  해당 장바구니 코드값을 없으면 0을 리턴하는 함수를 호출..
																			
			
			if (result !=0) {	// 동일한 내용이 있기때문에 수량만 추가
	
				dto.setCart_code(result);			// 해당 장바구니 코드값을 setting
				productCartService.updateProductCartNum(dto);	// 수량만  update
				
				
				
				
			} else { // 동일한 내용이 없기때문에 db에 insert..			
				productCartService.insertProductCart(dto);							// 장바구니 테이블에 먼저 insert..
				ProductCartDTO adddto = productCartService.getProdctCatrByRecent();		// 방금 저장한 데이터 값을 불러온다.
				ProductCartAddDTO cartdto = new ProductCartAddDTO();					
				for (int i = 0; i < productAdd.length; i++) {
					cartdto.setCart_code(adddto.getCart_code());					// 방금 저장한 장바구니코드값을 setting..
					cartdto.setProduct_add_code(Integer.parseInt(productAdd[i]));		//checkbox에 선택된애들을 저장한 배열에서 값을 하니씩 꺼내서 setting..
					productCartService.insertProductCartAdd(cartdto);				//위의 장바구니 코드값과 옵션코드값을 장바구니내역 테이블에 insert...
					
				}
			}
			
		}
		return "redirect:/userWeb/cartlist.cafe?customer_code="+customer_code;
	
	}
	
	
	public int ProductCartIS(List<ProductCartDTO> codelist,int formCount,String productAdd[] ) {		//db에 추가(옵션)사항까지 동일한 장바구니 내역이 있으면  해당 장바구니 코드값을 없으면 0을 리턴하는 함수를 호출..
		int result = 0;
		for (int i = 0; i < codelist.size(); i++) {
			
			int cartCode = codelist.get(i).getCart_code();
			List<ProductCartAddDTO> addlist = productCartService.getProductAddCodeByCartCode(cartCode);
			int dbCount = addlist.size();
			if (formCount == dbCount) {
				for (int j = 0; j < addlist.size(); j++) {
					if (addlist.get(i).getCart_code() == Integer.parseInt(productAdd[i])  ) {
					}else {
						return 0;
					}
					
					int cartcode =addlist.get(i).getCart_code();
					return cartcode;
				}			
			}else {
				return 0;
			}	
		}
		return result;
	}


	@RequestMapping("cartlist.cafe")				//장바구니 list 불러오기
	public String cartlist(HttpServletRequest request) {
	
		List<ProductVO> productlist = productCartService.getProductList();
		request.setAttribute("productlist", productlist);
		

		HashMap map = new HashMap();
		List<ProductAddDTO> addlist = productAddService.getProductAddList(map);
		request.setAttribute("addlist", addlist);
		
		int customer_code = Integer.parseInt(request.getParameter("customer_code"));
		request.setAttribute("customer_code", customer_code);					//고객로그인 세션으로 고객코드 넣어주기..
		
		List<ProductCartAddJoinDTO> list = productCartService.getCartListByCustomer(customer_code);
		request.setAttribute("list", list);
		
		return "userWeb/cart/cartList";
	}
	

	@RequestMapping("order.cafe")			
	public String order(HttpServletRequest request) {
		
		OrderWebDTO dto = new OrderWebDTO();
		int customer_code = Integer.parseInt(request.getParameter("customer_code"));
		dto.setCustomer_code(customer_code);
		//해당고객의 주문 총 건수(음료잔수)
		dto.setOrder_web_count(orderWebService.getOrderWebCount(customer_code));
		//해당고객의 주문 총 금액
		dto.setOrder_web_total(orderWebService.getOrderWebTotal(customer_code));
		//주문 테이블에 저장
		orderWebService.insertOrderWeb(dto);
		//주문 내역테이블에 저장
		
		//주문테이블 주문코드 가져오기
		int order_web_code = orderWebService.getOrderWebRecent();
		// 장바구니 테이블 불러오기
		HashMap map = new HashMap();
		  map.put("order_web_code", order_web_code);
		 
		List<ProductCartDTO> list = productCartService.getProductCartListByCustomer(customer_code);
		for (int i = 0; i < list.size(); i++) {
			ProductCartDTO cartdto = list.get(i);
			 map.put("cartdto", cartdto);
			//주문 내역테이블에 저장
			 orderWebService.insertOrderWebList(map);
		}
		
		//주문 내역테이블의 옵션내역테이블에 저장
		//장바구니옵션내역 테이블 가져오기
		List<ProductCartAddDTO> addlist = orderWebService.getProductCartAddList();
		for (int i = 0; i < addlist.size(); i++) {
			ProductCartAddDTO adddto = addlist.get(i);
			//주문내역의 옵션내역 테이블에 저장
			orderWebService.insertOrderWebListAdd(adddto);
		}
		
		//장바구니 내역 삭제..
		List<ProductCartAddJoinDTO> delelist = productCartService.getCartListByCustomer(customer_code);
		for (int i = 0; i < delelist.size(); i++) {
			int cart_num = delelist.get(i).getCart_code();
			if( delelist.get(i).getProduct_add_code() !=0) {
				productCartService.deleteProductCartAddAll(cart_num);
			}
		}
		productCartService.deleteProductCartAll(customer_code);
		
		
		return "redirect:/userWeb/orderlist.cafe?customer_code="+customer_code;
	}
	
	
	
	@RequestMapping("orderlist.cafe")				//주문 list 불러오기
	public String orderlist(HttpServletRequest request) {
		int customer_code = Integer.parseInt(request.getParameter("customer_code"));
		//주문테이블에 해당 고객의 list 가져오기.
		List<OrderWebDTO> orderlist = orderWebService.getOrderWebList(customer_code);
		request.setAttribute("orderlist", orderlist);
	
		return "userWeb/order/orderList";
	}
	
	
	@RequestMapping("orderlistview.cafe")				//주문 list 불러오기
	public String orderlistview(HttpServletRequest request) {
		int order_web_code = Integer.parseInt(request.getParameter("orderWebCode"));
		
		
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
		
		
		
		
		return "userWeb/order/orderListView";
	}
	
	
	@RequestMapping("update.cafe")
	public String updateListCount(HttpServletRequest request, ProductCartDTO dto) {
		int customer_code = Integer.parseInt(request.getParameter("customer_code"));	
		int cartNum = Integer.parseInt(request.getParameter("cart_num"));
	System.out.println(cartNum);
	
	System.out.println(dto.getCart_code());
	System.out.println(dto.getCart_num());
//		dto.setCart_code(Integer.parseInt(request.getParameter("cartCode")));
	//	dto.setCart_num(Integer.parseInt(request.getParameter("cartNum")));
		HashMap Map = new HashMap();
		Map.put("cart_num", dto.getCart_num());
		Map.put("cart_code", dto.getCart_code());
		System.out.println("================================");
		
		productCartService.updateListCount(Map);
	/*	
		 int result = Integer.parseInt(productCartService.updateListCount(dto)); 
		 System.out.println(result);*/

		 return "redirect:/userWeb/cartlist.cafe?customer_code="+customer_code; 
		
		
		
		
		/*
		 System.out.println("update ==>"+dto);
		int result = customerService.updateBoard(dto); 
		System.out.println("update result=>"+result);
		String res = "redirect:/list.htm?pg="+pg;
		
		if(result == 0) {
			res = "fail"; 

		}
		return res;
		 
		 
		 
		 
		 
		  */
	
		
	}
	
	
	
	@RequestMapping("delete.cafe")
	public String deleteListProduct(HttpServletRequest request ) {
		int customer_code = Integer.parseInt(request.getParameter("customer_code"));
		System.out.println("customer_code"+"code");
		int cart_code =Integer.parseInt(request.getParameter("cart_code"));
		System.out.println("customer_code"+"code2");
		
		
		//실행만
		productCartService.deleteListCartAdd(cart_code);
		productCartService.deleteListProduct(cart_code);
		
	
			/*
			 * productCartSersvice.deleteListCartAdd(cart_code);
			 * productCartService.deleteListProduct(cart_code);
			 * 
			 */ 
		
		System.out.println("customer_code"+"--");
		
		  return "redirect:/userWeb/cartlist.cafe?customer_code="+customer_code;
		 
		
	
			
		  
			
		
	
		
	}
	
}
