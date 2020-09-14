package com.covid19.app.member.model.vo;

import java.sql.Date;

public class Member {
	
	private String member_id;
	private String member_pw;
	private String member_email;
	private String member_tell;
	private String member_name;
	private String member_birth;

	private String member_nick;
	private String member_add;
	private String member_auth;
	private Date member_date;
	private String member_rank;
	private int member_point;
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_tell() {
		return member_tell;
	}
	public void setMember_tell(String member_tell) {
		this.member_tell = member_tell;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_birth() {
		return member_birth;
	}
	public void setMember_birth(String member_birth) {
		this.member_birth = member_birth;
	}
	public String getMember_nick() {
		return member_nick;
	}
	public void setMember_nick(String member_nick) {
		this.member_nick = member_nick;
	}
	public String getMember_add() {
		return member_add;
	}
	public void setMember_add(String member_add) {
		this.member_add = member_add;
	}
	public String getMember_auth() {
		return member_auth;
	}
	public void setMember_auth(String member_auth) {
		this.member_auth = member_auth;
	}
	public Date getMember_date() {
		return member_date;
	}
	public void setMember_date(Date member_date) {
		this.member_date = member_date;
	}
	public String getMember_rank() {
		return member_rank;
	}
	public void setMember_rank(String member_rank) {
		this.member_rank = member_rank;
	}
	public int getMember_point() {
		return member_point;
	}
	public void setMember_point(int member_point) {
		this.member_point = member_point;
	}
	@Override
	public String toString() {
		return "Member [member_id=" + member_id + ", member_pw=" + member_pw + ", member_email=" + member_email
				+ ", member_tell=" + member_tell + ", member_name=" + member_name + ", member_birth=" + member_birth
				+ ", member_nick=" + member_nick + ", member_add=" + member_add + ", member_auth=" + member_auth
				+ ", member_date=" + member_date + ", member_rank=" + member_rank + ", member_point=" + member_point
				+ "]";
	}
	
}
