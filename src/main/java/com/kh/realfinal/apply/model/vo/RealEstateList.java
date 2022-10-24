package com.kh.realfinal.apply.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RealEstateList {
	private int		house_manage_no	        ; // 주택관리번호
	private String 	house_secd_nm			; // 주택구분코드명, 아파트, 도시형/오피스텔/민간임대, 무순위/잔여세대
	private String 	house_nm				; // 주택명
	private String	hssply_adres	        ; // 주소
	private String	rcrit_pblanc_de	        ; // 모집공고일
	private String  subscrpt_area_code_nm	; // 지역명
	private String  hmpg_adres				; // 홈페이지
	private String  type                    ; // HOUSE_SECD 02:도시형/오피스텔/민간임대 04:무순위/잔여세대 
}
   