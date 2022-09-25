package com.kh.realfinal.financialsupervisory.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CreditLoanOption {
	private int creditNo;	               
	private int creId;               
	private String crdtLendRateType;
	private String crdtLendTypeNm;
	private double crdtGrad1;	       
	private double crdtGrad4;	       
	private double crdtGrad5;	       
	private double crdtGrad6;	       
	private double crdtGrad10;       
	private double crdtGrad11;	       
	private double crdtGrad12;	       
	private double crdtGrad13;       
	private double crdtGradAvg;	   
}
