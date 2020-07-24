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
import com.cafe.erp.userWeb.model.ProductCartAddDTO;
import com.cafe.erp.userWeb.model.ProductCartAddJoinDTO;
import com.cafe.erp.userWeb.model.ProductCartDAO;
import com.cafe.erp.userWeb.model.ProductCartDTO;

@Component
public class ProductCartServiceImpl implements ProductCartService {

	
	@Autowired
	private SqlSession sqlSession;			//SqlSessionTemplete	
	
	
	//public List<ProductCartDTO> getProductCartNumByCustomerProduct(ProductCartDTO dto);		//고객코드와 상품코드가 일치하는 장바구니코드(리스트) 가져오기
	@Override
	public List<ProductCartDTO> getProductCartNumByCustomerProduct(ProductCartDTO dto) {
		// TODO Auto-generated method stub
		ProductCartDAO productCartDAO = sqlSession.getMapper(ProductCartDAO.class);
		return productCartDAO.getProductCartNumByCustomerProduct(dto);
	}
	//	public List<ProductCartAddDTO> getProductAddCodeByCartCode(int cartcode);				//해당 장바구니코드의 옵션(추가사항)들을 가져오기 
	@Override
	public List<ProductCartAddDTO> getProductAddCodeByCartCode(int cartcode) {
		// TODO Auto-generated method stub
		ProductCartDAO productCartDAO = sqlSession.getMapper(ProductCartDAO.class);
		return productCartDAO.getProductAddCodeByCartCode(cartcode);
	}

	
	@Override
	public void insertProductCart(ProductCartDTO dto) {
		// TODO Auto-generated method stub
		ProductCartDAO productCartDAO = sqlSession.getMapper(ProductCartDAO.class);
		productCartDAO.insertProductCart(dto);
	}
	
	@Override
	public void insertProductCartAdd(ProductCartAddDTO dto) {
		// TODO Auto-generated method stub
		ProductCartDAO productCartDAO = sqlSession.getMapper(ProductCartDAO.class);
		productCartDAO.insertProductCartAdd(dto);
	}
	
	@Override
	public void updateProductCartNum(ProductCartDTO dto) {	
		// TODO Auto-generated method stub
		ProductCartDAO productCartDAO = sqlSession.getMapper(ProductCartDAO.class);
		productCartDAO.updateProductCartNum(dto);
	}

	//public ProductCartDTO getProdctCatrByRecent();						//가장 최근에 저장한 장바구니 데이터 가져오기
	@Override
	public ProductCartDTO getProdctCatrByRecent() {
		// TODO Auto-generated method stub
		ProductCartDAO productCartDAO = sqlSession.getMapper(ProductCartDAO.class);
		return productCartDAO.getProdctCatrByRecent();
	}

	
	
	//public ProductCartAddJoinDTO getCartJoinByCustomerProduct(ProductCartDTO dto);			//고객코드와 상품코드가 일치하는 장바구니코드(리스트)중에서  옵션(추가사항)이 없는 record 가져오기..
	
	@Override
	public ProductCartAddJoinDTO getCartJoinByCustomerProduct(ProductCartDTO dto) {
		// TODO Auto-generated method stub
		ProductCartDAO productCartDAO = sqlSession.getMapper(ProductCartDAO.class);
		return productCartDAO.getCartJoinByCustomerProduct(dto);
	}

	//public List<ProductCartAddJoinDTO> getCartListByCustomer(int customer_code);			//로그인한 고객의 장바구니 리스트 가져오기
	@Override
	public List<ProductCartAddJoinDTO> getCartListByCustomer(int customer_code) {
		// TODO Auto-generated method stub
		ProductCartDAO productCartDAO = sqlSession.getMapper(ProductCartDAO.class);
		return productCartDAO.getCartListByCustomer(customer_code);
	}

	@Override
	public List<ProductVO> getProductList() {
		// TODO Auto-generated method stub
		ProductCartDAO productCartDAO = sqlSession.getMapper(ProductCartDAO.class);
		return productCartDAO.getProductList();
		
	}
	

	@Override
	public void deleteProductCartAddAll(int cart_num) {
		// TODO Auto-generated method stub
		ProductCartDAO productCartDAO = sqlSession.getMapper(ProductCartDAO.class);
		productCartDAO.deleteProductCartAddAll(cart_num);
		
	}
	@Override
	public void deleteProductCartAll(int customer_code) {
		// TODO Auto-generated method stub
		ProductCartDAO productCartDAO = sqlSession.getMapper(ProductCartDAO.class);
		productCartDAO.deleteProductCartAll(customer_code);
	}

	
	
	
	
	
	
	
	
	

	

	@Override
	public List<ProductCartDTO> getProductCartListByCustomer(int customer_code){
		// TODO Auto-generated method stub
		ProductCartDAO productCartDAO = sqlSession.getMapper(ProductCartDAO.class);
		return productCartDAO.getProductCartListByCustomer(customer_code);
	}

	
	
	@Override
	public ProductVO getProductViewByCode(int productcode) {
		// TODO Auto-generated method stub
		ProductCartDAO productCartDAO = sqlSession.getMapper(ProductCartDAO.class);
		return productCartDAO.getProductViewByCode(productcode);
	}
	

	@Override
	public void updateListCount(HashMap Map) {
		
		ProductCartDAO productCartDAO = sqlSession.getMapper(ProductCartDAO.class);
		
		 productCartDAO.updateListCount(Map);
		
		

	}
	@Override
	public void deleteListProduct(int cart_code) {
		
		ProductCartDAO productCartDAO = sqlSession.getMapper(ProductCartDAO.class);
		 productCartDAO.deleteListProduct(cart_code);
		
	}
	@Override
	public void deleteListCartAdd(int cart_code) {
		
		ProductCartDAO productCartDAO = sqlSession.getMapper(ProductCartDAO.class);
		 productCartDAO.deleteListCartAdd(cart_code);
	}
	

	





}
