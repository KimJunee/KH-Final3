package com.kh.realfinal.politics.model.service;

import java.util.List;
import java.util.Map;

import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.politics.model.vo.LawProposed;

public interface LawProposedService  {
	public int saveLawProposed(LawProposed proposed); // 대표발의법안 DB INSERT
	public List<LawProposed> getlawProposed(PageInfo pageInfolaw, Map<String, String> param); // 대표발의법안 갯수 국회의원 리스트 
	public LawProposed getLawProposed(int lawNo); // 국회의원 프로필 하단 대표발의법안 검색 리스트(상세내용은 Link 이동)
	public int getLawCount(Map<String, String> param); // 대표발의법안 갯수 16,000여개
  
} 
