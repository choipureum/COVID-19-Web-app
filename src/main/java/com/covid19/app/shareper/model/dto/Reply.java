package com.covid19.app.shareper.model.dto;

import java.util.Date;

public class Reply {

	   private int reply_idx;
	   private int shareQnaIdx;
	   private String member_id;
	   private String reply_content;
	   private Date reply_reg_date;
	public int getReply_idx() {
		return reply_idx;
	}
	public void setReply_idx(int reply_idx) {
		this.reply_idx = reply_idx;
	}
	public int getShareQnaIdx() {
		return shareQnaIdx;
	}
	public void setShareQnaIdx(int shareQnaIdx) {
		this.shareQnaIdx = shareQnaIdx;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getReply_content() {
		return reply_content;
	}
	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}
	public Date getReply_reg_date() {
		return reply_reg_date;
	}
	public void setReply_reg_date(Date reply_reg_date) {
		this.reply_reg_date = reply_reg_date;
	}
	@Override
	public String toString() {
		return "Reply [reply_idx=" + reply_idx + ", shareQnaIdx=" + shareQnaIdx + ", member_id=" + member_id
				+ ", reply_content=" + reply_content + ", reply_reg_date=" + reply_reg_date + "]";
	}
	   
	   
	
	
}
