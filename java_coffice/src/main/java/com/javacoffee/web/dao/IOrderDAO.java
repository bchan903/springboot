package com.javacoffee.web.dao;

import java.util.ArrayList;

import com.javacoffee.web.model.OrderVO;

public interface IOrderDAO {
	
	ArrayList<OrderVO> orderList();
	void updateOrder(OrderVO vo);
	void insertOrder(OrderVO vo);

}
