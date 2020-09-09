package com.covid19.app.shareper.model.dto;

public class Thumb {

	private int t_idx;
	private int shareidx;
	private String originfile;
	private String renamefile;
	private String savepath;
	@Override
	public String toString() {
		return "Thumb [t_idx=" + t_idx + ", shareidx=" + shareidx + ", originfile=" + originfile + ", renamefile="
				+ renamefile + ", savepath=" + savepath + "]";
	}
	public int getT_idx() {
		return t_idx;
	}
	public void setT_idx(int t_idx) {
		this.t_idx = t_idx;
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
	
	
	
	
}
