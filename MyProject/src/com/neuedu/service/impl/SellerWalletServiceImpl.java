package com.neuedu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neuedu.mapper.SellerWalletMapper;
import com.neuedu.pojo.SellerWallet;
import com.neuedu.pojo.WalletWater;
import com.neuedu.service.SellerWalletService;

@Service(value="sellerWalletService")

public class SellerWalletServiceImpl implements SellerWalletService {

	@Autowired
	SellerWalletMapper sellerWalletMapper;
	
	
	@Override
	public SellerWallet findOne(SellerWallet sellerWallet) {
		// TODO Auto-generated method stub
		return sellerWalletMapper.selectOne(sellerWallet);
	}


	@Override
	public boolean updateOne(SellerWallet sellerWallet) {
		int result=sellerWalletMapper.updatePwd(sellerWallet);
		if(result!=0){
			return true;
		}
		return false;
	}


	@Override
	public List<WalletWater> findWallet() {
		// TODO Auto-generated method stub
		return sellerWalletMapper.findWallet();
	}


	@Override
	public boolean changeMoney(SellerWallet sellerWallet) {
		// TODO Auto-generated method stub
		int count=sellerWalletMapper.changeMoney(sellerWallet);
		if(count!=0){
			return true;
		}
		return false;
	}
	
	
	

}
