package com.kh.realfinal.politics.model.vo;
 
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class LawProposed {

	private int lawNo;           // 의안번호
	private int billNo;           // 의안번호
	private String rstProposer;     // 이름
	private int age;             // 대수
	private String billName;        // 의안명
	private String proposer;        // 제안자
	private String committee;       // 소관위원회
	private String proposeDt;       // 제안일
	private String procResult;      // 처리상태
	private String detailLink;      // 상세페이지
 
}
 