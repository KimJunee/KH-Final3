package com.kh.realfinal.publicservice.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.publicservice.model.mapper.PublicServiceMapper;
import com.kh.realfinal.publicservice.model.vo.PublicService;

@Service
public class PublicServiceServiceImpl implements PublicServiceService{

	@Autowired
	private PublicServiceMapper mapper;
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int savePublicService(PublicService ps) {
		int result = 0;
		result = mapper.insertPublicService(ps);
		return result;
	}

}
