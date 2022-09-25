package com.kh.realfinal.financialsupervisory.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.financialsupervisory.model.vo.InstallmentSavings;
import com.kh.realfinal.financialsupervisory.model.vo.InstallmentSavingsOption;

@Mapper
public interface InstallmentSavingsMapper {
	int insertInstallmentSavings(InstallmentSavings install);
	int insertInstallmentSavingsOption(InstallmentSavingsOption options);
}