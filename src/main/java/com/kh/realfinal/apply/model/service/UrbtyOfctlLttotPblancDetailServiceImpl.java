package com.kh.realfinal.apply.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.apply.model.mapper.UrbtyOfctlLttotPblancDetailMapper;
import com.kh.realfinal.apply.model.vo.UrbtyMdl;
import com.kh.realfinal.apply.model.vo.UrbtyOfctlLttotPblancDetail;

@Service
public class UrbtyOfctlLttotPblancDetailServiceImpl implements UrbtyOfctlLttotPblancDetailService{

	@Autowired
	private UrbtyOfctlLttotPblancDetailMapper mapper;
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveUrbtyOfctlLttotPblancDetailService(UrbtyOfctlLttotPblancDetail ud) {
		int result = 0;
		result = mapper.insertUrbtyOfctlLttotPblancDetail(ud);
		return result;
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveUrbtyMdlService(UrbtyMdl um) {
		int result = 0;
		result = mapper.insertUrbtyMdl(um);
		return result;
	}

}
