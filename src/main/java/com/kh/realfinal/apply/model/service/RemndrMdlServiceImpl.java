package com.kh.realfinal.apply.model.service;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.apply.model.mapper.RemndrMdlMapper;
import com.kh.realfinal.apply.model.vo.RemndrMdl;

@Service
public class RemndrMdlServiceImpl implements RemndrMdlService{

	@Autowired
	private RemndrMdlMapper mapper;

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveRemndrMdlService(RemndrMdl rm) {
		int result = 0;
		result = mapper.insertRemndrMdl(rm);
		return result;
	}

}
