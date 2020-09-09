package com.covid19.app.coronaNews.model.vo;

public class FactCheck {

	private int fcIdx;
	private String fcTitle;
	private String fcWriter;
	private String fcRegDate;
	private String fcContents;
	@Override
	public String toString() {
		return "FactCheck [fcIdx=" + fcIdx + ", fcTitle=" + fcTitle + ", fcWriter=" + fcWriter + ", fcRegDate="
				+ fcRegDate + ", fcContents=" + fcContents + "]";
	}
	public int getFcIdx() {
		return fcIdx;
	}
	public void setFcIdx(int fcIdx) {
		this.fcIdx = fcIdx;
	}
	public String getFcTitle() {
		return fcTitle;
	}
	public void setFcTitle(String fcTitle) {
		this.fcTitle = fcTitle;
	}
	public String getFcWriter() {
		return fcWriter;
	}
	public void setFcWriter(String fcWriter) {
		this.fcWriter = fcWriter;
	}
	public String getFcRegDate() {
		return fcRegDate;
	}
	public void setFcRegDate(String fcRegDate) {
		this.fcRegDate = fcRegDate;
	}
	public String getFcContents() {
		return fcContents;
	}
	public void setFcContents(String fcContents) {
		this.fcContents = fcContents;
	}
	
}
