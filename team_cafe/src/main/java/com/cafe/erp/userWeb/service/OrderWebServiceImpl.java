package com.cafe.erp.userWeb.service;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.cafe.erp.sale.model.ProductDAO;
import com.cafe.erp.sale.model.ProductVO;
import com.cafe.erp.userWeb.model.OrderWebDAO;
import com.cafe.erp.userWeb.model.OrderWebDTO;
import com.cafe.erp.userWeb.model.OrderWebListAddDTO;
import com.cafe.erp.userWeb.model.OrderWebListAddJoinDTO;
import com.cafe.erp.userWeb.model.ProductCartAddDTO;
import com.cafe.erp.userWeb.model.ProductCartAddJoinDTO;
import com.cafe.erp.userWeb.model.ProductCartDAO;
import com.cafe.erp.userWeb.model.ProductCartDTO;

@Component
public class OrderWebServiceImpl implements OrderWebService {

	
	@Autowired
	private SqlSession sqlSession;			//SqlSessionTemplete	

	@Override
	public int getOrderWebCount(int customer_code) {
		// TODO Auto-generated method stub
		OrderWebDAO orderWebDAO = sqlSession.getMapper(OrderWebDAO.class);
		return orderWebDAO.getOrderWebCount(customer_code);
	}

	@Override
	public int getOrderWebTotal(int customer_code) {
		// TODO Auto-generated method stub
		OrderWebDAO orderWebDAO = sqlSession.getMapper(OrderWebDAO.class);
		return orderWebDAO.getOrderWebTotal(customer_code);
	}

	@Override
	public void insertOrderWeb(OrderWebDTO dto) {
		// TODO Auto-generated method stub
		OrderWebDAO orderWebDAO = sqlSession.getMapper(OrderWebDAO.class);
		orderWebDAO.insertOrderWeb(dto);
	}

	@Override
	public void insertOrderWebList(HashMap map) {
		// TODO Auto-generated method stub
		OrderWebDAO orderWebDAO = sqlSession.getMapper(OrderWebDAO.class);
		orderWebDAO.insertOrderWebList(map);
	}

	@Override
	public int getOrderWebRecent() {
		// TODO Auto-generated method stub
		OrderWebDAO orderWebDAO = sqlSession.getMapper(OrderWebDAO.class);
		return orderWebDAO.getOrderWebRecent();
	}

	@Override
	public List<ProductCartAddDTO> getProductCartAddList() {
		// TODO Auto-generated method stub
		OrderWebDAO orderWebDAO = sqlSession.getMapper(OrderWebDAO.class);
		return orderWebDAO.getProductCartAddList();
	}

	@Override
	public void insertOrderWebListAdd(ProductCartAddDTO dto) {
		// TODO Auto-generated method stub
		OrderWebDAO orderWebDAO = sqlSession.getMapper(OrderWebDAO.class);
		orderWebDAO.insertOrderWebListAdd(dto);
	}

	@Override
	public List<OrderWebDTO> getOrderWebList(int customer_code){		
		// TODO Auto-generated method stub
		OrderWebDAO orderWebDAO = sqlSession.getMapper(OrderWebDAO.class);
		return orderWebDAO.getOrderWebList(customer_code);
	}

	@Override
	public List<OrderWebListAddJoinDTO> getOrderWebListAddJoinList(int order_web_code) {
		// TODO Auto-generated method stub
		OrderWebDAO orderWebDAO = sqlSession.getMapper(OrderWebDAO.class);
		return orderWebDAO.getOrderWebListAddJoinList(order_web_code);
	}

	@Override
	public int getOrderWebCheck() {
		// TODO Auto-generated method stub
		OrderWebDAO orderWebDAO = sqlSession.getMapper(OrderWebDAO.class);
		return orderWebDAO.getOrderWebCheck();
	}

	@Override
	public List<OrderWebDTO> getOrderWebListAll(String date) {
		// TODO Auto-generated method stub
		OrderWebDAO orderWebDAO = sqlSession.getMapper(OrderWebDAO.class);
		return orderWebDAO.getOrderWebListAll(date);
	}

	@Override
	public void updateOrderWebCheck(int order_web_code) {
		// TODO Auto-generated method stub
		OrderWebDAO orderWebDAO = sqlSession.getMapper(OrderWebDAO.class);
		orderWebDAO.updateOrderWebCheck(order_web_code);
	}
	
	
}
