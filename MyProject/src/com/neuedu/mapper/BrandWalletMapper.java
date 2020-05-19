package com.neuedu.mapper;

import java.util.List;

import com.neuedu.pojo.BrandWallet;
import com.neuedu.pojo.WalletWater;

public interface BrandWalletMapper {
	
	public BrandWallet findBrandOne(BrandWallet brandWallet);
	
	public List<WalletWater> findAllWallet();

}
