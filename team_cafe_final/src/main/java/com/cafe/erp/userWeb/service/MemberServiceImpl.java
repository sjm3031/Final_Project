package com.cafe.erp.userWeb.service;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.cafe.erp.cs.model.CustomerDTO;
import com.cafe.erp.sale.model.ProductDAO;
import com.cafe.erp.sale.model.ProductVO;
import com.cafe.erp.userWeb.model.MemberDAO;
import com.cafe.erp.userWeb.model.OrderWebDAO;
import com.cafe.erp.userWeb.model.OrderWebDTO;
import com.cafe.erp.userWeb.model.OrderWebListAddDTO;
import com.cafe.erp.userWeb.model.OrderWebListAddJoinDTO;
import com.cafe.erp.userWeb.model.ProductCartAddDTO;
import com.cafe.erp.userWeb.model.ProductCartAddJoinDTO;
import com.cafe.erp.userWeb.model.ProductCartDAO;
import com.cafe.erp.userWeb.model.ProductCartDTO;

@Component
public class MemberServiceImpl implements MemberService {

	
	@Autowired
	private SqlSession sqlSession;			//SqlSessionTemplete	

	@Override
	public CustomerDTO getCustomerInfoByPhone(String customerPhone) {
		// TODO Auto-generated method stub
		MemberDAO memberDAO = sqlSession.getMapper(MemberDAO.class);	
		return memberDAO.getCustomerInfoByPhone(customerPhone);
	}

	@Override
	public void insertCustomer(CustomerDTO dto) {
		// TODO Auto-generated method stub
		MemberDAO memberDAO = sqlSession.getMapper(MemberDAO.class);	
		memberDAO.insertCustomer(dto);
	}

	@Override
	public void updateCustomer(CustomerDTO dto) {
		// TODO Auto-generated method stub
		MemberDAO memberDAO = sqlSession.getMapper(MemberDAO.class);	
		memberDAO.updateCustomer(dto);
	}

	@Override
	public CustomerDTO getCustomerInfoByCode(int customercode) {
		// TODO Auto-generated method stub
		MemberDAO memberDAO = sqlSession.getMapper(MemberDAO.class);	
		return memberDAO.getCustomerInfoByCode(customercode);
	}

}
