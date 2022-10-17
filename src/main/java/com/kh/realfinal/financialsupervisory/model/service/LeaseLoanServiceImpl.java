package com.kh.realfinal.financialsupervisory.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.financialsupervisory.model.mapper.LeaseLoanMapper;
import com.kh.realfinal.financialsupervisory.model.vo.LeaseLoan;
import com.kh.realfinal.financialsupervisory.model.vo.LeaseLoanOption;

@Service
public class LeaseLoanServiceImpl implements LeaseLoanService{
	
	@Autowired
	private LeaseLoanMapper mapper;

	@Override
	public int saveLeaseLoan(LeaseLoan leaseLoan) throws Exception {
		List<LeaseLoanOption> options = leaseLoan.getLeaseOptionList();
		
		for(LeaseLoanOption llo : options) {
			int result = mapper.insertLeaseLoanOption(llo);
			if(result == 0) {
				throw new Exception();
			}
		}
		int result = mapper.insertLeaseLoan(leaseLoan);
		if(result == 0) {
			throw new Exception();
		}
		return result;
	}

	@Override
	public int getLeaseLoanCount(Map<String, String> param) throws Exception {
		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		
		try {		
			if(searchValue != null && searchValue.length() > 0) {
				searchMap.put("korCoNm", searchValue);
			}
		} catch (Exception e) {}
		
		return mapper.selectLeaseLoanCount(searchMap);
	}

	@Override
	public List<LeaseLoan> getLeaseLoanList(PageInfo pageInfo, Map<String, String> param) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		
		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		String sort = param.get("sort");
		try {		
			if(searchValue != null && searchValue.length() > 0) {
				searchMap.put("korCoNm", searchValue);
				searchMap.put("sort", sort);
			}
		} catch (Exception e) {}
		return mapper.selectLeaseLoanList(rowBounds, searchMap);
	}

	@Override
	public LeaseLoan findByLeaseLoanId(int id) {
		LeaseLoan leaseLoan = mapper.selectByLeaseLoanId(id);
		return leaseLoan;
	}
}










