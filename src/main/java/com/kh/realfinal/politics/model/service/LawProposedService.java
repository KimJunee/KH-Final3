package com.kh.realfinal.politics.model.service;

import java.util.List;
import java.util.Map;

import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.politics.model.vo.LawProposed;

public interface LawProposedService  {
	public int saveLawProposed(LawProposed proposed);
	public List<LawProposed> getlawProposed(PageInfo pageInfolaw, Map<String, String> param);
	public int getLawCount(Map<String, String> param);
	public LawProposed getLawProposed(int lawNo);
 
}
