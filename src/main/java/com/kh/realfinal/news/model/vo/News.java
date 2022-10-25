package com.kh.realfinal.news.model.vo;

import java.util.List;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class News {
	private int newsNo;
	private String title; 		// 제목
	private String link;  		// 기사 링크
	private String pubDate;		// 작성일
	private String description;	// 기사 요약
	private String image;		// 기사 이미지
	private String category;	// 기사 분류
	private int hit;
	private int rownum;
	private int reply_cnt;
	private List<NewsReply> replies;
	private String user_id;
	
	public News(int newsNo, String title, String link, String pubDate, String description, String image, String category) {
		this.newsNo = newsNo;
		this.title = title;
		this.link = link;
		this.pubDate = pubDate;
		this.description = description;
		this.image = image;
		this.category = category;
	}
}