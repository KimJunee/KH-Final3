package com.kh.realfinal.financialsupervisory.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.realfinal.financialsupervisory.model.vo.FixDeposit;
import com.kh.realfinal.financialsupervisory.model.vo.FixDepositOption;

@Mapper
public interface FixDepositMapper {
	int insertFixDeposit(FixDeposit fixDeposit);
	int insertFixDepositOption(FixDepositOption fixDepositOption);
	
	List<FixDeposit> selectDepositList(RowBounds rowBounds, Map<String, String> map);
	int selectDepositCount(Map<String, String> map);
	FixDeposit selectByDepositId(int id);
}