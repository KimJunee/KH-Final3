package com.kh.realfinal.politics.model.service;

import java.util.List;
import java.util.Map;

import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.politics.model.vo.CardCut;
import com.kh.realfinal.politics.model.vo.CardCutReply;

public interface CardCutService {
	int saveCardCut(CardCut card);
	
	List<CardCut> getCardCutList(PageInfo pageInfo, Map<String, String> param);
	int getCardCutCount(Map<String, String> param);
	
	int deleteReply(int no);  
	int saveCcReply(CardCutReply reply);
	CardCut getCardCutContent(int cardCutNo);
	
}
