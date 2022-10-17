package com.kh.realfinal.financialsupervisory.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.realfinal.financialsupervisory.model.vo.LeaseLoan;
import com.kh.realfinal.financialsupervisory.model.vo.LeaseLoanOption;

@Mapper
public interface LeaseLoanMapper {
	int insertLeaseLoan(LeaseLoan leaseLoan);
	int insertLeaseLoanOption(LeaseLoanOption leaseLoanOption);
	
	List<LeaseLoan> selectLeaseLoanList(RowBounds rowBounds, Map<String, String> map);
	int selectLeaseLoanCount(Map<String, String> map);
	LeaseLoan selectByLeaseLoanId(int leaseLoanId);
}