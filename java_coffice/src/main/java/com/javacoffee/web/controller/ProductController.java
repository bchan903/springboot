package com.javacoffee.web.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javacoffee.web.model.ProductVO;
import com.javacoffee.web.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	ProductService service;
	
	
	@RequestMapping("/")
	public String ProductMain(Model model) {
		ArrayList<ProductVO> prdMain=service.productMain();
		model.addAttribute("prdMain",prdMain);
		return "index"; 
	}
	
	@RequestMapping("/productList")
	public String ProductList(Model model) {
		ArrayList<ProductVO> prdList=service.productList();
		model.addAttribute("prdList",prdList);
		return "jsp/productList"; 
	}
	
	
	@RequestMapping("/selectProduct/{prdNo}")
	public String selectProduct(@PathVariable String prdNo, Model model) {
		ProductVO product = service.selectProduct(prdNo);
		model.addAttribute("product", product);
		
		return "jsp/productForm"; 

	}
	
	@RequestMapping("/updateProduct")
	public String productFrom(ProductVO vo) {
		
		service.updateProduct(vo);
		
		return "redirect:./productList"; 
	}
	

}
