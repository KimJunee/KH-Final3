package com.kh.realfinal.financialsupervisory.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class MortgageLoanOption {
	private int mrtgNo; // 주키
	private int mrtgId;
	private String mrtgType; // 담보유형코드
	private String mrtgTypeNm; // 담보유형명
	private String rpayType; // 대출상환유형코드
	private String rpayTypeNm; // 대출상환유형명
	private String lendRateType; // 대출금리유형코드
	private String lendRateTypeNm; // 대출금리유형명
	private double lendRateMin; // 대출최저금리
	private double lendRateMax; // 대출최고금리
	private double lendRateAvg; //전월 평균 금리	
}
