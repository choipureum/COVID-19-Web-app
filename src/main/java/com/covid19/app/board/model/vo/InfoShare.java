package com.covid19.app.board.model.vo;

import java.util.Date;

public class InfoShare {

	private String member_id;
	private String member_nick;
	private String member_rank;
	private int info_idx;
	private String info_title;
	private String info_content;
	private Date info_date;
	private int info_hits;
	@Override
	public String toString() {
		return "InfoShare [member_id=" + member_id + ", member_nick=" + member_nick + ", member_rank=" + member_rank
				+ ", info_idx=" + info_idx + ", info_title=" + info_title + ", info_content=" + info_content
				+ ", info_date=" + info_date + ", info_hits=" + info_hits + "]";
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_nick() {
		return member_nick;
	}
	public void setMember_nick(String member_nick) {
		this.member_nick = member_nick;
	}
	public String getMember_rank() {
		return member_rank;
	}
	public void setMember_rank(String member_rank) {
		this.member_rank = member_rank;
	}
	public int getInfo_idx() {
		return info_idx;
	}
	public void setInfo_idx(int info_idx) {
		this.info_idx = info_idx;
	}
	public String getInfo_title() {
		return info_title;
	}
	public void setInfo_title(String info_title) {
		this.info_title = info_title;
	}
	public String getInfo_content() {
		return info_content;
	}
	public void setInfo_content(String info_content) {
		this.info_content = info_content;
	}
	public Date getInfo_date() {
		return info_date;
	}
	public void setInfo_date(Date info_date) {
		this.info_date = info_date;
	}
	public int getInfo_hits() {
		return info_hits;
	}
	public void setInfo_hits(int info_hits) {
		this.info_hits = info_hits;
	}
	
	
}
