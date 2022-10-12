package com.kh.realfinal.financialStock.model.service;

import java.util.List;

import com.kh.realfinal.financialStock.model.vo.IndexPrice;
import com.kh.realfinal.financialStock.model.vo.Stockprice;

public interface StockpriceService {
	int saveStockprice(Stockprice sp);
	List<Stockprice> getKospiList();  //코스피주식 리스트
	List<Stockprice> getKosdaqList(); //코스닥주식 리스트
	
	List<IndexPrice> getIndexKospiList(); //코스피지수 리스트
	List<IndexPrice> getIndexKosdaqList(); //코스닥지수 리스트
	
}
