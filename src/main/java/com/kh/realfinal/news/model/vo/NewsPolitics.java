package com.kh.realfinal.news.model.vo;

public class NewsPolitics {
	private String title; 		// 제목
	private String link;  		// 뉴스 링크
	private String pubdate;		// 작성일
	private String description;	// 기사 요약
	private String image;		// 뉴스 썸네일

	public NewsPolitics() {
		super();
	}

	public NewsPolitics(String title, String link, String pubdate, String description, String image) {
	this.title = title;
    this.link = link;
    this.pubdate = pubdate;
    this.description = description;
    this.image = image;
	}
	
	@Override
	public String toString() {
		return "NewsEconomy [title=" + title + ", link=" + link + ", pubdate=" + pubdate + ", description="
				+ description + ", image=" + image + "]";
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getPubdate() {
		return pubdate;
	}

	public void setPubdate(String pubdate) {
		this.pubdate = pubdate;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getDescription() {
		return description;
	}


	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
}