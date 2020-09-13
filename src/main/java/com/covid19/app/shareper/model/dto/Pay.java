package com.covid19.app.shareper.model.dto;

public class Pay {
private int pay_idx;
private String member_id;
private int share_idx;
private int payment;
private String pay_day;
private String goods_name;
public int getPay_idx() {
	return pay_idx;
}
public void setPay_idx(int pay_idx) {
	this.pay_idx = pay_idx;
}
public String getGoods_name() {
	return goods_name;
}
public void setGoods_name(String good_name) {
	this.goods_name = good_name;
}
public String getMember_id() {
	return member_id;
}
public void setMember_id(String member_id) {
	this.member_id = member_id;
}
public int getShare_idx() {
	return share_idx;
}
public void setShare_idx(int share_idx) {
	this.share_idx = share_idx;
}
public int getPayment() {
	return payment;
}
public void setPayment(int payment) {
	this.payment = payment;
}
public String getPay_day() {
	return pay_day;
}
public void setPay_day(String pay_day) {
	this.pay_day = pay_day;
}
@Override
public String toString() {
	return "Pay [pay_idx=" + pay_idx + ", member_id=" + member_id + ", share_idx=" + share_idx + ", payment=" + payment
			+ ", pay_day=" + pay_day + ", good_name=" + goods_name + "]";
}
}
