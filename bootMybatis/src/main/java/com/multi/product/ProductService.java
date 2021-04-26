package com.multi.product;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.multi.product.IProductDAO;
import com.multi.product.ProductVO;

@Service
public class ProductService implements IProductService {
	
	//MyBatis를 사용하는 경우
	@Autowired
	@Qualifier("IProductDAO")
	IProductDAO dao;
	
	
	@Override
	public ArrayList<ProductVO> productList() {
		// TODO Auto-generated method stub
		
		return dao.productList();
		
	}

	@Override
	public void insertProduct(ProductVO prd) {
		// TODO Auto-generated method stub
		dao.insertProduct(prd);
	}

	@Override
	public void updateProduct(ProductVO prd) {
		dao.updateProduct(prd);

	}

	@Override
	public void deleteProduct(String prdNo) {
		dao.deleteProduct(prdNo);
	}

	@Override
	public ProductVO productDetailView(String prdNo) {
		// TODO Auto-generated method stub
		return dao.productDetailView(prdNo);
	}

}
