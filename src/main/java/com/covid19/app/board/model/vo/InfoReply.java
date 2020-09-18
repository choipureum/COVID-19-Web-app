package com.covid19.app.board.model.vo;

import java.util.Date;

public class InfoReply {


	private String reply_idx;
	private int info_idx;
	private String reply_Parentidx;
	private String depth;
	private String reply_content;
	private String reply_writer;
	private String reg_date;
	private String reg_Modify;
	@Override
	public String toString() {
		return "InfoReply [reply_idx=" + reply_idx + ", info_idx=" + info_idx + ", reply_Parentidx=" + reply_Parentidx
				+ ", depth=" + depth + ", reply_content=" + reply_content + ", reply_writer=" + reply_writer
				+ ", reg_date=" + reg_date + ", reg_Modify=" + reg_Modify + "]";
	}
	public String getReply_idx() {
		return reply_idx;
	}
	public void setReply_idx(String reply_idx) {
		this.reply_idx = reply_idx;
	}
	public int getInfo_idx() {
		return info_idx;
	}
	public void setInfo_idx(int info_idx) {
		this.info_idx = info_idx;
	}
	public String getReply_Parentidx() {
		return reply_Parentidx;
	}
	public void setReply_Parentidx(String reply_Parentidx) {
		this.reply_Parentidx = reply_Parentidx;
	}
	public String getDepth() {
		return depth;
	}
	public void setDepth(String depth) {
		this.depth = depth;
	}
	public String getReply_content() {
		return reply_content;
	}
	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}
	public String getReply_writer() {
		return reply_writer;
	}
	public void setReply_writer(String reply_writer) {
		this.reply_writer = reply_writer;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getReg_Modify() {
		return reg_Modify;
	}
	public void setReg_Modify(String reg_Modify) {
		this.reg_Modify = reg_Modify;
	}
	
	
	
}
