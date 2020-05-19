package com.neuedu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neuedu.mapper.OrderlistMapper;
import com.neuedu.pojo.Orderlist;
import com.neuedu.service.OrderlistService;

@Service(value="orderlistService")
public class OrderlistServiceImpl implements OrderlistService {
	//自动装配
	@Autowired
	OrderlistMapper orderlistMapper;
	
	@Override
	public List<Orderlist> selectSAE(Orderlist orderlist) {
		// TODO Auto-generated method stub
		return orderlistMapper.selectSAE(orderlist);
	}

	@Override
	public boolean deleteOrder(Orderlist orderlist) {
		// TODO Auto-generated method stub
		int count = orderlistMapper.deleteOrder(orderlist);
		if(count==0){
			return false;
		}
		return true;
	}

	@Override
	public boolean changeState(Orderlist orderlist) {
		// TODO Auto-generated method stub
		int count = orderlistMapper.changeState(orderlist);
		if(count==0){
			return false;
		}
		return true;
	}

	@Override
	public boolean addOrder(Orderlist orderlist) {
		// TODO Auto-generated method stub
		int count = orderlistMapper.addOrder(orderlist);
		if(count==0){
			return false;
		}
		return true;
	}

	@Override
	public List<Orderlist> selectSeller(Orderlist orderlist) {
		// TODO Auto-generated method stub
		return orderlistMapper.selectSeller(orderlist);
	}

	@Override
	public Orderlist selectOne(Orderlist orderlist) {
		// TODO Auto-generated method stub
		return orderlistMapper.selectOne(orderlist);
	}

	@Override
	public boolean payOrder(Orderlist orderlist) {
		// TODO Auto-generated method stub
		int count = orderlistMapper.payOrder(orderlist);
		if(count==0){
			return false;
		}
		return true;
	}
}
