package com.kh.realfinal.indexprice.model.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class IndexPrice {          //지수 시세 정보
	private String basDt;          //기준일자
	private String idxNm;          //지수의 명칭
	private String idxCsf;         //지수의 분류명칭
	private Double clpr;           //정규시장의 매매시간종료시까지 형성되는 최종가격(종가)
	private Double vs;             //전일 대비 등락
	private Double fltRt;          //전일 대비 등락에 따른 비율(%)
	private Double mkp;            //정규시장의 매매시간개시후 형성되는 최초가격(시가)
	private Double hipr;           //하루 중 지수의 최고치
	private Double lopr;           //하루 중 지수의 최저치
	private Long trqu;           //지수에 포함된 종목의 거래량 총합
	private Long   trPrc;          //지수에 포함된 종목의 거래대금 총합
	private Long   lstgMrktTotAmt; //지수에 포함된 종목의 시가총액
	private Double lsYrEdVsFltRg;  //지수의 전년말대비 등락폭
	private Double lsYrEdVsFltRt;  //지수의 전년말대비 등락율
	private Double yrWRcrdHgst;    //지수의 연중최고치
	private String yrWRcrdHgstDt;  //지수가 연중최고치를 기록한 날짜
	private Double yrWRcrdLwst;    //지수의 연중최저치
	private String yrWRcrdLwstDt;  //지수가 연중최저치를 기록한 날짜
}
