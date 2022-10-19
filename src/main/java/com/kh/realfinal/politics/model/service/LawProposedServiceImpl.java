package com.kh.realfinal.politics.model.service;

import java.util.List;

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
	public List<LawProposed> getlawProposed(PageInfo pageInfolaw, String name) {
		int offset = (pageInfolaw.getCurrentPage() - 1) * pageInfolaw.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfolaw.getListLimit());
		return mapper.selectLawProposed(name, rowBounds);
	}
 
	@Override
	public int getLawCount(int lawNo) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public LawProposed getLawProposed(int lawNo) {
		// TODO Auto-generated method stub
		return null;
	}
	 
	
	
}
