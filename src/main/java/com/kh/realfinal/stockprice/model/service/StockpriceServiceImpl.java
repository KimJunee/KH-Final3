package com.kh.realfinal.stockprice.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.stockprice.model.mapper.StockpriceMapper;
import com.kh.realfinal.stockprice.model.vo.Stockprice;

@Service
public class StockpriceServiceImpl implements StockpriceService{

	@Autowired
	private StockpriceMapper mapper;
	
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveStockprice(Stockprice sp) {
		int result = 0;
		
		result = mapper.insertStockprice(sp);
		return result;
	}

}
