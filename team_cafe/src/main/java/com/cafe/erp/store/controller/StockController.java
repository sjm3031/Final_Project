package com.cafe.erp.store.controller;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.cafe.erp.store.model.AccountDTO;
import com.cafe.erp.store.model.StockDTO;
import com.cafe.erp.store.service.StockService;

@Controller
@RequestMapping("store")
public class StockController {

	@Resource
	private StockService stockService;

	
	private StockDTO dto;

	@RequestMapping(value = "/stockinsert.cafe", method = RequestMethod.GET)
	public String insertstockform(StockDTO dto, HttpServletRequest req) {
		HashMap map = new HashMap();
		List<AccountDTO> account_list = stockService.getAccountList(map);
		req.setAttribute("account_list", account_list);
		
		return "store/stock/stockinsert";
	}

	@RequestMapping(value = "/stockinsert.cafe", method = RequestMethod.POST)
	public String insertstock(StockDTO dto, @RequestParam("stock_upimage") MultipartFile stock_upimage, HttpServletRequest request ) throws Exception {
//		String stock_image = stock_upimage.getOriginalFilename();
		System.out.println(dto.getAccount_number());
//		System.out.println(stock_image);
//		dto.setStock_image(stock_image);
		
		// 단일파일  업로드시 사용했던 코드 
		if(!stock_upimage.isEmpty()){
			dto.setStock_image(stock_upimage.getOriginalFilename());
			String path = request.getServletContext().getRealPath("/store/upload");
			System.out.println(path);
			String fpath = path + "\\" + dto.getStock_image();
			System.out.println(fpath);
			//System.out.println(request.getParameter("title"));
			//System.out.println("notice : " + n.getTitle() + " / " + n.getContent());
			//System.out.println("FileInfo : " + fpath);
		
			//파일쓰기 작업
			FileOutputStream fs = new FileOutputStream(fpath);
			fs.write(stock_upimage.getBytes());
			fs.close();
		
			//n.setFileSrc(fname); //파일이름 
		}
		
		System.out.println("insert controller 진입");
		stockService.insertStock(dto);
		System.out.println("insert 완료");
		return "redirect:stocklist.cafe";
	}
	

	@RequestMapping("/stocklist.cafe")
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

		return "store/stock/stocklist";
	}

	@RequestMapping("/stockdelete.cafe")
	public String detelestock(StockDTO dto, int pg) {
		System.out.println("delete controller 진입");
		System.out.println("code : " + dto.getStock_code());
		int result = stockService.deleteStock(dto);
		String res = "redirect:stocklist.cafe?pg=" + pg;
		if (result == 0) {
			res = "fail";
		}
		System.out.println("delete 완료");
		return res;
	}

	@RequestMapping("/stockupdateform.cafe")
	public String updatestockform(int stock_code, int pg, Model model) {
		HashMap map = new HashMap();
		List<AccountDTO> account_list = stockService.getAccountList(map);
		StockDTO dto = stockService.getStock(stock_code);
		System.out.println("code : " + stock_code);
		System.out.println("dto : " + dto);
		model.addAttribute("account_list", account_list);
		model.addAttribute("b", dto);
		model.addAttribute("pg", pg);
		return "store/stock/stockupdate";
	}

	@RequestMapping("/stockupdate.cafe")
	public String updatestock(StockDTO dto, int pg) {

		System.out.println("controller updatestock 진입");
		System.out.println("code : " + dto.getStock_code() + "name : " + dto.getStock_detailname());
		stockService.updateStock(dto);
		String res = "redirect:stocklist.cafe?pg=" + pg;

		System.out.println("update 성공");
		return res;
	}
	
	@RequestMapping("/menu")
	public String menu() {
		
		return "menu";
	}
	
//	@RequestMapping("/stockorder")
//	public String order(HttpServletRequest req) {
//		ModelAndView mav = new ModelAndView();
//
//		int pg = 1;
//		String strPg = req.getParameter("pg");
//
//		if (strPg != null) {
//			pg = Integer.parseInt(strPg);
//		}
//
//		int rowSize = 10;
//		int start = (pg * rowSize) - (rowSize - 1);
//		int end = pg * rowSize;
//
//		int total = stockService.getStockCount(); // 총 게시글수
//		System.out.println("start : " + start + "end : " + end);
//		System.out.println("write count : " + total);
//
//		int allPage = (int) Math.ceil(total / (double) rowSize); // 페이지수
//		int totalPage = total / rowSize + (total % rowSize == 0 ? 0 : 1);
//		System.out.println("page count : " + allPage);
//
//		int block = 10; // 한페이지에 보여줄 범위 [1][2][3]~~[10]
//		int fromPage = ((pg - 1) / block * block) + 1; // 보여줄 페이지의 시작
//		int toPage = ((pg - 1) / block * block) + block; // 보여줄 페이지의 끝
//
//		if (toPage > allPage) { // ex)20>17
//			toPage = allPage;
//		}
//
//		HashMap map = new HashMap();
//		map.put("start", start);
//		map.put("end", end);
//
//		List<StockDTO> list = stockService.getStockList(map);
//		req.setAttribute("list", list);
//		req.setAttribute("pg", pg);
//		req.setAttribute("allPage", allPage);
//		req.setAttribute("block", block);
//		req.setAttribute("fromPage", fromPage);
//		req.setAttribute("toPage", toPage);
//		
//		return "stockorder";
//	}
}
