package com.cafe.erp.sale.controller;

import java.io.FileOutputStream;
import java.io.IOException;

import java.util.HashMap;

import java.util.List;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cafe.erp.sale.model.ProductCategoryVO;
import com.cafe.erp.sale.model.ProductVO;
import com.cafe.erp.sale.service.ProductService;

import com.cafe.erp.sale.service.*;

@Controller
@RequestMapping("sale/")
public class ProductController {

	@Resource
	private ProductService productService;
	
	@Resource
	private ProductCategoryService productCategoryService;
	
	@RequestMapping("product/writeform.cafe")
	public String writeForm(Model model) {
		 HashMap map = new HashMap();
		 List<ProductCategoryVO> list = productCategoryService.getProductCategoryList(map);
	//	 model.setAttribute("list", list);
		 model.addAttribute("categorylist", list);
	//	 System.out.println();
	//	 System.out.println(list);
		 
		return "sale/product/writeform";
	}
	
	
	@RequestMapping("product/write.cafe")
	public String write(ProductVO vo,@RequestParam("cafe_product_img_upload") MultipartFile file ,HttpServletRequest request) throws IOException {
		/*
		System.out.println("여기1");
		
		String url = productService.restore(file);
		
		System.out.println("여기2" + url);
		vo.setCafe_product_img(file.getOriginalFilename());
		
		System.out.println("여기3" + vo.getCafe_product_img());


		model.addAttribute("url", url);
		*/
		
		//public String noticeReg(Notice n , HttpServletRequest request ,Principal principal ) throws IOException, ClassNotFoundException, SQLException{
		//	System.out.println("실제 글 등록 처리");
	
		
		// 단일파일  업로드시 사용했던 코드 
		if(!file.isEmpty()){
			vo.setCafe_product_img(file.getOriginalFilename());
			String path = request.getServletContext().getRealPath("/sale/upload");
			String fpath = path + "\\" + vo.getCafe_product_img();
		
			//System.out.println(request.getParameter("title"));
			//System.out.println("notice : " + n.getTitle() + " / " + n.getContent());
			//System.out.println("FileInfo : " + fpath);
		
			//파일쓰기 작업
			FileOutputStream fs = new FileOutputStream(fpath);
			fs.write(file.getBytes());
			fs.close();
		
			//n.setFileSrc(fname); //파일이름 
		}

		
		productService.insertProduct(vo);
		return "redirect:/sale/product/list.cafe";
		
		
	}
	
	@RequestMapping("product/list.cafe")
	public String list(HttpServletRequest request){
		int pg = 1; 	// 처음엔 무조건 1페이지
		
		String strPg = request.getParameter("pg");
		  
		if( strPg != null ) {
			pg = Integer.parseInt(strPg);
		}
	
		
		int rowSize = 3;			// 한페이지에 보여줄 record 수
		int start = (pg*rowSize) - (rowSize-1);			//sql문에서 실행될 변수.. xml 에서 변수명이 같아야한다.
		int end = pg*rowSize;							//sql문에서 실행될 변수.. xml 에서 변수명이 같아야한다.
		
		int total = productService.getProductCount();		// 총 record 수 가져오는 함수.. sql문
		
		int allPage = (int)Math.ceil(total / (double)rowSize);			//총 페이지수..
		//int allPage = total/rowSize + (total % rowSize == 0?0:1)
		
		int block = 3;		// 한페이지에 보여줄 페이징 갯수	ex) << [1] [2] [3] [4] [5] ..>>
		
		int fromPage = ((pg-1) / block*block) + 1;
		int toPage = ( (pg-1) / block*block) + block; 
		
		if (toPage > allPage) {
			toPage = allPage;
		}
		 HashMap map = new HashMap();
		  map.put("start", start);
		  map.put("end", end);
		  
		  List<ProductVO> list = productService.getProductList(map);
		  request.setAttribute("list", list);
		  request.setAttribute("pg", pg);
		  request.setAttribute("allPage", allPage);
		  request.setAttribute("block", block);
		  request.setAttribute("fromPage", fromPage);
		  request.setAttribute("toPage", toPage);
		

		return "sale/product/list";
	
	}
	
	
	@RequestMapping("product/updateform.cafe")
	public String updateform(HttpServletRequest request) {
		int num = Integer.parseInt(request.getParameter("num"));
		ProductVO vo = productService.getProductByCode(num);
		
		 HashMap map = new HashMap();
		 List<ProductCategoryVO> categorylist = productCategoryService.getProductCategoryList(map);
		 request.setAttribute("categorylist", categorylist);
		// model.addAttribute("categorylist", list);
		 System.out.println();
		 System.out.println(categorylist);

		request.setAttribute("b", vo);
		return "sale/product/updateform";
	}	
	
	@RequestMapping("product/update.cafe")
	public String update(ProductVO vo) {
		int result = productService.updateProduct(vo);		// 0: 실패 1:성공
		return "redirect:/sale/product/list.cafe";	
	}
		
	
	@RequestMapping("product/delete.cafe")														/////////////////수정하자..
	public String delete(ProductVO vo,HttpServletRequest request) {
		int num = Integer.parseInt(request.getParameter("num"));
		vo.setCafe_product_code(num);
		productService.deleteProduct(vo);
		return "redirect:/sale/product/list.cafe";	
	}
	

}
