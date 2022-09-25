package com.kh.realfinal.financialsupervisory.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.financialsupervisory.model.vo.LeaseLoan;
import com.kh.realfinal.financialsupervisory.model.vo.LeaseLoanOption;

@Mapper
public interface LeaseLoanMapper {
	int insertLeaseLoan(LeaseLoan leaseLoan);
	int insertLeaseLoanOption(LeaseLoanOption leaseLoanOption);
}