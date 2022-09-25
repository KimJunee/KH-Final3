package com.kh.realfinal.financialsupervisory.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.financialsupervisory.model.vo.CreditLoan;
import com.kh.realfinal.financialsupervisory.model.vo.CreditLoanOption;

@Mapper
public interface CreditLoanMapper {
	int insertCreditLoan(CreditLoan creditLoan);
	int insertCreditLoanOption(CreditLoanOption options);
}