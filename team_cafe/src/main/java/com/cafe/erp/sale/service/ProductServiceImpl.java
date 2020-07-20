package com.cafe.erp.sale.service;

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

@Component
public class ProductServiceImpl implements ProductService {

	
	@Autowired
	private SqlSession sqlSession;			//SqlSessionTemplete	
	
	@Override
	public void insertProduct(ProductVO vo) {
		// TODO Auto-generated method stub
		ProductDAO productDAO = sqlSession.getMapper(ProductDAO.class);
		System.out.println(vo.getCafe_product_name());
		System.out.println(vo.getCafe_product_img());
		System.out.println(vo.getProduct_category_code());
		productDAO.insertProduct(vo);
		
	}

	@Override
	public List<ProductVO> getProductList(HashMap map) {
		// TODO Auto-generated method stub
		ProductDAO productDAO = sqlSession.getMapper(ProductDAO.class);
		return productDAO.getProductList(map);
	}

	@Override
	public ProductVO getProductByCode(int num) {
		// TODO Auto-generated method stub
		ProductDAO productDAO = sqlSession.getMapper(ProductDAO.class);
		return productDAO.getProductByCode(num);
	}

	@Override
	public int updateProduct(ProductVO vo) {
		// TODO Auto-generated method stub
		ProductDAO productDAO = sqlSession.getMapper(ProductDAO.class);
		productDAO.updateProduct(vo);
		return 0;
	}

	@Override
	public int deleteProduct(ProductVO vo) {
		// TODO Auto-generated method stub
		ProductDAO productDAO = sqlSession.getMapper(ProductDAO.class);
		productDAO.deleteProduct(vo);
		return 0;
	}

	@Override
	public int getProductCount() {
		// TODO Auto-generated method stub
		ProductDAO productDAO = sqlSession.getMapper(ProductDAO.class);
		return productDAO.getProductCount();

	}
	
	private static final String SAVE_PATH = "/upload";
	private static final String PREFIX_URL = "/upload/";
	
	public String restore(MultipartFile multipartFile) {
		String url = null;
		
		try {
			// ���� ����
			String originFilename = multipartFile.getOriginalFilename();
//			String extName
//				= originFilename.substring(originFilename.lastIndexOf("."), originFilename.length());
			Long size = multipartFile.getSize();
			
			// �������� ���� �� ���� �̸�
//			String saveFileName = genSaveFileName(extName);
			String saveFileName = originFilename;
			
			System.out.println("originFilename : " + originFilename);
//			System.out.println("extensionName : " + extName);
			System.out.println("size : " + size);
			System.out.println("saveFileName : " + saveFileName);
			
			writeFile(multipartFile, saveFileName);
			url = saveFileName;
		}
		catch (IOException e) {
			// ������� RuntimeException �� ��ӹ��� ���ܰ� ó���Ǿ�� ������
			// ���ǻ� RuntimeException�� ������.
			// throw new FileUploadException();	
			throw new RuntimeException(e);
		}
		return url;
	}
	
	public boolean writeFile(MultipartFile multipartFile, String saveFileName)throws IOException{
		boolean result = false;
		
		byte[] data = multipartFile.getBytes();
		FileOutputStream fos = new FileOutputStream(SAVE_PATH + "/" + saveFileName);
		fos.write(data);
		fos.close();
		
		return result;
	}

	@Override
	public List<ProductVO> getProductPlusCategoryList(HashMap map) {
		ProductDAO productDAO = sqlSession.getMapper(ProductDAO.class);
		return productDAO.getProductPlusCategoryList(map);
	}

	
	//카테고리별로 제품list 가져오기	

	@Override
	public List<ProductVO> getProductListByCategory(int num) {
		ProductDAO productDAO = sqlSession.getMapper(ProductDAO.class);
		return productDAO.getProductListByCategory(num);
	}

	@Override
	public List<ProductVO> getProductAll(HashMap map) {
		ProductDAO productDAO = sqlSession.getMapper(ProductDAO.class);
		return productDAO.getProductAll(map);
		
	}

}
