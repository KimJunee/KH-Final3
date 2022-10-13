package com.kh.realfinal.financialStock.model.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

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
	int selectKospistockCount();                 //코스피 주식 갯수 가져오는놈!
	List<Stockprice> selectKospistockList(RowBounds rowBounds); //코스피 주식가져오는거랑 페이징 같이 하는놈!
	List<String> selectKospiDateList();  //코스피 지수의 날짜를 20200102 ~ 현재날짜까지 들고오는 list
	List<String> selectKospiClprList();//코스피 지수의 종가를 20200102 ~ 현재날짜까지 들고오는 list
	int selectKosdaqstockCount();               //코스닥 주식갯수 가져오는놈
	List<Stockprice> selectKosdaqstockList(RowBounds rowBounds); //코스피 주식 가져오는 거랑 페이징 같이!
	
}
