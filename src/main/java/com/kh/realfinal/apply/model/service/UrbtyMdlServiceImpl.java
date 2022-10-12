package com.kh.realfinal.apply.model.service;

import org.springframework.beans.factory.annotation.Autowired;



import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.apply.model.mapper.UrbtyMdlMapper;
import com.kh.realfinal.apply.model.vo.RemndrMdl;
import com.kh.realfinal.apply.model.vo.UrbtyMdl;

@Service
public class UrbtyMdlServiceImpl implements UrbtyMdlService{

	@Autowired
	private UrbtyMdlMapper mapper;

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveUrbtyMdlService(UrbtyMdl um) {
		int result = 0;
		result = mapper.insertUrbtyMdl(um);
		return result;
	}

}
