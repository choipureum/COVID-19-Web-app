package com.covid19.app.admin.login.vo;

import java.sql.Date;

public class AdShare {

	private String shareField;
	private String shareName;
	private String simpleInfo;
	private String shareContent;
	private Date shareDate;
	private String sharemoney;
	
	public String getShareField() {
		return shareField;
	}
	public void setShareField(String shareField) {
		this.shareField = shareField;
	}
	public String getShareName() {
		return shareName;
	}
	public void setShareName(String shareName) {
		this.shareName = shareName;
	}
	public String getSimpleInfo() {
		return simpleInfo;
	}
	public void setSimpleInfo(String simpleInfo) {
		this.simpleInfo = simpleInfo;
	}
	public String getShareContent() {
		return shareContent;
	}
	public void setShareContent(String shareContent) {
		this.shareContent = shareContent;
	}
	public Date getShareDate() {
		return shareDate;
	}
	public void setShareDate(Date shareDate) {
		this.shareDate = shareDate;
	}
	public String getSharemoney() {
		return sharemoney;
	}
	public void setSharemoney(String sharemoney) {
		this.sharemoney = sharemoney;
	}
	
	@Override
	public String toString() {
		return "AdShare [shareField=" + shareField + ", shareName=" + shareName + ", simpleInfo=" + simpleInfo
				+ ", shareContent=" + shareContent + ", shareDate=" + shareDate + ", sharemoney=" + sharemoney + "]";
	}
	
	

}
