package com.neuedu.mapper;

import java.util.List;

import com.neuedu.pojo.Orderlist;

public interface OrderlistMapper {
	public List<Orderlist> selectSAE(Orderlist orderlist);
	public List<Orderlist> selectSeller(Orderlist orderlist);
	public Orderlist selectOne(Orderlist orderlist);
	public int changeState(Orderlist orderlist);
	public int deleteOrder(Orderlist orderlist);
	public int addOrder(Orderlist orderlist);
	public int payOrder(Orderlist orderlist);
	
}
