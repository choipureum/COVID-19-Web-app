package com.covid19.app.coronaNews.model.vo;

public class FactCheck {

	private int fc_idx;
	private String fc_title;
	private String fc_writer;
	private String fc_regDate;
	private String fc_contents;
	private int division;
	private String RENAME_FILE_NAME;
	private String ORIGIN_FILE_NAME;
	@Override
	public String toString() {
		return "FactCheck [fc_idx=" + fc_idx + ", fc_title=" + fc_title + ", fc_writer=" + fc_writer + ", fc_regDate="
				+ fc_regDate + ", fc_contents=" + fc_contents + ", division=" + division + ", RENAME_FILE_NAME="
				+ RENAME_FILE_NAME + ", ORIGIN_FILE_NAME=" + ORIGIN_FILE_NAME + "]";
	}
	public int getFc_idx() {
		return fc_idx;
	}
	public void setFc_idx(int fc_idx) {
		this.fc_idx = fc_idx;
	}
	public String getFc_title() {
		return fc_title;
	}
	public void setFc_title(String fc_title) {
		this.fc_title = fc_title;
	}
	public String getFc_writer() {
		return fc_writer;
	}
	public void setFc_writer(String fc_writer) {
		this.fc_writer = fc_writer;
	}
	public String getFc_regDate() {
		return fc_regDate;
	}
	public void setFc_regDate(String fc_regDate) {
		this.fc_regDate = fc_regDate;
	}
	public String getFc_contents() {
		return fc_contents;
	}
	public void setFc_contents(String fc_contents) {
		this.fc_contents = fc_contents;
	}
	public int getDivision() {
		return division;
	}
	public void setDivision(int division) {
		this.division = division;
	}
	public String getRENAME_FILE_NAME() {
		return RENAME_FILE_NAME;
	}
	public void setRENAME_FILE_NAME(String rENAME_FILE_NAME) {
		RENAME_FILE_NAME = rENAME_FILE_NAME;
	}
	public String getORIGIN_FILE_NAME() {
		return ORIGIN_FILE_NAME;
	}
	public void setORIGIN_FILE_NAME(String oRIGIN_FILE_NAME) {
		ORIGIN_FILE_NAME = oRIGIN_FILE_NAME;
	}

	
}
