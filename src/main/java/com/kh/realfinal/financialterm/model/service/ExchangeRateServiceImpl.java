package com.kh.realfinal.financialterm.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.exchangerate.model.mapper.ExchangeRateMapper;
import com.kh.realfinal.exchangerate.model.service.ExchangeRateService;
import com.kh.realfinal.exchangerate.model.vo.ExchangeRate;

@Service
public class ExchangeRateServiceImpl implements ExchangeRateService{
	@Autowired
	private ExchangeRateMapper mapper;

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveExchangeRate(ExchangeRate er) {
		int result = 0;
		result = mapper.insertExchangeRate(er);
		
		return result;
	}
	
	
}
