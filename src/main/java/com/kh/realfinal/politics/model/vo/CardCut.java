package com.kh.realfinal.politics.model.vo;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data 
@NoArgsConstructor
@AllArgsConstructor
public class CardCut {

	private int cardCutNo;
	private String title; // 뉴스 제목
	private String link; // 뉴스 실제 링크
	private String descriptionOrigin; // 설명글 원본
	private List<String> images; // 설명글에서 이미지만 파싱한 list
	private String content; // 설명글에서 이미지 제외한 실제 기사글
	private Date pubDate; // 작성일
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