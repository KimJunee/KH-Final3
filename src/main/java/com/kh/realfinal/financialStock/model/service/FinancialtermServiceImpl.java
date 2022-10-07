package com.kh.realfinal.financialStock.model.service;



import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.financialStock.model.mapper.StockpriceMapper;
import com.kh.realfinal.financialStock.model.vo.Financialterm;

@Service
public class FinancialtermServiceImpl implements FinancialtermService{
	
	
//	private FinancialtermDao dao = new FinancialtermDaoImpl();
	@Autowired
	private StockpriceMapper mapper;
	
//	@Autowired
//	@Qualifier("sqlSession") 
//	private SqlSessionTemplate session;
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveFinancialterm(Financialterm ft) {
		int result = 0;
		result = mapper.insertFinancialterm(ft);
		
		return result;
	}

}
