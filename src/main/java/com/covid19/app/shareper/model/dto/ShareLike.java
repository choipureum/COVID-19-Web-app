package com.covid19.app.shareper.model.dto;

import java.sql.Date;

public class ShareLike {

	
	private int sharelike_id;
	private int share_idx;
	private String member_id;
	private int like_check;
	private String shareName; //상품명
	private Date shareDate;  //상품만료날짜
	private String shareMoney;//상품전체가격
	private int sharedDay;//만료날짜
	private int money;
	private int goods_idx;
	public int getGoods_idx() {
		return goods_idx;
	}
	public void setGoods_idx(int goods_idx) {
		this.goods_idx = goods_idx;
	}
	public int getSharelike_id() {
		return sharelike_id;
	}
	public void setSharelike_id(int sharelike_id) {
		this.sharelike_id = sharelike_id;
	}
	public int getShare_idx() {
		return share_idx;
	}
	public void setShare_idx(int share_idx) {
		this.share_idx = share_idx;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getLike_check() {
		return like_check;
	}
	public void setLike_check(int like_check) {
		this.like_check = like_check;
	}
	public String getShareName() {
		return shareName;
	}
	public void setShareName(String shareName) {
		this.shareName = shareName;
	}
	public Date getShareDate() {
		return shareDate;
	}
	public void setShareDate(Date shareDate) {
		this.shareDate = shareDate;
	}
	public String getShareMoney() {
		return shareMoney;
	}
	public void setShareMoney(String shareMoney) {
		this.shareMoney = shareMoney;
	}
	public int getSharedDay() {
		return sharedDay;
	}
	public void setSharedDay(int sharedDay) {
		this.sharedDay = sharedDay;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	@Override
	public String toString() {
		return "ShareLike [sharelike_id=" + sharelike_id + ", share_idx=" + share_idx + ", member_id=" + member_id
				+ ", like_check=" + like_check + ", shareName=" + shareName + ", shareDate=" + shareDate
				+ ", shareMoney=" + shareMoney + ", sharedDay=" + sharedDay + ", money=" + money + "]";
	}
	

	
}