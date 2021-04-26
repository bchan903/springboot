package com.javacoffee.web.service;

import java.util.ArrayList;

import com.javacoffee.web.model.OrderVO;

public interface IOrderService {
	
	ArrayList<OrderVO> orderList();
	void updateOrder(OrderVO vo);
	void insertOrder(OrderVO vo);

}
