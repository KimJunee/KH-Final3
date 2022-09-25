package com.kh.realfinal.financialsupervisory.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.financialsupervisory.model.mapper.FixDepositMapper;
import com.kh.realfinal.financialsupervisory.model.vo.FixDeposit;
import com.kh.realfinal.financialsupervisory.model.vo.FixDepositOption;

@Service
public class FixDepositServiceImpl implements FixDepositService{
	
	@Autowired
	private FixDepositMapper mapper;

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveFixDeposit(FixDeposit fixDeposit) throws Exception {
		List<FixDepositOption> options = fixDeposit.getFixOptionList();
		
		for(FixDepositOption opt : options) {
			int result = mapper.insertFixDepositOption(opt);
			if(result == 0) {
				throw new Exception();
			}
		}
		
		int result = mapper.insertFixDeposit(fixDeposit);
		if(result == 0) {
			throw new Exception();
		}
		return result;
	}
}