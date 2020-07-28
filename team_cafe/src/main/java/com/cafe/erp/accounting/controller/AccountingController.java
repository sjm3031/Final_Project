package com.cafe.erp.accounting.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cafe.erp.ERPController;
import com.cafe.erp.accounting.model.AccountsDTO;
import com.cafe.erp.accounting.service.AccountsService;
import com.cafe.erp.sale.model.ProductVO;
import com.cafe.erp.store.model.StockDTO;




@Controller
@RequestMapping("admin/accounting/")
public class AccountingController {
	
	@Resource
	private ERPController erpController;
	
	@Resource
	private AccountsService accountsService;
	

	
	@RequestMapping("list.cafe")
	public String list(HttpServletRequest request) {
		erpController.menuMethod(request);
		
		int pg = 1; 	// 처음엔 무조건 1페이지
		
		String strPg = request.getParameter("pg");
		  
		if( strPg != null ) {
			pg = Integer.parseInt(strPg);
		}
	
		
		int rowSize = 10;			// 한페이지에 보여줄 record 수
		int start = (pg*rowSize) - (rowSize-1);			//sql문에서 실행될 변수.. xml 에서 변수명이 같아야한다.
		int end = pg*rowSize;							//sql문에서 실행될 변수.. xml 에서 변수명이 같아야한다.
		

		int total = accountsService.getAccountsCount();	// 총 record 수 가져오는 함수.. sql문
		int allPage = (int)Math.ceil(total / (double)rowSize);			//총 페이지수..
		//int allPage = total/rowSize + (total % rowSize == 0?0:1)
		

		int block = 10;		// 한페이지에 보여줄 페이징 갯수	ex) << [1] [2] [3] [4] [5] ..>>
		
		int fromPage = ((pg-1) / block*block) + 1;
		int toPage = ( (pg-1) / block*block) + block; 
		
		if (toPage > allPage) {
			toPage = allPage;
		}
		 HashMap map = new HashMap();
		  map.put("start", start);
		  map.put("end", end);
		  

		  List<AccountsDTO> list =accountsService.getAccountsList(map);
		  request.setAttribute("list", list);
		  request.setAttribute("pg", pg);
		  request.setAttribute("allPage", allPage);
		  request.setAttribute("block", block);
		  request.setAttribute("fromPage", fromPage);
		  request.setAttribute("toPage", toPage);
		
		return "accounting/list";
	}


}
