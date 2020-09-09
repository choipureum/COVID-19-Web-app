package com.covid19.app.admin.login.vo;

public class CovidPat {

	private int patNo;
	private String patName;
	private String patLoc;
	private String patTime;
	private int patTrt;
	private int patDie;
	private int patAge;
	private String patSex;
	private String patRoute;
	public int getPatNo() {
		return patNo;
	}
	public void setPatNo(int patNo) {
		this.patNo = patNo;
	}
	public String getPatName() {
		return patName;
	}
	public void setPatName(String patName) {
		this.patName = patName;
	}
	public String getPatLoc() {
		return patLoc;
	}
	public void setPatLoc(String patLoc) {
		this.patLoc = patLoc;
	}
	public String getPatTime() {
		return patTime;
	}
	public void setPatTime(String patTime) {
		this.patTime = patTime;
	}
	public int getPatTrt() {
		return patTrt;
	}
	public void setPatTrt(int patTrt) {
		this.patTrt = patTrt;
	}
	public int getPatDie() {
		return patDie;
	}
	public void setPatDie(int patDie) {
		this.patDie = patDie;
	}
	public int getPatAge() {
		return patAge;
	}
	public void setPatAge(int patAge) {
		this.patAge = patAge;
	}
	public String getPatSex() {
		return patSex;
	}
	public void setPatSex(String patSex) {
		this.patSex = patSex;
	}
	public String getPatRoute() {
		return patRoute;
	}
	public void setPatRoute(String patRoute) {
		this.patRoute = patRoute;
	}
	
	@Override
	public String toString() {
		return "TestVo [patNo=" + patNo + ", patName=" + patName + ", patLoc=" + patLoc + ", patTime=" + patTime
				+ ", patTrt=" + patTrt + ", patDie=" + patDie + ", patAge=" + patAge + ", patSex=" + patSex
				+ ", patRoute=" + patRoute + "]";
	}
	
	
	
}
