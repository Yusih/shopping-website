package com.neuedu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neuedu.mapper.OrderlistMapper;
import com.neuedu.pojo.Orderlist;
import com.neuedu.service.OrderlistService;
@Controller
public class OrderlistController {
	@Autowired
	OrderlistService orderlistService;
	
	@RequestMapping(value="/findSAE.action")
	public String selectSAE(Orderlist orderlist, Model model, HttpSession session){
		System.out.println(orderlist.getBrandId());
		System.out.println(orderlist.getOrderState());
		List<Orderlist> orderlist1 = orderlistService.selectSAE(orderlist);
		for(int i=0;i<orderlist1.size();i++)
		System.out.println(orderlist1.get(i));
		model.addAttribute("orderlist1",orderlist1);
		return "brand-orderlist";
	}
	
	
	@RequestMapping(value="/deleteOrder.action")
	public String deleteOrder(Orderlist orderlist){
		boolean result = orderlistService.deleteOrder(orderlist);
		if(result){
			return "brand-orderlist";
		}
		return "error";
	}
	
	@RequestMapping(value="/updateOrder.action")
	public String updateOrder(Orderlist orderlist){
		boolean result = orderlistService.changeState(orderlist);
		if(result){
			return "brand-orderlist";
		}
		return "error";
	}
	
	@RequestMapping(value="/addOrder.action")
	public String addOrder(Orderlist orderlist, Model model){
		boolean result = orderlistService.addOrder(orderlist);
		if(result){
			return "bvo-orderlist";
		}
		return "error";
	}
	
	@RequestMapping(value="/findSeller.action")
	public String selectSeller(Orderlist orderlist, Model model, HttpSession session){
		System.out.println(orderlist.getSellerId());
		System.out.println(orderlist.getOrderState());
		List<Orderlist> orderlist1 = orderlistService.selectSeller(orderlist);
		for(int i=0;i<orderlist1.size();i++)
		System.out.println(orderlist1.get(i));
		model.addAttribute("orderlist1",orderlist1);
		return "bvo-orderlist";
	}
	
	@RequestMapping(value="/findOne.action")
	public String selectOne(Orderlist orderlist, Model model, HttpSession session){
		System.out.println(orderlist.getBrandId());
		System.out.println(orderlist.getOrderState());
		Orderlist orderlist1 = orderlistService.selectOne(orderlist);
		model.addAttribute("orderlist1",orderlist1);
		return "brand-orderlistUpdate";
	}
	
	@RequestMapping(value="/payOrder.action")
	public String payOrder(Orderlist orderlist){
		boolean result = orderlistService.payOrder(orderlist);
		if(result){
			return "bvo-orderlist";
		}
		return "error";
	}
}
