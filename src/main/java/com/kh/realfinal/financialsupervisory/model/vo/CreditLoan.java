package com.kh.realfinal.financialsupervisory.model.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CreditLoan {
	private int creditId;
	private String dclsMonth;
	private int finCoNo;
	private String korCoNm;
	private String finPrdtCd;
	private String finPrdtNm;
	private String joinWay;
	private int crdtPrdtType;
	private String crdtPrdtTypeNm;
	private String cbName;
	private String dclsStrtDay;
	private String dclsEndDay;
	private String finCoSubmDay;
	private List<CreditLoanOption> creditOptionList;
}
