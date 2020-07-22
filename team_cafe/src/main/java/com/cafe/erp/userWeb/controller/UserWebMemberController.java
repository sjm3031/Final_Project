package com.cafe.erp.userWeb.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cafe.erp.cs.model.CustomerDTO;
import com.cafe.erp.sale.model.ProductAddDTO;
import com.cafe.erp.sale.model.ProductVO;
import com.cafe.erp.userWeb.model.ProductCartAddJoinDTO;
import com.cafe.erp.userWeb.service.MemberService;

@Controller
@RequestMapping("userWeb/")
public class UserWebMemberController {

	//회원가입
	@Autowired
	private MemberService memberService;
	

	
	//회원가입 화면
	@RequestMapping("memberwriteform.cafe")
		public String customerinsertform() {
			return "userWeb/member/writeform";
			
		}
	
	//회원정보조회
	@ResponseBody
	@RequestMapping("customerInfo.cafe")
	public CustomerDTO customerInfo(@RequestParam(value = "customerPhone") String customerPhone) {
		System.out.println(customerPhone);
		CustomerDTO cdto = memberService.getCustomerInfoByPhone(customerPhone);
		System.out.println(cdto.getCustomer_stamp());
		return cdto;			
	}

	//회원가입 처리
	@RequestMapping("write.cafe")
		public String write(CustomerDTO dto) {
		System.out.println("여기1");
		CustomerDTO cdto = memberService.getCustomerInfoByPhone(dto.getCustomer_phone());
		System.out.println("여기2");
		if (cdto == null) {		//테이블에 데이터가 없기때문에 새로 insert...
			System.out.println("여기3");
			memberService.insertCustomer(dto);
			System.out.println("여기4");
		}else {			//테이블에 데이터가 있기때문에 update..
			System.out.println("여기5");
			memberService.updateCustomer(dto);
			System.out.println("여기6");
		}
		return "userWeb/login";
	}

	@RequestMapping("mypage.cafe")				//장바구니 list 불러오기
	public String mypage(HttpServletRequest request) {
		
		int customer_code = Integer.parseInt(request.getParameter("customer_code"));
		CustomerDTO dto = memberService.getCustomerInfoByCode(customer_code);
		request.setAttribute("dto", dto);
		
		
		return "userWeb/member/mypage";
	}
}
