package com.kh.realfinal.apply.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RemndrMdl {
	private String	pblanc_no	            ; // 공고번호
	private int		house_manage_no	        ; // 주택관리번호
	private int 	model_no				; // 모델번호
	private String 	house_ty				; // 모델타입
	private String 	supply_ar				; // 공급면적
	private String 	suply_hshldco			; // 일반공급세대수
	private String 	spsply_hshldco			; // 특별공급세대수
	private String 	lttot_top_amount		; // 공급금액 (분양최고금액)
	
}
	