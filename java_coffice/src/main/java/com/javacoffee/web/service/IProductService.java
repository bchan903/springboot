package com.javacoffee.web.service;

import java.util.ArrayList;

import com.javacoffee.web.model.ProductVO;

public interface IProductService {

	ArrayList<ProductVO> productList();
	ArrayList<ProductVO> productMain();
	ProductVO selectProduct(String prdNo);
	void updateProduct(ProductVO vo);
		
	

}
