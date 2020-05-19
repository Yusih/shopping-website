package com.neuedu.pojo;

public class SellerWallet {
	int sellerId;
	String sName;
	String sEmail;
	String sPwd;
	int aMoney;
	public int getSellerId() {
		return sellerId;
	}
	public void setSellerId(int sellerId) {
		this.sellerId = sellerId;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getsEmail() {
		return sEmail;
	}
	public void setsEmail(String sEmail) {
		this.sEmail = sEmail;
	}
	public String getsPwd() {
		return sPwd;
	}
	public void setsPwd(String sPwd) {
		this.sPwd = sPwd;
	}
	public int getaMoney() {
		return aMoney;
	}
	public void setaMoney(int aMoney) {
		this.aMoney = aMoney;
	}
	@Override
	public String toString() {
		return "SellerWallet [sellerId=" + sellerId + ", sName=" + sName + ", sEmail=" + sEmail + ", sPwd=" + sPwd
				+ ", aMoney=" + aMoney + "]";
	}
	
	
	
	
	

}
