package com.multi.product;

import java.util.ArrayList;

import com.multi.product.ProductVO;

public interface IProductService {
	ArrayList<ProductVO> productList(); //조회
	void insertProduct(ProductVO prd); //생성
	void updateProduct(ProductVO prd); //수정
	void deleteProduct(String prdNo); //삭제
	ProductVO productDetailView(String prdNo);//상세정보
	
}
