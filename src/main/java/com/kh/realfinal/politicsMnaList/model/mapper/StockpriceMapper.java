package com.kh.realfinal.politicsMnaList.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.financialStock.model.vo.ExchangeRate;
import com.kh.realfinal.financialStock.model.vo.Financialterm;
import com.kh.realfinal.financialStock.model.vo.IndexPrice;
import com.kh.realfinal.financialStock.model.vo.Stockprice;

@Mapper
public interface StockpriceMapper {
	int insertStockprice(Stockprice sp);       //주식시세넣기
	int insertIndexPrice(IndexPrice ip);       //지수시세넣기
	int insertFinancialterm(Financialterm ft); //금융용어 넣기
	int insertExchangeRate(ExchangeRate er);   // 환율정보 넣기
	
	List<Stockprice> selectKospiList();        //코스피 1등~@000등까지 순서대로 뽑아오기
	List<Stockprice> selectKosdaqList();       //코스닥 1등~@000등까지 순서대로 뽑아오기
	
	List<IndexPrice> selectIndexKospiList();   //코스피지수 최신날짜부터 9일전까지 
	List<IndexPrice> selectIndexKosdaqList();   //코스닥지수 최신날짜부터 9일전까지
	
}