package com.kh.realfinal.financial.stock.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.financial.stock.model.vo.IndexPrice;
import com.kh.realfinal.financial.stock.model.vo.Stockprice;
import com.kh.realfinal.financial.stock.model.vo.Financialterm;
import com.kh.realfinal.financial.stock.model.vo.ExchangeRate;

@Mapper
public interface StockpriceMapper {
	int insertStockprice(Stockprice sp);
	int insertIndexPrice(IndexPrice ip);
	int insertFinancialterm(Financialterm ft);
	int insertExchangeRate(ExchangeRate er);
}
