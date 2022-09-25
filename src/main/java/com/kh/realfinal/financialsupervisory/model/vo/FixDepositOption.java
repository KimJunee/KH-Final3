package com.kh.realfinal.financialsupervisory.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class FixDepositOption {
	private int fixdepositNo;	
	private int fixId;	
	private String intrRateType;	
	private String intrRateTypeNm;	
	private int saveTrm;	
	private double intrRate;	
	private double intrRate2;	
}
