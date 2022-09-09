package com.kh.realfinal.landterm.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.landterm.model.mapper.LandTermMapper;
import com.kh.realfinal.landterm.model.vo.LandTerm;

@Service
public class LandTermServiceImpl implements LandTermService{

	@Autowired
	private LandTermMapper mapper;
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveLandTerm(LandTerm lt) {
		int result = 0;
		result = mapper.insertLandTerm(lt);
		return result;
	}

}
