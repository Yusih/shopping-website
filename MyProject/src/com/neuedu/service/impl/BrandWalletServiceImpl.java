package com.neuedu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neuedu.mapper.BrandWalletMapper;
import com.neuedu.pojo.BrandWallet;
import com.neuedu.pojo.WalletWater;
import com.neuedu.service.BrandWalletService;

@Service(value="brandWalletService")

public class BrandWalletServiceImpl implements BrandWalletService {
	
	@Autowired
	BrandWalletMapper brandWalletMapper;

	
	@Override
	public BrandWallet findBrandOne(BrandWallet brandWallet) {
		// TODO Auto-generated method stub
		return brandWalletMapper.findBrandOne(brandWallet);
	}

	
	@Override
	public List<WalletWater> findAllWallet() {
		// TODO Auto-generated method stub
		return brandWalletMapper.findAllWallet();
	}

}
