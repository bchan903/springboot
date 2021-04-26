package com.javacoffee.web.dao;

import java.util.ArrayList;

import com.javacoffee.web.model.ProductVO;

public interface IProductDAO {
	
	ArrayList<ProductVO> productList();
	ArrayList<ProductVO> productMain();
	ProductVO selectProduct(String prdNo);
	void updateProduct(ProductVO vo);

}
