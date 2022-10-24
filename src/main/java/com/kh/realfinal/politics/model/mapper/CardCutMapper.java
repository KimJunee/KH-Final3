package com.kh.realfinal.politics.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.realfinal.politics.model.vo.CardCut;
import com.kh.realfinal.politics.model.vo.CardCutReply;

@Mapper
public interface CardCutMapper {
	int insertCardCut(CardCut cardCut);
	int deleteReply(int no); // 리플작성
	int insertReply(CardCutReply reply);
	List<CardCut> selectCardCut(RowBounds rowBounds, Map<String, String> param);
	int selectCardCutCount(Map<String, String> param);
	CardCut selectCardCutOne(int cardCutNo);
}


