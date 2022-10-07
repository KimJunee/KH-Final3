package com.kh.realfinal.financial.stock.model.service;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.financial.stock.model.mapper.StockpriceMapper;
import com.kh.realfinal.financial.stock.model.vo.IndexPrice;

@Service
public class IndexPriceServiceImpl implements IndexPriceService{
	
	@Autowired
	private StockpriceMapper mapper;

	@Override
	@Transactional(rollbackFor = Exception.class)

	public int saveIndexPrice(IndexPrice ip) {
		int result = 0;
		
		result = mapper.insertIndexPrice(ip);
		return result;
	}
	
	
}
