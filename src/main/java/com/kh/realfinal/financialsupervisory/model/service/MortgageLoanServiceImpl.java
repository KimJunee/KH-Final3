package com.kh.realfinal.financialsupervisory.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.financialsupervisory.model.mapper.MortgageMapper;
import com.kh.realfinal.financialsupervisory.model.vo.MortgageLoan;
import com.kh.realfinal.financialsupervisory.model.vo.MortgageLoanOption;

@Service
public class MortgageLoanServiceImpl implements MortgageLoanService{
	
	@Autowired
	private MortgageMapper mapper;

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveMortgageLoan(MortgageLoan mortgage) throws Exception {
		List<MortgageLoanOption> options = mortgage.getMortgageList();
		for(MortgageLoanOption opt : options) {
			int result = mapper.insertMortgageOption(opt);
			if(result == 0) {
				throw new Exception();
			}
		}
		int result = mapper.insertMortgageLoan(mortgage);
		if(result == 0) {
			throw new Exception();
		}
		return result;
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveMortgageLoanOption(MortgageLoanOption mortgageOption) {
		return mapper.insertMortgageOption(mortgageOption);
	}
	
	

}
