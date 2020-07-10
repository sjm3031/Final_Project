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

}
