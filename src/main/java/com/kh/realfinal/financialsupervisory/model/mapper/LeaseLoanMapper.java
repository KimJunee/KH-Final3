package com.kh.realfinal.financialsupervisory.model.mapper;

import java.util.Map;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LeaseLoanMapper {
	int insertLeaseLoan(Map<String,Object> map);
	int insertLeaseLoanOption(Map<String,Object> map);
}