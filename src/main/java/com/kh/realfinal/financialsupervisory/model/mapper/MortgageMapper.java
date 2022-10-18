package com.kh.realfinal.financialsupervisory.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.realfinal.financialsupervisory.model.vo.MortgageLoan;
import com.kh.realfinal.financialsupervisory.model.vo.MortgageLoanOption;

@Mapper
public interface MortgageMapper {
	int insertMortgageLoan(MortgageLoan mortgage);
	int insertMortgageOption(MortgageLoanOption mortgageOption);
	
	List<MortgageLoan> selectMortgageList(RowBounds rowBounds, Map<String, String> map);
	int selectMortgageCount(Map<String, String> map);
	MortgageLoan selectByMortgageId(int id);
}
