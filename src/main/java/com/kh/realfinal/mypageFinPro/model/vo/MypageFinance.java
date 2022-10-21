package com.kh.realfinal.mypageFinPro.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MypageFinance {	
	private int likeNo;
	private int userNo;
	private String finType; // 1. 적금 2. 예금 3. 주택대출 4. 전세자금대출
	private int prtId;
	private String finPrdtNm;
	private String korCoNm;
	private double minRate;
	private double maxRate;
}
