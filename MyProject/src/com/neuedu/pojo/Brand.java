package com.neuedu.pojo;

public class Brand {
	int brandId;
	String bCName;
	String bName;
	String briefIntro;
	String reportType;
	String reportUrl;
	String brandPwd;
	
	public String getBrandPwd() {
		return brandPwd;
	}
	public void setBrandPwd(String brandPwd) {
		this.brandPwd = brandPwd;
	}
	public int getBrandId() {
		return brandId;
	}
	public void setBrandId(int brandId) {
		this.brandId = brandId;
	}
	public String getbCName() {
		return bCName;
	}
	public void setbCName(String bCName) {
		this.bCName = bCName;
	}
	public String getbName() {
		return bName;
	}
	public void setbName(String bName) {
		this.bName = bName;
	}
	public String getBriefIntro() {
		return briefIntro;
	}
	public void setBriefIntro(String briefIntro) {
		this.briefIntro = briefIntro;
	}
	public String getReportType() {
		return reportType;
	}
	public void setReportType(String reportType) {
		this.reportType = reportType;
	}
	public String getReportUrl() {
		return reportUrl;
	}
	public void setReportUrl(String reportUrl) {
		this.reportUrl = reportUrl;
	}
	@Override
	public String toString() {
		return "Brand [brandId=" + brandId + ", bCName=" + bCName + ", bName=" + bName + ", briefIntro=" + briefIntro
				+ ", reportType=" + reportType + ", reportUrl=" + reportUrl + ", brandPwd=" + brandPwd + "]";
	}

	

}
