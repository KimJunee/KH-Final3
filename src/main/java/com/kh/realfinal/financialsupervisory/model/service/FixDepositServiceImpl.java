package com.kh.realfinal.financialsupervisory.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.common.util.PageInfo;
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

	@Override
	public int getDepositCount(Map<String, String> param) throws Exception {
		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		String sort = param.get("sort");
		try {		
			if(searchValue != null && searchValue.length() > 0) {
				searchMap.put("korCoNm", searchValue);
			}
			searchMap.put("sort", sort);
		} catch (Exception e) {}
		
		return mapper.selectDepositCount(searchMap);
	}

	@Override
	public List<FixDeposit> getDepositList(PageInfo pageInfo, Map<String, String> param) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		
		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		String sort = param.get("sort");
		
		if(searchValue != null && searchValue.length() > 0) {
			searchMap.put("korCoNm", searchValue);
		}
		searchMap.put("sort", sort);
		return mapper.selectDepositList(rowBounds, searchMap);
	}

	@Override
	public FixDeposit findByDepositId(int id) {
		FixDeposit fixdeposit = mapper.selectByDepositId(id);
		return fixdeposit;
	}
}