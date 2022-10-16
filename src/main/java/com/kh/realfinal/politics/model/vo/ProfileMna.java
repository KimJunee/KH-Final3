package com.kh.realfinal.politics.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
 
@Data 
@NoArgsConstructor
@AllArgsConstructor
public class ProfileMna {
	private int no; 			// 번호
	private String hgNm;        // 이름
	private String units;       // 대수
	private String sexGbnNm;    // 성별
	private String hjNm;        // 한자명
	private String engNm;       // 영문명칭
	private String bthDate;     // 생년월일
	private String polyNm;      // 정당명
	private String origNm;      // 지역
	private String electGbnNm;  // 선거구구분
	private String cmits;       // 소속위원회
	private String reeleGbnNm;  // 당선횟수
	private String telNo;       // 전화번호
	private String email;       // 이메일
	private String homepage;    // 홈페이지
	private String staff;       // 보좌관
	private String secretary;   // 선임비서관
	private String secretary2;  // 비서관
	private String assemAddr;   // 의원실안내
	private String memTitle;    // 주요약력
	private String jpglink;    // 주요약력
	
	// 경력은 임의로 출력 X 너무 길다.
	public String toString2() {
		return "ProfileMna [hgNm=" + hgNm + ", units=" + units + ", sexGbnNm=" + sexGbnNm + ", hjNm=" + hjNm
				+ ", engNm=" + engNm + ", bthDate=" + bthDate + ", polyNm=" + polyNm + ", origNm=" + origNm
				+ ", electGbnNm=" + electGbnNm + ", cmits=" + cmits + ", reeleGbnNm=" + reeleGbnNm + ", telNo=" + telNo
				+ ", email=" + email + ", homepage=" + homepage + ", staff=" + staff + ", secretary=" + secretary
				+ ", secretary2=" + secretary2 + ", assemAddr=" + assemAddr + "]";
	}
	
	
}

/*
CREATE TABLE MNA_PROFILE (
        MNA_PROFILE_NO NUMBER PRIMARY KEY, -- 국회의원 번호
        HG_NM	VARCHAR2(200),	 --	이름
        UNITS	VARCHAR2(200),	    --	대수
        SEX_GBN_NM	VARCHAR2(100),	--	성별
        HJ_NM	VARCHAR2(200),	    --	한자명
        ENG_NM	VARCHAR2(200),	    --	영문명칭
        BTH_DATE	DATE,       	--	생년월일
        POLY_NM	VARCHAR2(200),	    --	정당명
        ORIG_NM	VARCHAR2(200),	    --	지역
        ELECT_GBN_NM	VARCHAR2(200),	--	선거구구분
        CMITS	VARCHAR2(1000),  	--	소속위원회
        REELE_GBN_NM	VARCHAR2(200),	--	당선횟수
        TEL_NO	VARCHAR2(200),	    --	전화번호
        E_MAIL	VARCHAR2(1000), 	--	이메일
        HOMEPAGE	VARCHAR2(1000),	--	홈페이지
        STAFF	VARCHAR2(1000), 	--	보좌관
        SECRETARY	VARCHAR2(1000),	--	선임비서관
        SECRETARY2	VARCHAR2(1000),	--	비서관
        ASSEM_ADDR	VARCHAR2(1000),	--	의원실안내
        MEM_TITLE	VARCHAR2(3000), --	주요약력
        JPGLINK	    VARCHAR2(2000)	 -- 국회의원 프로필 사진
);
 */