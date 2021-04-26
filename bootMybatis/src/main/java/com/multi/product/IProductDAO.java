package com.multi.product;

import java.util.ArrayList;


public interface IProductDAO {
	public ArrayList<ProductVO> productList(); //이름 일치해야함
	public void insertProduct(ProductVO prd);
	public void updateProduct(ProductVO prd);
	public void deleteProduct(String prdNo);
	public ProductVO productDetailView(String prdNo);
	
}
