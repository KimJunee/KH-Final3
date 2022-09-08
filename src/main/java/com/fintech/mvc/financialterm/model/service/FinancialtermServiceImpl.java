package com.fintech.mvc.financialterm.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fintech.mvc.financialterm.model.dao.FinancialtermDao;
import com.fintech.mvc.financialterm.model.dao.FinancialtermDaoImpl;
import com.fintech.mvc.financialterm.model.vo.Financialterm;

@Service
public class FinancialtermServiceImpl implements FinancialtermService{
	
	
	private FinancialtermDao dao = new FinancialtermDaoImpl();
		
	@Autowired
	@Qualifier("sqlSession") 
	private SqlSessionTemplate session;
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveFinancialterm(Financialterm ft) {
		int result = 0;
		
		result = dao.insertFinancialterm(session, ft);
		System.out.println(result);
		
		return result;
		
		
	
	}

}
