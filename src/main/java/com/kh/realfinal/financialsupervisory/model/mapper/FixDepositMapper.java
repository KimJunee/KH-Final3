package com.kh.realfinal.financialsupervisory.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.financialsupervisory.model.vo.FixDeposit;
import com.kh.realfinal.financialsupervisory.model.vo.FixDepositOption;

@Mapper
public interface FixDepositMapper {
	int insertFixDeposit(FixDeposit fixDeposit);
	int insertFixDepositOption(FixDepositOption fixDepositOption);
}