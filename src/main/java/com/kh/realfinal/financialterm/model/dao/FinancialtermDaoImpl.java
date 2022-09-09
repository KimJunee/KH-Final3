package com.kh.realfinal.financialterm.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.realfinal.financialterm.model.vo.Financialterm;

@Repository
public class FinancialtermDaoImpl implements FinancialtermDao{

	@Override
	public int insertFinancialterm(SqlSessionTemplate session, Financialterm ft) {
		System.out.println(ft);
		return session.insert("com.fintech.mvc.financialterm.model.vo.Financialterm.insertFinancialterm", ft);
	}

}
