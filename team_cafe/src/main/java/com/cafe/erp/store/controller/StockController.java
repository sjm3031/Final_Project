package com.cafe.erp.store.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.cafe.erp.store.model.StockDTO;
import com.cafe.erp.store.service.FileUploadService;
import com.cafe.erp.store.service.StockService;

@Controller
public class StockController {

	@Resource
	private StockService stockService;

	@Resource
	private FileUploadService fileUploadService;
	
	private StockDTO dto;

	@RequestMapping(value = "/insertstock.do", method = RequestMethod.GET)
	public String insertstockform(StockDTO dto) {
		return "stockinsert";
	}

	@RequestMapping(value = "/insertstock.do", method = RequestMethod.POST)
	public String insertstock(StockDTO dto, @RequestParam("stock_upimage") MultipartFile stock_upimage ) {
		String stock_image = stock_upimage.getOriginalFilename();
		System.out.println(stock_image);
		dto.setStock_image(stock_image);
		System.out.println("insert controller 진입");
		stockService.insertStock(dto);
		fileUploadService.restore(stock_upimage);
		System.out.println("insert 완료");
		return "redirect:stocklist.do";
	}
	

	@RequestMapping("/stocklist.do")
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

		int total = stockService.getStockCount(); // 총 게시글수
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

		List<StockDTO> list = stockService.getStockList(map);
		req.setAttribute("list", list);
		req.setAttribute("pg", pg);
		req.setAttribute("allPage", allPage);
		req.setAttribute("block", block);
		req.setAttribute("fromPage", fromPage);
		req.setAttribute("toPage", toPage);

		return "stocklist";
	}

	@RequestMapping("/deletestock.do")
	public String detailstock(StockDTO dto, int pg) {
		System.out.println("delete controller 진입");
		System.out.println("code : " + dto.getStock_code());
		int result = stockService.deleteStock(dto);
		String res = "redirect:stocklist.do?pg=" + pg;
		if (result == 0) {
			res = "fail";
		}
		System.out.println("delete 완료");
		return res;
	}

	@RequestMapping("/updatestockform.do")
	public String updatestockform(int stock_code, int pg, Model model) {

		StockDTO dto = stockService.getStock(stock_code);
		System.out.println("code : " + stock_code);
		System.out.println("dto : " + dto);
		model.addAttribute("b", dto);
		model.addAttribute("pg", pg);
		return "stockupdate";
	}

	@RequestMapping("/updatestock.do")
	public String updatestock(StockDTO dto, int pg) {

		System.out.println("controller updatestock 진입");
		System.out.println("code : " + dto.getStock_code() + "name : " + dto.getStock_detailname());
		stockService.updateStock(dto);
		String res = "redirect:stocklist.do?pg=" + pg;

		System.out.println("update 성공");
		return res;
	}

}
