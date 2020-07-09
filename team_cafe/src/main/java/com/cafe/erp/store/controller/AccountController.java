package com.cafe.erp.store.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cafe.erp.store.model.AccountDTO;
import com.cafe.erp.store.model.StockDTO;
import com.cafe.erp.store.service.AccountService;

@Controller
public class AccountController {
	
	@Resource
	private AccountService accountService;
	
	private AccountDTO dto;
	
	@RequestMapping("/accountinsertform")
	public String insertaccountform() {
		
		return "accountinsert";
	}
	
	@RequestMapping("/accountinsert")
	public String insertaccount(AccountDTO dto) {
		System.out.println("insert controller 진입");
		accountService.insertAccount(dto);
		System.out.println("insert 완료");
		
		return "redirect:accountlist";
	}
	
	@RequestMapping("/accountlist")
	public String showlist(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();

		int pg = 1;
		String strPg = req.getParameter("pg");

		if (strPg != null) {
			pg = Integer.parseInt(strPg);
		}

		int rowSize = 10;
		int start = (pg * rowSize) - (rowSize - 1);
		int end = pg * rowSize;

		int total = accountService.getAccountCount(); // 총 게시글수
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

		List<AccountDTO> account_list = accountService.getAccountList(map);
		req.setAttribute("account_list", account_list);
		req.setAttribute("pg", pg);
		req.setAttribute("allPage", allPage);
		req.setAttribute("block", block);
		req.setAttribute("fromPage", fromPage);
		req.setAttribute("toPage", toPage);
		System.out.println(account_list);
		return "accountlist";
	}
	
	@RequestMapping("/accountdelete")
	public String deleteaccount(AccountDTO dto, int pg) {
		System.out.println("delete controller 진입");
		int result = accountService.deleteAccount(dto);
		String res = "redirect:accountlist?pg=" + pg;
		if(result == 0) {
			res = "fail";
		}
		
		return res;
	}
	
	@RequestMapping("/accountupdateform")
	public String updateaccountform(int account_number, int pg, Model model) {
		System.out.println(account_number);
		AccountDTO dto = accountService.getAccount(account_number);
		System.out.println("number : " + account_number);
		System.out.println("dto : " + dto);
		model.addAttribute("c", dto);
		model.addAttribute("pg", pg);
		return "accountupdate";
	}
	
	@RequestMapping("/accountupdate")
	public String updateaccount(AccountDTO dto, int pg) {
		System.out.println("update controller 진입");
		accountService.updateAccount(dto);
		System.out.println("update 완료");
		
		return "redirect:accountlist?pg=" + pg;
	}
	
}
