package com.kh.realfinal.financialsupervisory.model.service;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.kh.realfinal.financialsupervisory.model.mapper.InstallmentSavingsMapper;

@Service
public class InstallmentSavingsServiceImpl implements InstallmentSavingsService{
	
	@Autowired
	private InstallmentSavingsMapper mapper;

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveInstallmentSavings(Map<String, Object> map) throws Exception {
		int result = 0;
		result = mapper.insertInstallmentSavings(map);
		System.out.println(map.get("inssvn_id"));
		List<Map<String,Object>> optionList = (List<Map<String, Object>>) map.get("optionList");
		
		for (Map<String, Object> option : optionList) {
			mapper.insertInstallmentSavingsOption(option);
		}
		
		return result;
	}
}