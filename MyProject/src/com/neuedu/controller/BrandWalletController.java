package com.neuedu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neuedu.pojo.BrandWallet;
import com.neuedu.pojo.WalletWater;
import com.neuedu.service.BrandWalletService;

@Controller
public class BrandWalletController {
	
	@Autowired
	BrandWalletService brandWalletService;
	
	@RequestMapping(value="/findBrandWallet.action")
	public String findBrandOne(BrandWallet brandWallet,Model model){
		//����ֵ������BrandWallet   brandWallet�Ƕ���ı���    .findBrandOne�ǵ��õķ���
		BrandWallet brandWallet1=brandWalletService.findBrandOne(brandWallet);
		model.addAttribute("brandWallet",brandWallet1);
		return "brand-gmcwallerAcount";
	}
	
	@RequestMapping(value="/findWalletWater.action")
	public String findAll(Model model){
		
		List<WalletWater> result=brandWalletService.findAllWallet();
		model.addAttribute("brandWallet",result);

		return "brand-gmcwallerAcountlist";
	}
	
	

}
