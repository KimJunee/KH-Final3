package com.kh.realfinal.politics.model.vo;
 
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class LawProposed {

	private int billNo;                 // 번호
	private String rstProposer;     // 이름
	private int age;             // 대수
	private String billName;        // 의안명
	private String proposer;        // 제안자
	private String committee;       // 소관위원회
	private String proposeDt;       // 제안일
	private String procResult;      // 처리상태
	private String detailLink;      // 상세페이지
 
}

/*
DROP TABLE MNA_LEGISLATION;
CREATE TABLE MNA_LEGISLATION (
        BILL_NO	NUMBER PRIMARY KEY,	--	의안번호
        RST_PROPOSER VARCHAR2(200),	--	이름
        AGE	VARCHAR2(200),      	--	대수
        BILL_NAME	VARCHAR2(100),	--	의안명
        PROPOSER	VARCHAR2(200),	--	제안자
        COMMITTEE	VARCHAR2(200),	--	소관위원회
        PROPOSE_DT	VARCHAR2(200),	--	제안일
        PROC_RESULT	DATE,       	--	처리상태
        DETAIL_LINK	VARCHAR2(2000)	--	상세페이지
);
*/