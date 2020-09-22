package com.covid19.app.board.model.vo;

import java.util.Date;

public class InfoShare {

	private String member_rank; //회원 등급
	private int info_idx; //게시글 번호
	private String info_writer; //게시글 작성자
	private String info_title; //게시글 제목
	private String info_content; //게시글 내용
	private Date info_date; //게시글 작성일자
	private int info_hits; //게시글 조회 수
	private int recnt; //게시글 댓글 수
	@Override
	public String toString() {
		return "InfoShare [member_rank=" + member_rank + ", info_idx=" + info_idx + ", info_writer=" + info_writer
				+ ", info_title=" + info_title + ", info_content=" + info_content + ", info_date=" + info_date
				+ ", info_hits=" + info_hits + ", recnt=" + recnt + "]";
	}
	public String getMember_rank() {
		return member_rank;
	}
	public void setMember_rank(String member_rank) {
		this.member_rank = member_rank;
	}
	public int getInfo_idx() {
		return info_idx;
	}
	public void setInfo_idx(int info_idx) {
		this.info_idx = info_idx;
	}
	public String getInfo_writer() {
		return info_writer;
	}
	public void setInfo_writer(String info_writer) {
		this.info_writer = info_writer;
	}
	public String getInfo_title() {
		return info_title;
	}
	public void setInfo_title(String info_title) {
		this.info_title = info_title;
	}
	public String getInfo_content() {
		return info_content;
	}
	public void setInfo_content(String info_content) {
		this.info_content = info_content;
	}
	public Date getInfo_date() {
		return info_date;
	}
	public void setInfo_date(Date info_date) {
		this.info_date = info_date;
	}
	public int getInfo_hits() {
		return info_hits;
	}
	public void setInfo_hits(int info_hits) {
		this.info_hits = info_hits;
	}
	public int getRecnt() {
		return recnt;
	}
	public void setRecnt(int recnt) {
		this.recnt = recnt;
	}
	

	
	
}
