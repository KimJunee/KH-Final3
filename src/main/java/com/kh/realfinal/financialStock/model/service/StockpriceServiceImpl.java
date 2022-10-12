package com.kh.realfinal.financialStock.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.financialStock.model.mapper.StockpriceMapper;
import com.kh.realfinal.financialStock.model.vo.IndexPrice;
import com.kh.realfinal.financialStock.model.vo.Stockprice;

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


	@Override
	public List<Stockprice> getKospiList() {
		return mapper.selectKospiList();
	}


	@Override
	public List<Stockprice> getKosdaqList() {
		return mapper.selectKosdaqList();
	}


	@Override
	public List<IndexPrice> getIndexKospiList() {
		return mapper.selectIndexKospiList();
	}


	@Override
	public List<IndexPrice> getIndexKosdaqList() {
		return mapper.selectIndexKosdaqList();
	}

}
