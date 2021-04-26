package com.javacoffee.web.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.javacoffee.web.dao.IOrderDAO;
import com.javacoffee.web.model.OrderVO;

@Service
public class OrderService implements IOrderService {
	
	
	@Autowired
	@Qualifier("IOrderDAO")
	IOrderDAO dao;

	@Override
	public ArrayList<OrderVO> orderList() {
		
		return dao.orderList();
	}

	@Override
	public void updateOrder(OrderVO vo) {
		// TODO Auto-generated method stub

	}
	
	@Override
	public void insertOrder(OrderVO vo) {
		dao.insertOrder(vo);

	}


}
