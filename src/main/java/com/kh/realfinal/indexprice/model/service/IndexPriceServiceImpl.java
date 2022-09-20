package com.kh.realfinal.indexprice.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.indexprice.model.mapper.IndexPriceMapper;
import com.kh.realfinal.indexprice.model.vo.IndexPrice;

@Service
public class IndexPriceServiceImpl implements IndexPriceService{
	
	@Autowired
	private IndexPriceMapper mapper;

	@Override
	@Transactional(rollbackFor = Exception.class)

	public int saveIndexPrice(IndexPrice ip) {
		int result = 0;
		
		result = mapper.insertIndexPrice(ip);
		return result;
	}
	
	
}
