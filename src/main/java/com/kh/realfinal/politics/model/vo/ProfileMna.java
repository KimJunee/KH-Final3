package com.kh.realfinal.politics.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
 
@Data 
@NoArgsConstructor
@AllArgsConstructor
public class ProfileMna {
	private String hgNm;
	private String units;
	private String sexGbnNm;
	private String hjNm;
	private String engNm;
	private String bthDate;
	private String polyNm;
	private String origNm;
	private String electGbnNm;
	private String cmits;
	private String reeleGbnNm;
	private String telNo;
	private String email;
	private String homepage;
	private String staff;
	private String secretary;
	private String secretary2;
	private String assemAddr;
	private String memTitle;
	
	// 경력은 임의로 출력 X 너무 길다.
	public String toString2() {
		return "ProfileMna [hgNm=" + hgNm + ", units=" + units + ", sexGbnNm=" + sexGbnNm + ", hjNm=" + hjNm
				+ ", engNm=" + engNm + ", bthDate=" + bthDate + ", polyNm=" + polyNm + ", origNm=" + origNm
				+ ", electGbnNm=" + electGbnNm + ", cmits=" + cmits + ", reeleGbnNm=" + reeleGbnNm + ", telNo=" + telNo
				+ ", email=" + email + ", homepage=" + homepage + ", staff=" + staff + ", secretary=" + secretary
				+ ", secretary2=" + secretary2 + ", assemAddr=" + assemAddr + "]";
	}
	
	
}
 