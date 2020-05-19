package com.neuedu.pojo;

public class Wishlist {
	String wishName;
	String wishPic;
	String wishsku;
	float wishPrice;
	public String getWishName() {
		return wishName;
	}
	public void setWishName(String wishName) {
		this.wishName = wishName;
	}
	public String getWishPic() {
		return wishPic;
	}
	public void setWishPic(String wishPic) {
		this.wishPic = wishPic;
	}
	public String getWishsku() {
		return wishsku;
	}
	public void setWishsku(String wishsku) {
		this.wishsku = wishsku;
	}
	public float getWishPrice() {
		return wishPrice;
	}
	public void setWishPrice(float wishPrice) {
		this.wishPrice = wishPrice;
	}
	@Override
	public String toString() {
		return "Wishlist [wishName=" + wishName + ", wishPic=" + wishPic + ", wishsku=" + wishsku + ", wishPrice="
				+ wishPrice + "]";
	}
}
