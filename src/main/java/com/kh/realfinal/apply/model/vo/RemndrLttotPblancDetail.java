package com.kh.realfinal.apply.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RemndrLttotPblancDetail {
	private String	house_manage_no	        ; // 주택관리번호
	private String	pblanc_no	            ; // 공고번호
	private String 	house_nm				; // 주택명
	private String 	house_secd				; // 주택구분코드
	private String 	house_secd_nm			; // 주택구분코드명
	private String	hssply_zip	            ; // 공급위치 우편번호
	private String	hssply_adres	        ; // 주소
	private String	tot_suply_hshldco	    ; // 공급규모
	private String	rcrit_pblanc_de	        ; // 모집공고일
	private String	subscrpt_rcept_bgnde     ; // 청약접수시작일
	private String	subscrpt_rcept_endde     ; // 청약접수종료일
	private String	spsply_rcept_bgnde	    ; // 특별공급접수시작일
	private String	spsply_rcept_endde	    ; // 특별공급접수종료일
	private String	gnrl_rcept_rcptde	    ; // 일반공급접수시작일
	private String	gnrl_rcept_endde	    ; // 일반공급접수종료일
	private String	przwner_presnatn_de	    ; // 당첨자발표일
	private String	cntrct_cncls_bgnde	    ; // 계약시작일
	private String	cntrct_cncls_endde	    ; // 계약종료일
	private String	hmpg_adres	            ; // 홈페이지주소
	private String	bsns_mby_nm	            ; // 사업주체명
	private String	mdhs_telno		        ; // 문의처
	private String	mvn_prearnge_ym	        ; // 입주예정월	
	
 	private String subscrpt_area_code_nm;	// 지역명
}

		