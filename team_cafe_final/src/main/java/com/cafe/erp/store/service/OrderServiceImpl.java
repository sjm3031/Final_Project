package com.cafe.erp.store.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

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
		OrderDTO dto = new OrderDTO();
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

	@Override
	public List<OrderDTO> getStockOrderListaccountnumber() {
		OrderDAO dao = sqlSession.getMapper(OrderDAO.class);
		return dao.getStockOrderListaccountnumber();
	}

	@Override
	public String getemail(HashMap map) {
		OrderDAO dao = sqlSession.getMapper(OrderDAO.class);
		return dao.getemail(map);
	}

	@Override
	public List<OrderDTO> getOrderListByNumber(HashMap map) {
		OrderDAO dao = sqlSession.getMapper(OrderDAO.class);
		return dao.getOrderListByNumber(map);
	}

	@Override
	public void sendEmail(String email, List<OrderDTO> stockorderlist) throws Exception{
		System.out.println("sendEmail 진입");
		//메일 관련 정보 
        String host = "smtp.naver.com"; 
        final String username = "kosta4"; //네이버 이메일 주소중 @ naver.com 앞주소만 작성
        final String password = "Teammail#@!"; //네이버 이메일 비밀번호를 작성
        int port=465;                      //네이버 STMP 포트 번호
        
      //메일 내용 
//        String recipient = "*******@naver.com"; //메일을 발송할 이메일 주소를 기재해 줍니다.
        String subject = "납품요청서(kosta_cafe)";    //메일 발송시 제목을 작성
        List<OrderDTO> body = stockorderlist; //메일 발송시 내용 작성
        StringBuffer sb = new StringBuffer();
        sb.append("품명\t상세명\t금액\t수량\n");
        sb.append("===========================================\n");
        for (OrderDTO dto : body) {
        	sb.append(dto.toString() + "\n");
        	System.out.println("sb 출력");
        	System.out.println(sb + "\n");
		}
        sb.append("\n=========================================\n");
        sb.append("\n\n납품을 요청 바랍니다. \n감사합니다.");
        
        Properties props = System.getProperties();
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.port", port);
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.ssl.enable", "true");
        props.put("mail.smtp.ssl.trust", host);
        
        Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() { 
            String un=username;
            String pw=password; 
            protected PasswordAuthentication getPasswordAuthentication() { 
                return new PasswordAuthentication(un, pw); 
            } 
        });
        session.setDebug(true); //for debug 
        
        Message mimeMessage = new MimeMessage(session); 
        mimeMessage.setFrom(new InternetAddress("kosta4@naver.com")); //발신자 셋팅 보내는 사람의 이메일주소를 한번 더 입력 이때는 이메일 풀 주소를 다 작성 
        mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(email)); //수신자셋팅  
        mimeMessage.setSubject(subject); //제목셋팅  
        mimeMessage.setText(sb.toString()); //내용셋팅
        Transport.send(mimeMessage); //javax.mail.Transport.send() 이용 
		
	}

	@Override
	public int cafeordercartcount() {
		OrderDAO dao = sqlSession.getMapper(OrderDAO.class);
		return dao.cafeordercartcount();
	}


}
