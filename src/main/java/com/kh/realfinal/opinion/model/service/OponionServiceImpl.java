package com.kh.realfinal.opinion.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.opinion.model.mapper.OpinionMapper;
import com.kh.realfinal.opinion.model.vo.Opinion;

@Service
public class OponionServiceImpl implements OpinionService{
	
	@Autowired
	private OpinionMapper mapper;

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveOpinion(Opinion opinion) {
		int result = mapper.insertOpinion(opinion);
		return result;
	}

}
