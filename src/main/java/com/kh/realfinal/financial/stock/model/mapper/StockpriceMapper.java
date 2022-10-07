package com.kh.realfinal.financial.stock.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.financial.stock.model.vo.Stockprice;

@Mapper
public interface StockpriceMapper {
	int insertStockprice(Stockprice sp);
}
