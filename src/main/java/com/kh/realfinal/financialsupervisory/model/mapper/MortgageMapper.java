package com.kh.realfinal.financialsupervisory.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.financialsupervisory.model.vo.MortgageLoan;
import com.kh.realfinal.financialsupervisory.model.vo.MortgageLoanOption;

@Mapper
public interface MortgageMapper {
	int insertMortgageLoan(MortgageLoan mortgage);
	int insertMortgageOption(MortgageLoanOption mortgageOption);
}
