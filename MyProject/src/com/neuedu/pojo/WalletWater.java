package com.neuedu.pojo;

public class WalletWater {
	
	int tranNum;
	int money;
	String createTime;
	String state;
	public int getTranNum() {
		return tranNum;
	}
	public void setTranNum(int tranNum) {
		this.tranNum = tranNum;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "WalletWater [tranNum=" + tranNum + ", money=" + money + ", createTime=" + createTime + ", state="
				+ state + "]";
	}
	
	

}
