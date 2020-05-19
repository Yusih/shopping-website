package com.neuedu.pojo;

public class Product {
	int brandId;
	String sku;
	String brandName;
	String proPic;
	String proName;
	String price;
	int stock;
	String proState;
	String proType;
	float volume;
	String upc;
	String ena;
	String time;
	String ebayDes;
	String AmazonDes;
	@Override
	public String toString() {
		return "Product [brandId=" + brandId + ", sku=" + sku + ", brandName=" + brandName + ", proPic=" + proPic
				+ ", proName=" + proName + ", price=" + price + ", stock=" + stock + ", proState=" + proState
				+ ", proType=" + proType + ", volume=" + volume + ", upc=" + upc + ", ena=" + ena + ", time=" + time
				+ ", ebayDes=" + ebayDes + ", AmazonDes=" + AmazonDes + "]";
	}
	public int getBrandId() {
		return brandId;
	}
	public void setBrandId(int brandId) {
		this.brandId = brandId;
	}
	public String getSku() {
		return sku;
	}
	public void setSku(String sku) {
		this.sku = sku;
	}
	public String getBrandName() {
		return brandName;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	public String getProPic() {
		return proPic;
	}
	public void setProPic(String proPic) {
		this.proPic = proPic;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getProState() {
		return proState;
	}
	public void setProState(String proState) {
		this.proState = proState;
	}
	public String getProType() {
		return proType;
	}
	public void setProType(String proType) {
		this.proType = proType;
	}
	public float getVolume() {
		return volume;
	}
	public void setVolume(float volume) {
		this.volume = volume;
	}
	public String getUpc() {
		return upc;
	}
	public void setUpc(String upc) {
		this.upc = upc;
	}
	public String getEna() {
		return ena;
	}
	public void setEna(String ena) {
		this.ena = ena;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getEbayDes() {
		return ebayDes;
	}
	public void setEbayDes(String ebayDes) {
		this.ebayDes = ebayDes;
	}
	public String getAmazonDes() {
		return AmazonDes;
	}
	public void setAmazonDes(String amazonDes) {
		AmazonDes = amazonDes;
	}
	
}
