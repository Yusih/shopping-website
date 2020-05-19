package com.neuedu.pojo;

public class Seller {
	int sellerId;
	String sName;
	String sEmail;
	String sPhone;
	String sPwd;
	
	public String getsPwd() {
		return sPwd;
	}
	public void setsPwd(String sPwd) {
		this.sPwd = sPwd;
	}
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
	public String getsPhone() {
		return sPhone;
	}
	public void setsPhone(String sPhone) {
		this.sPhone = sPhone;
	}
	@Override
	public String toString() {
		return "Seller [sellerId=" + sellerId + ", sName=" + sName + ", sEmail=" + sEmail + ", sPhone=" + sPhone
				+ ", sPwd=" + sPwd + "]";
	}


}
