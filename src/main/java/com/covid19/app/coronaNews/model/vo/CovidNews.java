package com.covid19.app.coronaNews.model.vo;


public class CovidNews {

	private int news_idx;
	private String newsTitle;
	private String thumbNail;
	private String newsContents;
	private String link;
	private String regDate;
	private int company;
	@Override
	public String toString() {
		return "CovidNews [news_idx=" + news_idx + ", newsTitle=" + newsTitle + ", thumbNail=" + thumbNail
				+ ", newsContents=" + newsContents + ", link=" + link + ", regDate=" + regDate + ", company=" + company
				+ "]";
	}
	public int getNews_idx() {
		return news_idx;
	}
	public void setNews_idx(int news_idx) {
		this.news_idx = news_idx;
	}
	public String getNewsTitle() {
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	public String getThumbNail() {
		return thumbNail;
	}
	public void setThumbNail(String thumbNail) {
		this.thumbNail = thumbNail;
	}
	public String getNewsContents() {
		return newsContents;
	}
	public void setNewsContents(String newsContents) {
		this.newsContents = newsContents;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public int getCompany() {
		return company;
	}
	public void setCompany(int company) {
		this.company = company;
	}
	

	
	
	
	
	
	
}
