package com.covid19.app.admin.login.vo;

import java.sql.Date;

public class CovidPat {

	private int pat_No;
	private String pat_Name;
	private String pat_Loc;
	private Date pat_Time;
	private int pat_Age;
	private String pat_Sex;
	private String pat_Route;
	private int pat_Trt_Sw;
	private int pat_Die_Sw;
	
	public int getPat_No() {
		return pat_No;
	}
	public void setPat_No(int pat_No) {
		this.pat_No = pat_No;
	}
	public String getPat_Name() {
		return pat_Name;
	}
	public void setPat_Name(String pat_Name) {
		this.pat_Name = pat_Name;
	}
	public String getPat_Loc() {
		return pat_Loc;
	}
	public void setPat_Loc(String pat_Loc) {
		this.pat_Loc = pat_Loc;
	}
	public Date getPat_Time() {
		return pat_Time;
	}
	public void setPat_Time(Date pat_Time) {
		this.pat_Time = pat_Time;
	}
	public int getPat_Age() {
		return pat_Age;
	}
	public void setPat_Age(int pat_Age) {
		this.pat_Age = pat_Age;
	}
	public String getPat_Sex() {
		return pat_Sex;
	}
	public void setPat_Sex(String pat_Sex) {
		this.pat_Sex = pat_Sex;
	}
	public String getPat_Route() {
		return pat_Route;
	}
	public void setPat_Route(String pat_Route) {
		this.pat_Route = pat_Route;
	}
	public int getPat_Trt_Sw() {
		return pat_Trt_Sw;
	}
	public void setPat_Trt_Sw(int pat_Trt_Sw) {
		this.pat_Trt_Sw = pat_Trt_Sw;
	}
	public int getPat_Die_Sw() {
		return pat_Die_Sw;
	}
	public void setPat_Die_Sw(int pat_Die_Sw) {
		this.pat_Die_Sw = pat_Die_Sw;
	}
	@Override
	public String toString() {
		return "CovidPatVO [pat_No=" + pat_No + ", pat_Name=" + pat_Name + ", pat_Loc=" + pat_Loc + ", pat_Time="
				+ pat_Time + ", pat_Age=" + pat_Age + ", pat_Sex=" + pat_Sex + ", pat_Route=" + pat_Route
				+ ", pat_Trt_Sw=" + pat_Trt_Sw + ", pat_Die_Sw=" + pat_Die_Sw + "]";
	}	
	
	
	
}
