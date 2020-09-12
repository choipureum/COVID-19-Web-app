package com.covid19.app.board.model.vo;

import java.util.Date;

public class Faq {

	private int faq_idx;
	private String faq_title;
	private String faq_content;
	private String faq_category;
	@Override
	public String toString() {
		return "Faq [faq_idx=" + faq_idx + ", faq_title=" + faq_title + ", faq_content=" + faq_content
				+ ", faq_category=" + faq_category + "]";
	}
	public int getFaq_idx() {
		return faq_idx;
	}
	public void setFaq_idx(int faq_idx) {
		this.faq_idx = faq_idx;
	}
	public String getFaq_title() {
		return faq_title;
	}
	public void setFaq_title(String faq_title) {
		this.faq_title = faq_title;
	}
	public String getFaq_content() {
		return faq_content;
	}
	public void setFaq_content(String faq_content) {
		this.faq_content = faq_content;
	}
	public String getFaq_category() {
		return faq_category;
	}
	public void setFaq_category(String faq_category) {
		this.faq_category = faq_category;
	}
	
	
}
