package com.neuedu.service;

import java.util.List;

import com.neuedu.pojo.BrandWallet;
import com.neuedu.pojo.WalletWater;

public interface BrandWalletService {
	
	public BrandWallet findBrandOne(BrandWallet brandWallet);
	
	public List<WalletWater> findAllWallet();

}
