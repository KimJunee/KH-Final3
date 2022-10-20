package com.kh.realfinal.news.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Opinion {
	private int opinionNo;
	private String title; 		// 제목
	private String link;  		// 사설 링크
	private String pubdate;		// 작성일
	private String description;	// 사설 요약
	private String image;		// 사설 이미지
}