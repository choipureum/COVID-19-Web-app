package com.covid19.app.board.model.vo;

import java.util.Date;

public class Notice {

	private int notice_idx;
	private String notice_title;
	private String notice_writer;
	private String notice_content;
	private Date notice_date;
	
	@Override
	public String toString() {
		return "Notice [notice_idx=" + notice_idx + ", notice_title=" + notice_title + ", notice_writer="
				+ notice_writer + ", notice_content=" + notice_content + ", notice_date=" + notice_date + "]";
	}
	
	public int getNotice_idx() {
		return notice_idx;
	}
	public void setNotice_idx(int notice_idx) {
		this.notice_idx = notice_idx;
	}
	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	public String getNotice_writer() {
		return notice_writer;
	}
	public void setNotice_writer(String notice_writer) {
		this.notice_writer = notice_writer;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	public Date getNotice_date() {
		return notice_date;
	}
	public void setNotice_date(Date notice_date) {
		this.notice_date = notice_date;
	}
	
	
	
}
