package com.kh.realfinal.financialsupervisory.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.financialsupervisory.model.mapper.MortgageMapper;
import com.kh.realfinal.financialsupervisory.model.vo.MortgageLoan;
import com.kh.realfinal.financialsupervisory.model.vo.MortgageLoanOption;

@Service
public class MortgageLoanServiceImpl implements MortgageLoanService{
	
	@Autowired
	private MortgageMapper mapper;

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveMortgageLoan(MortgageLoan mortgage) throws Exception {
		List<MortgageLoanOption> options = mortgage.getMortgageOptionList();
		for(MortgageLoanOption opt : options) {
			int result = mapper.insertMortgageOption(opt);
			if(result == 0) {
				throw new Exception();
			}
		}
		int result = mapper.insertMortgageLoan(mortgage);
		if(result == 0) {
			throw new Exception();
		}
		return result;
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveMortgageLoanOption(MortgageLoanOption mortgageOption) {
		return mapper.insertMortgageOption(mortgageOption);
	}

	@Override
	public int getMortgageCount(Map<String, String> param) throws Exception {
		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		String sort = param.get("sort");
		
		try {		
			if(searchValue != null && searchValue.length() > 0) {
				searchMap.put("korCoNm", searchValue);
			}
			searchMap.put("sort", sort);
		} catch (Exception e) {}
		return mapper.selectMortgageCount(searchMap);
	}

	@Override
	public List<MortgageLoan> getMortgageList(PageInfo pageInfo, Map<String, String> param) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		
		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		String sort = param.get("sort");
		try {		
			if(searchValue != null && searchValue.length() > 0) {
				searchMap.put("korCoNm", searchValue);
			}
			searchMap.put("sort", sort);
		} catch (Exception e) {}
		return mapper.selectMortgageList(rowBounds, searchMap);
	}

	@Override
	public MortgageLoan findByMortgageId(int id) {
		MortgageLoan mortgage = mapper.selectByMortgageId(id);
		return mortgage;
	}
	
	

}
