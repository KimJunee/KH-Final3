package com.kh.realfinal.financialStock.model.service;

import java.text.ParseException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.financialStock.model.vo.IndexPrice;
import com.kh.realfinal.financialStock.model.vo.Stockprice;

public interface StockpriceService {
	int saveStockprice(Stockprice sp);
	List<Stockprice> getKospiList();  //코스피주식 리스트
	List<Stockprice> getKosdaqList(); //코스닥주식 리스트
	
	List<IndexPrice> getIndexKospiList(); //코스피지수 리스트
	List<IndexPrice> getIndexKosdaqList(); //코스닥지수 리스트
	
	int getKospistockCount();             //코스피 주식 갯수 가져오는놈
	List<Stockprice> getKospistockList(PageInfo pageInfo); //코스피주식이랑 페이징 같이
	List<Date> getKospiDateList() throws ParseException;  //코스피 지수의 날짜를 20200102 ~ 현재날짜까지 들고오는 list
	List<String> getKospiClprList();//코스피 지수의 종가를 20200102 ~ 현재날짜까지 들고오는 list
	
}
