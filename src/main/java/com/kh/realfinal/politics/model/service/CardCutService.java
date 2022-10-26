package com.kh.realfinal.politics.model.service;

import java.util.List;
import java.util.Map;

import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.politics.model.vo.CardCut;
import com.kh.realfinal.politics.model.vo.CardCutReply;

public interface CardCutService {
	int saveCardCut(CardCut card);
	List<CardCut> getCardCutList(PageInfo pageInfo, Map<String, String> param);
	List<CardCut> getCardCutList1();
	int getCardCutCount(Map<String, String> param);
	
	// 리플작성
	int saveCcReply(CardCutReply cardCutReply);
	int editCcReply(CardCutReply cardCutReply);
	int deleteCcReply(int no);  
	CardCut getCardCutContent(int cardCutNo);
	

	
}
