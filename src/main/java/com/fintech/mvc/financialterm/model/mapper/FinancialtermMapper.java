package com.fintech.mvc.financialterm.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.fintech.mvc.financialterm.model.vo.Financialterm;

@Mapper
public interface FinancialtermMapper {
	int insertFinancialterm(Financialterm ft);
}
