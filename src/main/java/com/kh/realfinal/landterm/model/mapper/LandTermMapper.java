package com.kh.realfinal.landterm.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.landterm.model.vo.LandTerm;

@Mapper
public interface LandTermMapper {
	int insertLandTerm(LandTerm lt);
}
