package com.kh.realfinal.politics.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.politics.model.vo.LawProposed;

@Mapper
public interface LawProposedMapper {
	int insertLawProposed(LawProposed proposed);
}


