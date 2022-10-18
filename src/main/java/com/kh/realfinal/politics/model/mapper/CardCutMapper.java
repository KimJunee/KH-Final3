package com.kh.realfinal.politics.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.realfinal.politics.model.vo.CardCut;
import com.kh.realfinal.politics.model.vo.CardCutReply;

@Mapper
public interface CardCutMapper {
	int insertCardCut(CardCut cardCut);

	int deleteReply(int no);
	int insertReply(CardCutReply reply);
	List<CardCut> selectCardCut(RowBounds rowBounds);
}


