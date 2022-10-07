package com.kh.realfinal.financialStock.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.financialStock.model.vo.ExchangeRate;
import com.kh.realfinal.financialStock.model.vo.Financialterm;
import com.kh.realfinal.financialStock.model.vo.IndexPrice;
import com.kh.realfinal.financialStock.model.vo.Stockprice;

@Mapper
public interface StockpriceMapper {
	int insertStockprice(Stockprice sp);
	int insertIndexPrice(IndexPrice ip);
	int insertFinancialterm(Financialterm ft);
	int insertExchangeRate(ExchangeRate er);
}
