package com.neuedu.mapper;

import java.util.List;

import com.neuedu.pojo.Wishlist;

public interface WishlistMapper {
	
	public List<Wishlist> findWishlist();
	
	public Wishlist findOneWish(String wishName);
	
	public int deleteWish(String wishName);
	
	public int addWishlist(Wishlist wishlist);
}
