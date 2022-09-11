package com.kh.realfinal.financialsupervisory.model.mapper;

import java.util.Map;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface FixDepositMapper {
	int insertFixDeposit(Map<String,Object> map);
	int insertFixDepositOption(Map<String,Object> map);
}