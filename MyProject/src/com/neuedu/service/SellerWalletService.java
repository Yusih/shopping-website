package com.neuedu.service;

import java.util.List;

import com.neuedu.pojo.SellerWallet;
import com.neuedu.pojo.WalletWater;

public interface SellerWalletService {
	
	public SellerWallet findOne(SellerWallet sellerWallet);
	
	public boolean updateOne(SellerWallet sellerWallet);
	
	public List<WalletWater> findWallet();
	
	public boolean changeMoney(SellerWallet sellerWallet);

}
