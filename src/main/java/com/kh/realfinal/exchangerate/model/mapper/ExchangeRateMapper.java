package com.kh.realfinal.exchangerate.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.exchangerate.model.vo.ExchangeRate;

@Mapper
public	interface ExchangeRateMapper {
	int insertExchangeRate(ExchangeRate er);
}
