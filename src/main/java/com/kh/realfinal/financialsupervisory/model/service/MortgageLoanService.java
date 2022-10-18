package com.kh.realfinal.financialsupervisory.model.service;

import java.util.List;
import java.util.Map;

import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.financialsupervisory.model.vo.MortgageLoan;
import com.kh.realfinal.financialsupervisory.model.vo.MortgageLoanOption;

public interface MortgageLoanService {
	int saveMortgageLoan(MortgageLoan mortgage) throws Exception;
	int saveMortgageLoanOption(MortgageLoanOption mortgageOption);
	int getMortgageCount(Map<String, String> param) throws Exception;
	List<MortgageLoan> getMortgageList(PageInfo pageInfo, Map<String, String> param);
	MortgageLoan findByMortgageId(int id);
}
