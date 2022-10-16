package com.kh.realfinal.politics.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.politics.model.vo.CardCut;

@Mapper
public interface CardCutMapper {
	int insertCardCut(CardCut cardCut);
}


