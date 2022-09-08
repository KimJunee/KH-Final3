package com.fintech.mvc.financialterm.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fintech.mvc.financialterm.model.mapper.FinancialtermMapper;
import com.fintech.mvc.financialterm.model.vo.Financialterm;

@Service
public class FinancialtermServiceImpl implements FinancialtermService{
	
	@Autowired
	private FinancialtermMapper mapper;
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveFinancialterm(Financialterm ft) {
		int result = 0;
		
		result = mapper.insertFinancialterm(ft);
		
		if(result > 0) {
			return result;
		}else {
			return 0;
		}
		
		
	
	}

}
