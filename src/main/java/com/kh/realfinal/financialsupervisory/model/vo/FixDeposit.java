package com.kh.realfinal.financialsupervisory.model.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class FixDeposit {
	private int fixdepositId; 
	private String dclsMonth; 
	private int finCoNo; 
	private String korCoNm; 
	private String finPrdtCd; 
	private String finPrdtNm; 
	private String joinWay; 
	private String mtrtInt; 
	private String spclCnd; 
	private int joinDeny; 
	private String joinMember; 
	private String etcNote; 
	private int maxLimit; 
	private String dclsStrtDay;
	private String dclsEndDay;
	private String finCoSubmDay;	
	private List<FixDepositOption> fixOptionList;
}
