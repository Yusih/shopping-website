package com.neuedu.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neuedu.pojo.Wishlist;
import com.neuedu.service.WishlistService;

@Controller
public class WishlistController {

	@Autowired
	WishlistService wishlistService;
	
	@RequestMapping(value="/findWishlist.action")
	public String findWishlist(Wishlist wishlist,Model model) throws IOException {
		List<Wishlist> result=wishlistService.findWishlist();
		model.addAttribute("wishlist", result);
		return "bvo-wishlist";
	}
	
	@RequestMapping(value="/findOneWishlist.action")
	public String findOneWishlist(String wishName,Model model) throws IOException {
		Wishlist result=wishlistService.findOneWish(wishName);
		model.addAttribute("wishlist", result);
		return "bvo-wishlist";
	}
	
	@RequestMapping(value="/deleteWishlist.action")
	public String deleteWishlist(String wishName,Model model) throws IOException {
		boolean result=wishlistService.deleteWish(wishName);
		if(result){
			return "index";
		}
		return "error";
	}
	
	@RequestMapping(value="/addWishlist.action")
	public String addWishlist(Wishlist wishlist,Model model) throws IOException {
		boolean result=wishlistService.addWishlist(wishlist);
		if(result){
			return "index";
		}
		return "error";
	}
}
