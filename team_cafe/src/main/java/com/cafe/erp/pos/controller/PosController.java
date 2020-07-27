package com.cafe.erp.pos.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cafe.erp.pos.model.PosOrderVO;
import com.cafe.erp.pos.service.PosOrderService;
import com.cafe.erp.pos.service.PosOrderlistAddService;
import com.cafe.erp.pos.service.PosOrderlistService;
import com.cafe.erp.sale.model.ProductAddDTO;
import com.cafe.erp.sale.model.ProductVO;
import com.cafe.erp.sale.service.ProductAddService;
import com.cafe.erp.sale.service.ProductCategoryService;
import com.cafe.erp.sale.service.ProductService;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@Controller
@RequestMapping("pos/")
public class PosController {
	
	@Resource
	private PosOrderlistAddService posOrderlistAddService;
	
	@Resource
	private PosOrderlistService posOrderlistService;
	
	@Resource
	private PosOrderService posOrderService;
	
	@Resource
	private ProductService productService;
	
	@Resource
	private ProductCategoryService productCategoryService;
	
	@Resource
	private ProductAddService productAddService;
	
	
	@RequestMapping("main.cafe")
	public String posMain(Model model) {
		return "pos/home";
	}

	
	@ResponseBody
	@RequestMapping(value = "orderData.cafe", method = RequestMethod.POST)
	public String posProductOrder(@RequestBody String jsonString) {
		String msg = null;
		int check;
		HashMap orderMap = new HashMap();
		HashMap anonymous = new HashMap();
		HashMap stamp = new HashMap();

		JsonParser Parser = new JsonParser();
		JsonObject jsonObj = (JsonObject) Parser.parse(jsonString);
		int listcount = Integer.parseInt(jsonObj.get("count").toString().replaceAll("\"", ""));

		String phone = jsonObj.get("customer").toString().replaceAll("\"", "");
		if (phone.equals("")) {
			check = 2;
		} else {
			check = posOrderService.phoneCheck(phone);
		}

		System.out.println(check + "찍힘");
		if (check == 0) { // 폰 번호가 없다면
			anonymous.put("customer_phone", phone);
			anonymous.put("customer_stamp", listcount);
			posOrderService.insertAnonymous(anonymous);

		} else if (check == 1) { // 폰 번호가 있으면
			stamp.put("order_count", listcount);
			stamp.put("customer_phone", phone);
			posOrderService.updateStamp(stamp);
		} else { // 비회원일 경우
			phone = null;
		}

		String totalprice = jsonObj.get("total").toString().replaceAll("\"", "");
		orderMap.put("order_total", totalprice);
		orderMap.put("order_count", jsonObj.get("count").toString().replaceAll("\"", ""));
		orderMap.put("customer_phone", phone);
		orderMap.put("order_accountType", jsonObj.get("payment").toString().replaceAll("\"", ""));
		// orderinsert
		posOrderService.insertOrder(orderMap);

		JsonArray memberArray = (JsonArray) jsonObj.get("order");
		System.out.println();

		for (int i = 0; i < memberArray.size(); i++) {
			JsonObject object = (JsonObject) memberArray.get(i);
			System.out.println("번호 : " + object.get("code").toString().replaceAll("\"", ""));
			System.out.println(object.get("price").toString());
			System.out.println("이름 : " + object.get("name"));
			System.out.println("가격 : " + object.get("price"));
			System.out.println("옵션 : " + object.get("option").getAsJsonArray().size());

			orderMap.put("cafe_product_code", object.get("code").toString().replaceAll("\"", ""));
			posOrderlistService.insertOrderList(orderMap);

			for (int j = 0; j < object.get("option").getAsJsonArray().size(); j++) {
				System.out.println(object.getAsJsonArray("option").get(j).toString().replaceAll("\"", ""));
				orderMap.put("PRODUCT_ADD_CODE",
						object.getAsJsonArray("option").get(j).toString().replaceAll("\"", ""));
				posOrderlistAddService.insertOrderListAdd(orderMap);
			}

			System.out.println("------------------------");
		}

		msg = "success";
		return msg;
	}
	
	
	@ResponseBody
	@RequestMapping("typeSelect.cafe")
	public List<ProductVO> posTypeSelect(@RequestParam(value = "code") String code) {
		System.out.println(code);
		int pcode = Integer.parseInt(code);
		return productService.getProductListByCategory(pcode);
	}
	
	
	@ResponseBody
	@RequestMapping("productSelect.cafe")
	public ProductVO posProductSelect(@RequestParam(value = "id") String id) {
		System.out.println(id);
		int pid = Integer.parseInt(id);
		return productService.getProductByCode(pid);
	}
	
	
	@ResponseBody
	@RequestMapping("optionList.cafe")
	public List<ProductAddDTO> posOptionList(){
		HashMap map = new HashMap();
		return productAddService.getProductAddList(map);
	}
	
	
	@ResponseBody
	@RequestMapping("optionSelect.cafe")
	public ProductAddDTO posOptionSelect(@RequestParam(value = "id") String id) {
		int oid = Integer.parseInt(id);
		return productAddService.getProductAddByCode(oid);
	}
	
	
	@RequestMapping("login.cafe")
	public String posLogin(HttpServletRequest request, HttpServletResponse response) {
		return "pos/login";
	}

	
	 @RequestMapping("admin/main.cafe") public String admin(Authentication auth) {
	  return "admin/index"; }
	 
}
