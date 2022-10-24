package com.kh.realfinal.opinion.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.opinion.model.vo.Opinion;

@Mapper
public interface OpinionMapper {
	int insertOpinion(Opinion opinion);
	

}
