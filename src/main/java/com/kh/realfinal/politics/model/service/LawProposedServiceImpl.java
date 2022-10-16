package com.kh.realfinal.politics.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
}
