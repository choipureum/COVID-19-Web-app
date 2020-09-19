package com.covid19.app.shareper.model.dto;

public class Goods {
	private int goods_Idx;
	private int share_Idx;
	private String goods_Price;
	private String goods_Name;
	private int goods_Stock;
	@Override
	public String toString() {
		return "Goods [goods_Idx=" + goods_Idx + ", share_Idx=" + share_Idx + ", goods_Price=" + goods_Price
				+ ", goods_Name=" + goods_Name + ", goods_Stock=" + goods_Stock + "]";
	}
	public int getGoods_Idx() {
		return goods_Idx;
	}
	public void setGoods_Idx(int goods_Idx) {
		this.goods_Idx = goods_Idx;
	}
	public int getShare_Idx() {
		return share_Idx;
	}
	public void setShare_Idx(int share_Idx) {
		this.share_Idx = share_Idx;
	}
	public String getGoods_Price() {
		return goods_Price;
	}
	public void setGoods_Price(String goods_Price) {
		this.goods_Price = goods_Price;
	}
	public String getGoods_Name() {
		return goods_Name;
	}
	public void setGoods_Name(String goods_Name) {
		this.goods_Name = goods_Name;
	}
	public int getGoods_Stock() {
		return goods_Stock;
	}
	public void setGoods_Stock(int goods_Stock) {
		this.goods_Stock = goods_Stock;
	}
	}
