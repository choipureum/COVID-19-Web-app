package com.covid19.app.shareper.model.dto;

import java.util.Date;

public class ShareCheering {

	private int share_idx;
	private int shareCheeringIdx;
	private String member_id;
	private String shareCheeringContent;
	private Date shareCheeringRegdate;
	public int getShare_idx() {
		return share_idx;
	}
	public void setShare_idx(int share_idx) {
		this.share_idx = share_idx;
	}
	public int getShareCheeringIdx() {
		return shareCheeringIdx;
	}
	public void setShareCheeringIdx(int shareCheeringIdx) {
		this.shareCheeringIdx = shareCheeringIdx;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getShareCheeringContent() {
		return shareCheeringContent;
	}
	public void setShareCheeringContent(String shareCheeringContent) {
		this.shareCheeringContent = shareCheeringContent;
	}
	public Date getShareCheeringRegdate() {
		return shareCheeringRegdate;
	}
	public void setShareCheeringRegdate(Date shareCheeringRegdate) {
		this.shareCheeringRegdate = shareCheeringRegdate;
	}
	@Override
	public String toString() {
		return "ShareCheering [share_idx=" + share_idx + ", shareCheeringIdx=" + shareCheeringIdx + ", member_id="
				+ member_id + ", shareCheeringContent=" + shareCheeringContent + ", shareCheeringRegdate="
				+ shareCheeringRegdate + "]";
	}
	
	
	
	
	
	
}
