package com.kh.realfinal.financialsupervisory.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.financialsupervisory.model.mapper.FixDepositMapper;
import com.kh.realfinal.financialsupervisory.model.mapper.LeaseLoanMapper;

@Service
public class LeaseLoanServiceImpl implements LeaseLoanService{
	
	@Autowired
	private LeaseLoanMapper mapper;

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveLeaseLoan(Map<String, Object> map) throws Exception {
		int result = 0;
		result = mapper.insertLeaseLoan(map);
		System.out.println(map.get("fixdeposit_id"));
		List<Map<String,Object>> optionList = (List<Map<String, Object>>) map.get("optionList");
		
		for (Map<String, Object> option : optionList) {
			mapper.insertLeaseLoanOption(option);
		}
		
		return result;
	}
}