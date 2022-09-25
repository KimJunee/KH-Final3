package com.kh.realfinal.financialsupervisory.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class InstallmentSavingsOption {
	private int inssvnNo;
	private int insId;
	private String intrRateType; //	저축 금리 유형
	private String intrRateTypeNm; //	저축 금리 유형명
	private String rsrvType; //	적립 유형
	private String rsrvTypeNm; // 적립 유형명
	private int saveTrm; //	저축 기간 [단위: 개월]
	private double intrRate; //	저축 금리 [소수점 2자리]
	private double intrRate2; //	최고 우대금리 [소수점 2자리]
}
