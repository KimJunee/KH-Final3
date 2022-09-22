package com.kh.realfinal.apply.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.apply.model.mapper.AptLttotPblancDetailMapper;
import com.kh.realfinal.apply.model.vo.AptLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.AptLttotPblancMdl;

@Service
public class AptLttotPblancDetailServiceImpl implements AptLttotPblancDetailService {

	@Autowired
	private AptLttotPblancDetailMapper mapper;
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveAptLttotService(AptLttotPblancDetail apd) {
		int result = 0;
		result = mapper.insertAptLtto(apd);
		
		return result;
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveAptLttotMdlService(AptLttotPblancMdl am) {
		int result = 0;
		result = mapper.insertAptLttoMdl(am);
		
		return result;
	}

}
