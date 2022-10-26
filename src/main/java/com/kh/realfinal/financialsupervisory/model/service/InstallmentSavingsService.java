package com.kh.realfinal.financialsupervisory.model.service;

import java.util.List;
import java.util.Map;

import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.financialsupervisory.model.vo.InstallmentSavings;

public interface InstallmentSavingsService {
	int saveInstallmentSavings(InstallmentSavings install) throws Exception;
	int getInstallCount(Map<String, String> param) throws Exception;
	List<InstallmentSavings> getInstallList(PageInfo pageInfo, Map<String, String> param);
	InstallmentSavings findByInssvnId(int id);
}