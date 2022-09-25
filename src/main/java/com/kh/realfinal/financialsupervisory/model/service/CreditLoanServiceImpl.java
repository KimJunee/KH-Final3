package com.kh.realfinal.financialsupervisory.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.financialsupervisory.model.mapper.CreditLoanMapper;
import com.kh.realfinal.financialsupervisory.model.vo.CreditLoan;
import com.kh.realfinal.financialsupervisory.model.vo.CreditLoanOption;

@Service
public class CreditLoanServiceImpl implements CreditLoanService{
	
	@Autowired
	private CreditLoanMapper mapper;

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveCreditLoan(CreditLoan creditLoan) throws Exception {
		List<CreditLoanOption> options = creditLoan.getCreditOptionList();
		for(CreditLoanOption opt : options) {
			int result = mapper.insertCreditLoanOption(opt);
			if(result == 0) {
				throw new Exception();
			}
		}
		int result = mapper.insertCreditLoan(creditLoan);
		if(result == 0) {
			throw new Exception();
		}
		return result;
	}
}