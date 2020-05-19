package com.neuedu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neuedu.mapper.WishlistMapper;
import com.neuedu.pojo.Wishlist;
import com.neuedu.service.WishlistService;

@Service(value="wishlistService")
public class WishlistServiceImpl implements WishlistService{

	@Autowired
	WishlistMapper wishlistMapper;
	
	@Override
	public List<Wishlist> findWishlist() {
		// TODO Auto-generated method stub
		return wishlistMapper.findWishlist();
	}

	@Override
	public Wishlist findOneWish(String wishName) {
		// TODO Auto-generated method stub
		return wishlistMapper.findOneWish(wishName);
	}

	@Override
	public boolean deleteWish(String wishName) {
		int result=wishlistMapper.deleteWish(wishName);
		if(result!=0){
			return true;
		}
		return false;
	}

	@Override
	public boolean addWishlist(Wishlist wishlist) {
		int result=wishlistMapper.addWishlist(wishlist);
		if(result!=0){
			return true;
		}
		return false;
	}

}
