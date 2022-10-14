package com.kh.realfinal.financialsupervisory.model.service;

import java.util.List;
import java.util.Map;

import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.financialsupervisory.model.vo.InstallmentSavings;
import com.kh.realfinal.financialsupervisory.model.vo.InstallmentSavingsOption;

public interface InstallmentSavingsService {
	int saveInstallmentSavings(InstallmentSavings install) throws Exception;
	int savesaveInstallmentSavingsOption(InstallmentSavingsOption installOption);
	int getInstallCount(Map<String, String> param) throws Exception;
	List<InstallmentSavings> getInstallList(PageInfo pageInfo, Map<String, String> param);
	List<InstallmentSavings> getInstallList();
	InstallmentSavings findByInssvnId(int inssvnId);
}