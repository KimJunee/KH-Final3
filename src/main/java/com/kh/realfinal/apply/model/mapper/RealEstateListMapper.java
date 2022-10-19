package com.kh.realfinal.apply.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.realfinal.apply.model.vo.RealEstateList;
import com.kh.realfinal.apply.model.vo.RemndrLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.RemndrMdl;

@Mapper
public interface RealEstateListMapper {
	
	// 청약리스트 조회
	List<RealEstateList> RealboardList(RowBounds rowBounds, Map<String, Object> map);
	int RealboardListCount(Map<String, Object> map);

}
