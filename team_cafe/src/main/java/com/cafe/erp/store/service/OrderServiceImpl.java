package com.cafe.erp.store.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cafe.erp.store.model.OrderDAO;
import com.cafe.erp.store.model.OrderDTO;
import com.cafe.erp.store.model.StockDAO;
import com.cafe.erp.store.model.StockDTO;


@Component
public class OrderServiceImpl implements OrderService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int getStockCount() {
		StockDAO dao = sqlSession.getMapper(StockDAO.class);
		return dao.getStockCount();
	}

	@Override
	public List<StockDTO> getStockList(HashMap map) {
		StockDAO dao = sqlSession.getMapper(StockDAO.class);
		
		return dao.getStockList(map);
	}

	@Override
	public void insertordercart(OrderDTO dto) {
		OrderDAO dao = sqlSession.getMapper(OrderDAO.class);
		dao.insertordercart(dto);
	}

	@Override
	public List<OrderDTO> getStockOrderList(HashMap map) {
		System.out.println("서비스단 getStockOrder 진입");
		OrderDAO dao = sqlSession.getMapper(OrderDAO.class);
		
		return dao.getStockOrderList(map);
	}

	@Override
	public int getStockOrderCount() {
		System.out.println("서비스단 getStockOrderCount 진입");
		OrderDAO dao = sqlSession.getMapper(OrderDAO.class);
		return dao.getStockOrderCount();
	}

	@Override
	public int updateordercart(OrderDTO dto) {
		System.out.println("서비스단 updateordercart 진입");
		System.out.println(dto.getCart_stock_quantity());
		OrderDAO dao = sqlSession.getMapper(OrderDAO.class);
		System.out.println("수정 완료");
//		dto.setCart_stock_quantity(dto.getCart_stock_quantity());
		return dao.updateordercart(dto);
	}

	@Override
	public int deleteordercart(OrderDTO dto) {
		System.out.println("서비스단 deleteordercart 진입");
		OrderDAO dao = sqlSession.getMapper(OrderDAO.class);
		System.out.println(dto.getCart_number());
		return dao.deleteordercart(dto);
	}

	@Override
	public OrderDTO getOrder(int cart_number) {
		System.out.println("서비스단 getOrder 진입");
		OrderDAO dao = sqlSession.getMapper(OrderDAO.class);
		return dao.getOrder(cart_number);
	}


	@Override
	public int getcarttotal() {
		System.out.println("총 금액 구하는 곳 진입");
		OrderDAO dao = sqlSession.getMapper(OrderDAO.class);
		
		return dao.getcarttotal();
	}

	@Override
	public int deleteorderlistcart() {
		System.out.println("담는 테이블 삭제하는곳 진입");
		OrderDAO dao = sqlSession.getMapper(OrderDAO.class);
		
		return dao.deleteorderlistcart();
	}

	@Override
	public int getstockcode(int stock_code) {
		System.out.println("기존에 있는지 확인");
		OrderDAO dao = sqlSession.getMapper(OrderDAO.class);
		return dao.getstockcode(stock_code);
	}

	@Override
	public void updatecount(OrderDTO dto) {
		System.out.println("수량 변경");
		OrderDAO dao = sqlSession.getMapper(OrderDAO.class);
		dao.updatecount(dto);
	}

	@Override
	public void updatecode() {
		System.out.println("productOrder_code 업데이트");
		OrderDAO dao = sqlSession.getMapper(OrderDAO.class);
		dao.updatecode();
	}

}
