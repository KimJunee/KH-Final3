package com.kh.realfinal.stockprice.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.stockprice.model.vo.Stockprice;

@Mapper
public interface StockpriceMapper {
	int insertStockprice(Stockprice sp);
}
