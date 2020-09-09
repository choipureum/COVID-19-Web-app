package com.covid19.app.shareper.model.dto;

import java.sql.Date;

public class Share {

	private String shareField;
	private String shareName;
	private String simpleInfo;
	private String shareContent;
	private Date shareDate;
	private String sharemoney;
	public int getSharedDay() {
		return sharedDay;
	}
	public void setSharedDay(int sharedDay) {
		this.sharedDay = sharedDay;
	}
	private int sharedDay;
	@Override
	public String toString() {
		return "Share [shareField=" + shareField + ", shareName=" + shareName + ", simpleInfo=" + simpleInfo
				+ ", shareContent=" + shareContent + ", shareDate=" + shareDate + ", sharemoney=" + sharemoney
				+ ", sharedDay=" + sharedDay + "]";
	}
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
	
	
	
}
