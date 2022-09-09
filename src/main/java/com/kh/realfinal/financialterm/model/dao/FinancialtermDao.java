package com.kh.realfinal.financialterm.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.realfinal.financialterm.model.vo.Financialterm;


public interface FinancialtermDao {
	int insertFinancialterm(SqlSessionTemplate session, Financialterm ft);
}
