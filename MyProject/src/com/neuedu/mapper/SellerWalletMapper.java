package com.neuedu.mapper;

import java.util.List;

import com.neuedu.pojo.SellerWallet;
import com.neuedu.pojo.WalletWater;

public interface SellerWalletMapper {
	
	public SellerWallet selectOne(SellerWallet sellerWallet);
	
	public int updatePwd(SellerWallet sellerWallet);
	
	public List<WalletWater> findWallet();
	
	public int changeMoney(SellerWallet sellerWallet);

}
