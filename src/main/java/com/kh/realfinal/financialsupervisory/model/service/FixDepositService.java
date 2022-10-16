package com.kh.realfinal.financialsupervisory.model.service;

import java.util.List;
import java.util.Map;

import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.financialsupervisory.model.vo.FixDeposit;

public interface FixDepositService {
	int saveFixDeposit(FixDeposit fixDeposit) throws Exception;
	int getDepositCount(Map<String, String> param) throws Exception;
	List<FixDeposit> getDepositList(PageInfo pageInfo, Map<String, String> param);
	FixDeposit findByDepositId(int id);
}