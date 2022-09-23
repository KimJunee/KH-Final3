package com.kh.realfinal.financialsupervisory.model.service;

import com.kh.realfinal.financialsupervisory.model.vo.MortgageLoan;
import com.kh.realfinal.financialsupervisory.model.vo.MortgageLoanOption;

public interface MortgageLoanService {
	int saveMortgageLoan(MortgageLoan mortgage) throws Exception;
	int saveMortgageLoanOption(MortgageLoanOption mortgageOption);
}
