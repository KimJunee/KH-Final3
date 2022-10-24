package com.kh.realfinal.apply.model.mapper;

import java.util.List;


import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.realfinal.apply.model.vo.RealEstateList;

@Mapper
public interface RealEstateListMapper {
	
	// 청약상세조회페이지
	List<RealEstateList> RealboardList(RowBounds rowBounds, Map<String, Object> map);
	int RealboardListCount(Map<String, Object> map);
	
	
	// 청약메인 캘린더 연결 
	List<RealEstateList> RealMainboardList();
	
//	// 청약메인 지도 count
//	List<RealMainMapList> listForMainMap(String localName);
//	int selectCountForMainMap(String localName);
		
}
