package com.kh.realfinal.apply.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UrbtyMdl {
	private String	pblanc_no	            ; // 공고번호
	private String	house_manage_no	        ; // 주택관리번호
	private String 	model_no				; // 모델번호
	private String 	gp						; // 군
	private String 	tp						; // 타입
	private String 	excluse_ar				; // 전용면적
	private String 	suply_hshldco			; // 공급세대수
	private String 	suply_amount			; // 공급금액 (분양최고금액) (단위:만원)
	private String 	subscrpt_reqst_amount	; // 청약신청금 (단위:만원)
	
}

