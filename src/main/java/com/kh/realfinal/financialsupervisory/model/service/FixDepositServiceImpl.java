package com.kh.realfinal.financialsupervisory.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.financialsupervisory.model.mapper.FixDepositMapper;

@Service
public class FixDepositServiceImpl implements FixDepositService{
	
	@Autowired
	private FixDepositMapper mapper;

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveFixDeposit(Map<String, Object> map) throws Exception {
		int result = 0;
		result = mapper.insertFixDeposit(map);
		System.out.println(map.get("fixdeposit_id"));
		List<Map<String,Object>> optionList = (List<Map<String, Object>>) map.get("optionList");
		
		for (Map<String, Object> option : optionList) {
			mapper.insertFixDepositOption(option);
		}
		
		return result;
	}
}