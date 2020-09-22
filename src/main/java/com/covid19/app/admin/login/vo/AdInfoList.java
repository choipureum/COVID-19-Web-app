package com.covid19.app.admin.login.vo;

import java.util.Date;

public class AdInfoList {

	private int info_idx;
	private String info_writer;
	private String info_title;
	private String info_content;
	private Date info_date;
	private int info_hits;
	public int getInfo_idx() {
		return info_idx;
	}
	public void setInfo_idx(int info_idx) {
		this.info_idx = info_idx;
	}
	public String getInfo_writer() {
		return info_writer;
	}
	public void setInfo_writer(String info_writer) {
		this.info_writer = info_writer;
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
	@Override
	public String toString() {
		return "AdInfoList [info_idx=" + info_idx + ", info_writer=" + info_writer + ", info_title=" + info_title
				+ ", info_content=" + info_content + ", info_date=" + info_date + ", info_hits=" + info_hits + "]";
	}
	
	
	
}
