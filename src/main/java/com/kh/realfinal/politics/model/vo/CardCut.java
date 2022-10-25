package com.kh.realfinal.politics.model.vo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data 
@NoArgsConstructor
@AllArgsConstructor
public class CardCut {

	private int cardCutNo; 			  // 번호
	private String title;	 		  // 뉴스 제목
	private String link; 			  // 뉴스 실제 링크
	private String descriptionOrigin; // 설명글 원본
	private List<String> images;	  // 설명글에서 이미지만 파싱한 list
	private String content; 		  // 설명글에서 이미지 제외한 실제 기사글
	private Date pubDate; 			  // 작성일
	private List<CardCutReply> replies; //댓글리스트 가져오기? 수업코드에 있어서 가져옴
	private int replyCnt;            //댓글리스트 가져오기? 수업코드에 있어서 가져옴
}

 