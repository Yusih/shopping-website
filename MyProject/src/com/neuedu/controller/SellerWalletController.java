package com.neuedu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neuedu.pojo.SellerWallet;
import com.neuedu.pojo.WalletWater;
import com.neuedu.service.SellerWalletService;

@Controller
public class SellerWalletController {
	
	@Autowired
	SellerWalletService sellerWalletService;
	
	@RequestMapping(value="/findSellerWallet.action")
	public String findOne(SellerWallet sellerWallet,Model model){
		//����ֵ������SellerWallet   sellerWallet1�Ƕ���ı���    .findOne�ǵ��õķ���
		SellerWallet sellerWallet1=sellerWalletService.findOne(sellerWallet);
		//sellerWallet�Ǵ���ǰ��ҳ��� 
		model.addAttribute("sellerWallet",sellerWallet1);
		return "bvo-gmcwallermoney";
	}
	
	@RequestMapping(value="/updateSellerWallet.action")
	public String updateOne(SellerWallet sellerWallet,Model model){
		//����ֵ������SellerWallet   sellerWallet1�Ƕ���ı���    .findOne�ǵ��õķ���
		boolean sellerWallet2=sellerWalletService.updateOne(sellerWallet);
		if(sellerWallet2){
			return "bvo-gmcwallerAcount";
		}
		return "error";
	}
	
	@RequestMapping(value="/findWalletWater2.action")
	public String findAll(Model model){
		
		List<WalletWater> result=sellerWalletService.findWallet();
		model.addAttribute("sellerWallet",result);
		return "bvo-gmcwallerAcountList";
	}
	
	@RequestMapping(value="/updateAvailableMoney.action")
	public String changeMoney(SellerWallet sellerWallet,Model model){
		//����ֵ������SellerWallet   sellerWallet1�Ƕ���ı���    .findOne�ǵ��õķ���
		boolean result2=sellerWalletService.changeMoney(sellerWallet);
		if(result2){
			return "bvo-gmcwallerAcount";
		}
		return "error";
	}

}
