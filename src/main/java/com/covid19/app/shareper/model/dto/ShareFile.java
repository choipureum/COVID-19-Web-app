package com.covid19.app.shareper.model.dto;

import java.sql.Date;

public class ShareFile {

	private int fidx;
	private int shareidx;
	private String originfile;
	private String renamefile;
	private String savepath;
	private Date reg_date;
	@Override
	public String toString() {
		return "ShareFile [fidx=" + fidx + ", shareidx=" + shareidx + ", originfile=" + originfile + ", renamefile="
				+ renamefile + ", savepath=" + savepath + ", reg_date=" + reg_date + "]";
	}
	public int getFidx() {
		return fidx;
	}
	public void setFidx(int fidx) {
		this.fidx = fidx;
	}
	public int getShareidx() {
		return shareidx;
	}
	public void setShareidx(int shareidx) {
		this.shareidx = shareidx;
	}
	public String getOriginfile() {
		return originfile;
	}
	public void setOriginfile(String originfile) {
		this.originfile = originfile;
	}
	public String getRenamefile() {
		return renamefile;
	}
	public void setRenamefile(String renamefile) {
		this.renamefile = renamefile;
	}
	public String getSavepath() {
		return savepath;
	}
	public void setSavepath(String savepath) {
		this.savepath = savepath;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	
	
	
	
	
	
}
