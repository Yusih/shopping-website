package com.neuedu.pojo;

import java.sql.Date;

public class Orderlist {
	private int orderId;
	private int brandId;
	private String orderNo;
	private String sku;
	private String orderState;
	private String orderTime;
	private String trackingNo;
	private int sellerId;
	private String title;
	private int quantity;
	private String price;
	private String total;
	@Override
	public String toString() {
		return "Orderlist [orderId=" + orderId + ", brandId=" + brandId + ", orderNo=" + orderNo + ", sku=" + sku
				+ ", orderState=" + orderState + ", orderTime=" + orderTime + ", trackingNo=" + trackingNo
				+ ", sellerId=" + sellerId + ", title=" + title + ", quantity=" + quantity + ", price=" + price
				+ ", total=" + total + "]";
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getBrandId() {
		return brandId;
	}
	public void setBrandId(int brandId) {
		this.brandId = brandId;
	}
	public String getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	public String getSku() {
		return sku;
	}
	public void setSku(String sku) {
		this.sku = sku;
	}
	public String getOrderState() {
		return orderState;
	}
	public void setOrderState(String orderState) {
		this.orderState = orderState;
	}
	public String getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}
	public String getTrackingNo() {
		return trackingNo;
	}
	public void setTrackingNo(String trackingNo) {
		this.trackingNo = trackingNo;
	}
	public int getSellerId() {
		return sellerId;
	}
	public void setSellerId(int sellerId) {
		this.sellerId = sellerId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	
	

}
