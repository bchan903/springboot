package com.javacoffee.web.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javacoffee.web.model.MemberVO;
import com.javacoffee.web.model.OrderVO;
import com.javacoffee.web.model.ProductVO;
import com.javacoffee.web.service.MemberService;
import com.javacoffee.web.service.OrderService;
import com.javacoffee.web.service.ProductService;

@Controller
public class OrderController {
	
	@Autowired
	OrderService service;
	@Autowired
	MemberService memservice;
	@Autowired
	ProductService prdservice;
	
	
	@RequestMapping("/order/{prdNo}")
	public String order(@PathVariable String prdNo,HttpSession session,Model model) {
		
		String cusId = (String) session.getAttribute("sid");
		
		if(cusId != null) {
			
			MemberVO memvo = memservice.selectMember(cusId);
			ProductVO prdvo = prdservice.selectProduct(prdNo);
			
			model.addAttribute("member",memvo);
			model.addAttribute("product",prdvo);
			
			return "jsp/orderInfo";
			
			
		} else {
			
			return "jsp/loginForm";
		}
		
		
	}
	
	@RequestMapping("/payment")
	public String payment(OrderVO vo) {
		
		service.insertOrder(vo);
		
		return "redirect:/";
	}
	
	@RequestMapping("/orderList")
	public String orderList(Model model) {
		
		ArrayList<OrderVO> ordList=service.orderList();
		model.addAttribute("ordList",ordList);
		
		return "jsp/orderList";
	}
	
}
