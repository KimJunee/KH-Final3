package com.kh.realfinal.politics.model.service;

import java.util.List;

import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.politics.model.vo.LawProposed;

public interface LawProposedService  {
	
	public int saveLawProposed(LawProposed proposed);

	public List<LawProposed> getlawProposed(PageInfo pageInfolaw, String name);

	public LawProposed getLawProposed(int lawNo);


	public int getLawCount(int page);
 
}
