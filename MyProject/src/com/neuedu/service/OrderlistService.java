package com.neuedu.service;

import java.util.List;

import com.neuedu.pojo.Orderlist;

public interface OrderlistService {
	public List<Orderlist> selectSAE(Orderlist orderlist);
	public List<Orderlist> selectSeller(Orderlist orderlist);
	public Orderlist selectOne(Orderlist orderlist);
	public boolean changeState(Orderlist orderlist);
	public boolean deleteOrder(Orderlist orderlist);
	public boolean addOrder(Orderlist orderlist);
	public boolean payOrder(Orderlist orderlist);
}
