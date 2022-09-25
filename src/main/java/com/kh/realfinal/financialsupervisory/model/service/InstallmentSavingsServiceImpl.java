package com.kh.realfinal.financialsupervisory.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.financialsupervisory.model.mapper.InstallmentSavingsMapper;
import com.kh.realfinal.financialsupervisory.model.vo.InstallmentSavings;
import com.kh.realfinal.financialsupervisory.model.vo.InstallmentSavingsOption;

@Service
public class InstallmentSavingsServiceImpl implements InstallmentSavingsService{
	
	@Autowired
	private InstallmentSavingsMapper mapper;
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveInstallmentSavings(InstallmentSavings install) throws Exception {
		List<InstallmentSavingsOption> options = install.getInstallOptionList();
		for(InstallmentSavingsOption opt : options) {
			int result = mapper.insertInstallmentSavingsOption(opt);
			if(result == 0) {
				throw new Exception();
			}
		}
		int result = mapper.insertInstallmentSavings(install);
		if(result == 0) {
			throw new Exception();
		}
		return result;
	}

	@Override
	public int savesaveInstallmentSavingsOption(InstallmentSavingsOption installOption) {
		// TODO Auto-generated method stub
		return 0;
	}

	
}