package com.kh.realfinal.financialsupervisory.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.realfinal.financialsupervisory.model.mapper.LeaseLoanMapper;
import com.kh.realfinal.financialsupervisory.model.vo.LeaseLoan;
import com.kh.realfinal.financialsupervisory.model.vo.LeaseLoanOption;

@Service
public class LeaseLoanServiceImpl implements LeaseLoanService{
	
	@Autowired
	private LeaseLoanMapper mapper;

	@Override
	public int saveLeaseLoan(LeaseLoan leaseLoan) throws Exception {
		List<LeaseLoanOption> options = leaseLoan.getLeaseOptionList();
		
		for(LeaseLoanOption llo : options) {
			int result = mapper.insertLeaseLoanOption(llo);
			if(result == 0) {
				throw new Exception();
			}
		}
		int result = mapper.insertLeaseLoan(leaseLoan);
		if(result == 0) {
			throw new Exception();
		}
		return result;
	}
}