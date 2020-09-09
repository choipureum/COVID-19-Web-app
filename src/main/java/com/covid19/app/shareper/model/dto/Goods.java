package com.covid19.app.shareper.model.dto;

public class Goods {
	private String price;
	private String goodsName;
	private int goodsStock;
	@Override
	public String toString() {
		return "Goods [price=" + price + ", goodsName=" + goodsName + ", goodsStock=" + goodsStock + "]";
	}
	public int getGoodsStock() {
		return goodsStock;
	}
	public void setGoodsStock(int goodsStock) {
		this.goodsStock = goodsStock;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
}
