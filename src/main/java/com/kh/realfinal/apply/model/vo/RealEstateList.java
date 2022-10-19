package com.kh.realfinal.apply.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RealEstateList {
	private int		house_manage_no	        ; // 주택관리번호
	private String 	house_secd_nm			; // 주택구분코드명
	private String 	house_nm				; // 주택명
	private String	hssply_adres	        ; // 주소
	private String	rcrit_pblanc_de	        ; // 모집공고일
	private String  local_nm				; // 지역명
	private String  type                    ; //??
}
   