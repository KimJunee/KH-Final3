package com.kh.realfinal.financialsupervisory.model.service;

import java.util.List;
import java.util.Map;

import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.financialsupervisory.model.vo.LeaseLoan;

public interface LeaseLoanService {
	int saveLeaseLoan(LeaseLoan leaseLoan) throws Exception;
	int getLeaseLoanCount(Map<String, String> param) throws Exception;
	List<LeaseLoan> getLeaseLoanList(PageInfo pageInfo, Map<String, String> param);
	LeaseLoan findByLeaseLoanId(int id);
}