package com.kh.realfinal.financial.stock.model.mapper;

import org.apache.ibatis.annotations.Mapper;


import com.kh.realfinal.financial.stock.model.vo.IndexPrice;

@Mapper
public interface IndexPriceMapper {
	int insertIndexPrice(IndexPrice ip);
}
