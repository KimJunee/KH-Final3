package com.kh.realfinal.stockprice.model.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class Stockprice { //주식시세 정보
	private String basDt;     // 기준일자                                  
	private String srtnCd;    // 종목 코드보다 짧으면서 유일성이 보장되는 코드(6자리)       
	private String isinCd;    // 국제 채권 식별 번호. 유가증권(채권)의 국제인증 고유번호    
	private String itmsNm;    // 유가증권 국제인증 고유번호 코드 이름                
	private String mrktCtg;   // 주식의 시장 구분 (KOSPI/KOSDAQ/KONEX 중 1)  
	private String clpr;      // - 정규시장의 매매시간종료시까지 형성되는 최종가격      
	private String vs;        // 전일 대비 등락                         
	private String fltRt;     // -- 전일 대비 등락에 따른 비율               
	private String mkp;       //  정규시장의 매매시간개시후 형성되는 최초가격         
	private String hipr;      // - 하루 중 가격의 최고치                   
	private String lopr;      // - 하루 중 가격의 최저치                   
	private String trqu;      // - 체결수량의 누적 합계                    
	private String trPrc;     // -- 거래건 별 체결가격 * 체결수량의 누적 합계      
	private String lstgStCnt; // -- 종목의 상장주식수                 
	private String mrktTotAmt;// --종가 * 상장주식수                 
}

