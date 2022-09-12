package com.kh.realfinal.financialsupervisory.model.service;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.kh.realfinal.financialsupervisory.model.mapper.CreditLoanMapper;

@Service
public class CreditLoanServiceImpl implements CreditLoanService{
	
	@Autowired
	private CreditLoanMapper mapper;

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveCreditLoan(Map<String, Object> map) throws Exception {
		int result = 0;
		result = mapper.insertCreditLoan(map);
		System.out.println(map.get("creditloan_id"));
		List<Map<String,Object>> optionList = (List<Map<String, Object>>) map.get("optionList");
		
		for (Map<String, Object> option : optionList) {
			mapper.insertCreditLoanOption(option);
		}
		return result;
	}
}