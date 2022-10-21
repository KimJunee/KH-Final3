package com.kh.realfinal.apply.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.apply.model.vo.RealMainMapList;

@Mapper
public interface RealEstateMapMapper {
	
	// 청약메인 지도 count
		List<RealMainMapList> listForMainMap(String localName);
		int selectCountForMainMap(String localName);
	
}
