package com.covid19.app.shareper.model.dto;

import java.util.Date;

/**
 * @author User
 *
 */
public class ShareQna {

	private int share_idx;
	private int shareQnaIdx;
	private String shareQnaContent;
	private Date shareQnaRegDate;
	private String member_id; //작성자
	private String secretReply; //비밀글
	private int qcount; //qna 갯수
	
	public int getShare_idx() {
		return share_idx;
	}
	public void setShare_idx(int share_idx) {
		this.share_idx = share_idx;
	}
	public int getShareQnaIdx() {
		return shareQnaIdx;
	}
	public void setShareQnaIdx(int shareQnaIdx) {
		this.shareQnaIdx = shareQnaIdx;
	}
	public String getShareQnaContent() {
		return shareQnaContent;
	}
	public void setShareQnaContent(String shareQnaContent) {
		this.shareQnaContent = shareQnaContent;
	}
	public Date getShareQnaRegDate() {
		return shareQnaRegDate;
	}
	public void setShareQnaRegDate(Date shareQnaRegDate) {
		this.shareQnaRegDate = shareQnaRegDate;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getSecretReply() {
		return secretReply;
	}
	public void setSecretReply(String secretReply) {
		this.secretReply = secretReply;
	}
	public int getQcount() {
		return qcount;
	}
	public void setQcount(int qcount) {
		this.qcount = qcount;
	}
	@Override
	public String toString() {
		return "ShareQna [share_idx=" + share_idx + ", shareQnaIdx=" + shareQnaIdx + ", shareQnaContent="
				+ shareQnaContent + ", shareQnaRegDate=" + shareQnaRegDate + ", member_id=" + member_id
				+ ", secretReply=" + secretReply + ", qcount=" + qcount + "]";
	}
	
	
	
	
	
	

	
	
	
	
}
