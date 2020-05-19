package com.neuedu.pojo;

public class BrandWallet {
	int brandId;
	String bNum;
	String bEmail;
	String bPwd;
	int bMoney;
	public int getBrandId() {
		return brandId;
	}
	public void setBrandId(int brandId) {
		this.brandId = brandId;
	}
	public String getbNum() {
		return bNum;
	}
	public void setbNum(String bNum) {
		this.bNum = bNum;
	}
	public String getbEmail() {
		return bEmail;
	}
	public void setbEmail(String bEmail) {
		this.bEmail = bEmail;
	}
	public String getbPwd() {
		return bPwd;
	}
	public void setbPwd(String bPwd) {
		this.bPwd = bPwd;
	}
	public int getbMoney() {
		return bMoney;
	}
	public void setbMoney(int bMoney) {
		this.bMoney = bMoney;
	}
	@Override
	public String toString() {
		return "BrandWallet [brandId=" + brandId + ", bNum=" + bNum + ", bEmail=" + bEmail + ", bPwd=" + bPwd
				+ ", bMoney=" + bMoney + "]";
	}
	
	
	

}
