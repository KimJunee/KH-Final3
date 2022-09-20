package com.kh.realfinal.indexprice.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.indexprice.model.vo.IndexPrice;

@Mapper
public interface IndexPriceMapper {
	int insertIndexPrice(IndexPrice ip);
}
