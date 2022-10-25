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
	private String jpglink;    // 사진
	
	// 경력은 임의로 출력 X 너무 길다.
	public String toString2() {
		return "ProfileMna [hgNm=" + hgNm + ", units=" + units + ", sexGbnNm=" + sexGbnNm + ", hjNm=" + hjNm
				+ ", engNm=" + engNm + ", bthDate=" + bthDate + ", polyNm=" + polyNm + ", origNm=" + origNm
				+ ", electGbnNm=" + electGbnNm + ", cmits=" + cmits + ", reeleGbnNm=" + reeleGbnNm + ", telNo=" + telNo
				+ ", email=" + email + ", homepage=" + homepage + ", staff=" + staff + ", secretary=" + secretary
				+ ", secretary2=" + secretary2 + ", assemAddr=" + assemAddr + "]";
	}
}
 