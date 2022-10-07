package com.kh.realfinal.financialStock.model.service;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.financialStock.model.mapper.StockpriceMapper;
import com.kh.realfinal.financialStock.model.service.ExchangeRateService;
import com.kh.realfinal.financialStock.model.vo.ExchangeRate;

@Service
public class ExchangeRateServiceImpl implements ExchangeRateService{
	@Autowired
	private StockpriceMapper mapper;

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveExchangeRate(ExchangeRate er) {
		int result = 0;
		result = mapper.insertExchangeRate(er);
		
		return result;
	}
	
	
}
