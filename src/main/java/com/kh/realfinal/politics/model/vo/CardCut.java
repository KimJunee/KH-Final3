package com.kh.realfinal.politics.model.vo;

import java.util.Date;
import java.util.List;

public class CardCut {
	private String title; // 뉴스 제목
	private String link; // 뉴스 실제 링크
	private String descriptionOrigin; // 설명글 원본
	private List<String> images; // 설명글에서 이미지만 파싱한 list
	private String content; // 설명글에서 이미지 제외한 실제 기사글
	private Date pubDate; // 작성일

	public CardCut() {
		super();
	}

	public CardCut(String title, String link, String descriptionOrigin, List<String> images, String content,
			Date pubDate) {
		super();
		this.title = title;
		this.link = link;
		this.descriptionOrigin = descriptionOrigin;
		this.images = images;
		this.content = content;
		this.pubDate = pubDate;
	}

	@Override
	public String toString() {
		return "News [title=" + title + ", link=" + link + ", descriptionOrigin=" + descriptionOrigin + ", images="
				+ images + ", content=" + content + ", pubDate=" + pubDate + "]";
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

	public String getDescriptionOrigin() {
		return descriptionOrigin;
	}

	public void setDescriptionOrigin(String descriptionOrigin) {
		this.descriptionOrigin = descriptionOrigin;
	}

	public List<String> getImages() {
		return images;
	}

	public void setImages(List<String> images) {
		this.images = images;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getPubDate() {
		return pubDate;
	}

	public void setPubDate(Date pubDate) {
		this.pubDate = pubDate;
	}

}


/*
DROP TABLE CARDCUT;
CREATE TABLE CARDCUT (
	TITLE	VARCHAR2(200),		-- 뉴스이름
    LINK	VARCHAR2(300),		-- 뉴스링크
	PUBDATE	VARCHAR2(100),		-- 뉴스일자
	DESCRIPTION	CLOB		    -- 뉴스내용
);
*/