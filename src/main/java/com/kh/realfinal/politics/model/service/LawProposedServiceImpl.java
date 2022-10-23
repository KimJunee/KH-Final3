package com.kh.realfinal.politics.model.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.politics.model.mapper.LawProposedMapper;
import com.kh.realfinal.politics.model.vo.LawProposed;

@Service
public class LawProposedServiceImpl implements LawProposedService  {
	
	@Autowired
	private LawProposedMapper mapper;
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveLawProposed(LawProposed proposed) {
		int result = mapper.insertLawProposed(proposed);
		return result;
	}
 
	@Override
	public LawProposed getLawProposed(int lawNo) {
		return mapper.selectLawProposed(lawNo);
	}

	// 페이지처리
	@Override
	public List<LawProposed> getlawProposed(PageInfo pageInfolaw, Map<String, String> map) {
		int offset = (pageInfolaw.getCurrentPage() - 1) * pageInfolaw.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfolaw.getListLimit());
		System.out.println(map);
		return mapper.selectLawProposedList(rowBounds, map);
	}

	@Override
	public int getLawCount(Map<String, String> map) {
		return mapper.selectLawProposedCount(map);
	}
	 
	
	
}
