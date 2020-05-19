package com.neuedu.service;

import java.util.List;

import com.neuedu.pojo.Wishlist;

public interface WishlistService {
	
	public List<Wishlist> findWishlist();
	
	public Wishlist findOneWish(String wishName);
	
	public boolean deleteWish(String wishName);
	
	public boolean addWishlist(Wishlist wishlist);
}
