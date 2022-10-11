package com.kh.realfinal.financialStock.model.service;

import java.util.List;

import com.kh.realfinal.financialStock.model.vo.Stockprice;

public interface StockpriceService {
	int saveStockprice(Stockprice sp);
	List<Stockprice> getKospiList();  //코스피 리스트
	List<Stockprice> getKosdaqList(); //코스닥 리스트
}
