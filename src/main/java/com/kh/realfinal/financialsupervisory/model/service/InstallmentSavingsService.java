package com.kh.realfinal.financialsupervisory.model.service;

import com.kh.realfinal.financialsupervisory.model.vo.InstallmentSavings;
import com.kh.realfinal.financialsupervisory.model.vo.InstallmentSavingsOption;

public interface InstallmentSavingsService {
	int saveInstallmentSavings(InstallmentSavings install) throws Exception;
	int savesaveInstallmentSavingsOption(InstallmentSavingsOption installOption);
}