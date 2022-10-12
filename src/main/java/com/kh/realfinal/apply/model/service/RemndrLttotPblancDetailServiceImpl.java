package com.kh.realfinal.apply.model.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.apply.model.mapper.RemndrLttotPblancDetailMapper;
import com.kh.realfinal.apply.model.vo.RemndrLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.RemndrMdl;

@Service
public class RemndrLttotPblancDetailServiceImpl implements RemndrLttotPblancDetailService{

	@Autowired
	private RemndrLttotPblancDetailMapper mapper;

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveRemndrLttotPblancDetailService(RemndrLttotPblancDetail rd) {
		int result = 0;
		result = mapper.insertRemndrLttotPblancDetail(rd);
		return result;
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveRemndrMdlService(RemndrMdl rm) {
		int result = 0;
		result = mapper.insertRemndrMdl(rm);
		return result;
	}

}
