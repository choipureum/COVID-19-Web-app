package com.covid19.app.admin.login.vo;

import java.sql.Date;


public class AdMemberList {

	private int member_No;
    private String member_Id;
    private String member_Pw;
    private String member_Email;
    private String member_Tell;
    private String member_Name;
    private String member_Nick;
    private String member_Add;
    private int member_Auth;
    private Date member_Date;
    private String member_Rank;
    private int member_Point;
	public int getMember_No() {
		return member_No;
	}
	public void setMember_No(int member_No) {
		this.member_No = member_No;
	}
	public String getMember_Id() {
		return member_Id;
	}
	public void setMember_Id(String member_Id) {
		this.member_Id = member_Id;
	}
	public String getMember_Pw() {
		return member_Pw;
	}
	public void setMember_Pw(String member_Pw) {
		this.member_Pw = member_Pw;
	}
	public String getMember_Email() {
		return member_Email;
	}
	public void setMember_Email(String member_Email) {
		this.member_Email = member_Email;
	}
	public String getMember_Tell() {
		return member_Tell;
	}
	public void setMember_Tell(String member_Tell) {
		this.member_Tell = member_Tell;
	}
	public String getMember_Name() {
		return member_Name;
	}
	public void setMember_Name(String member_Name) {
		this.member_Name = member_Name;
	}
	public String getMember_Nick() {
		return member_Nick;
	}
	public void setMember_Nick(String member_Nick) {
		this.member_Nick = member_Nick;
	}
	public String getMember_Add() {
		return member_Add;
	}
	public void setMember_Add(String member_Add) {
		this.member_Add = member_Add;
	}
	public int getMember_Auth() {
		return member_Auth;
	}
	public void setMember_Auth(int member_Auth) {
		this.member_Auth = member_Auth;
	}
	public Date getMember_Date() {
		return member_Date;
	}
	public void setMember_Date(Date member_Date) {
		this.member_Date = member_Date;
	}
	public String getMember_Rank() {
		return member_Rank;
	}
	public void setMember_Rank(String member_Rank) {
		this.member_Rank = member_Rank;
	}
	public int getMember_Point() {
		return member_Point;
	}
	public void setMember_Point(int member_Point) {
		this.member_Point = member_Point;
	}
	@Override
	public String toString() {
		return "AdMemberList [member_No=" + member_No + ", member_Id=" + member_Id + ", member_Pw=" + member_Pw
				+ ", member_Email=" + member_Email + ", member_Tell=" + member_Tell + ", member_Name=" + member_Name
				+ ", member_Nick=" + member_Nick + ", member_Add=" + member_Add + ", member_Auth=" + member_Auth
				+ ", member_Date=" + member_Date + ", member_Rank=" + member_Rank + ", member_Point=" + member_Point
				+ "]";
	}
    
    
    
}
