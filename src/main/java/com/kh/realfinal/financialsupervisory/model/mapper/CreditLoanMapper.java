package com.kh.realfinal.financialsupervisory.model.mapper;

import java.util.Map;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CreditLoanMapper {
	int insertCreditLoan(Map<String,Object> map);
	int insertCreditLoanOption(Map<String,Object> map);
}