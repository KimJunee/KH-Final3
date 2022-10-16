package com.kh.realfinal.politics.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.politics.model.mapper.CardCutMapper;
import com.kh.realfinal.politics.model.vo.CardCut;

@Service
public class CardCutServiceImpl implements CardCutService  {
	
	@Autowired
	private CardCutMapper mapper;
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveCardCut(CardCut card) {
		int result = mapper.insertCardCut(card);
		return result;
	}
}
