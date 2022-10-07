package com.kh.realfinal.financial.stock.model.mapper;

import org.apache.ibatis.annotations.Mapper;


import com.kh.realfinal.financial.stock.model.vo.Financialterm;

@Mapper
public interface FinancialtermMapper {
	int insertFinancialterm(Financialterm ft);
}
