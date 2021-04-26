package com.javacoffee.web.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.javacoffee.web.dao.IProductDAO;
import com.javacoffee.web.model.ProductVO;

@Service
public class ProductService implements IProductService {
	
	@Autowired
	@Qualifier("IProductDAO")
	IProductDAO dao;

	@Override
	public ArrayList<ProductVO> productList() {
		return dao.productList();
	}

	@Override
	public ArrayList<ProductVO> productMain() {
		return dao.productMain();
	}

	@Override
	public ProductVO selectProduct(String prdNo) {
		return dao.selectProduct(prdNo);
	}

	@Override
	public void updateProduct(ProductVO vo) {
		dao.updateProduct(vo);
	}

}
