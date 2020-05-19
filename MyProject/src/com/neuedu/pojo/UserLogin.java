package com.neuedu.pojo;

public class UserLogin {
	int roleId;
	String name;
	String pwd;
	public int getRoleId() {
		return roleId;
	}
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	@Override
	public String toString() {
		return "UserLogin [roleId=" + roleId + ", name=" + name + ", pwd=" + pwd + "]";
	}
	

}
