package com.kh.realfinal.financial.stock.model.mapper;

import org.apache.ibatis.annotations.Mapper;


import com.kh.realfinal.financial.stock.model.vo.ExchangeRate;

@Mapper
public	interface ExchangeRateMapper {
	int insertExchangeRate(ExchangeRate er);
}
