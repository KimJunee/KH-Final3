package com.kh.realfinal.financialsupervisory.model.mapper;

import java.util.Map;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface InstallmentSavingsMapper {
	int insertInstallmentSavings(Map<String,Object> map);
	int insertInstallmentSavingsOption(Map<String,Object> map);
}