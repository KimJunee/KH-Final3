package com.kh.realfinal.politics.model.service;

import java.util.List;
import java.util.Map;

import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.politics.model.vo.CardCut;
import com.kh.realfinal.politics.model.vo.CardCutReply;

public interface CardCutService {
	
	public int saveCardCut(CardCut card);
	public List<CardCut> getCardCutList(PageInfo pageInfo, Map<String, String> param);
	public List<CardCut> getCardCutList(PageInfo pageInfo);
	
	int deleteReply(int no);

	int saveCcReply(CardCutReply reply);
	public int getCardCutList();
	public int getCardCutCount();
	
}
