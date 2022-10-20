package com.kh.realfinal.news.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class News {
	private int newsNo;
	private String title; 		// 제목
	private String link;  		// 기사 링크
	private String pubdate;		// 작성일
	private String description;	// 기사 요약
	private String image;		// 기사 이미지
	private String category;	// 기사 분류
}

