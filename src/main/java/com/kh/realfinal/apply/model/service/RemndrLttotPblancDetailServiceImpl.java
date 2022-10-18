package com.kh.realfinal.apply.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.apply.model.mapper.RemndrLttotPblancDetailMapper;
import com.kh.realfinal.apply.model.vo.RemndrLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.RemndrMdl;
import com.kh.realfinal.common.util.PageInfo;

@Service
public class RemndrLttotPblancDetailServiceImpl implements RemndrLttotPblancDetailService{

	@Autowired
	private RemndrLttotPblancDetailMapper Remndrmapper;
	
	// ------------------------------------- 데이터 파싱
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveRemndrLttotPblancDetailService(RemndrLttotPblancDetail rd) {
		int result = 0;
		result = Remndrmapper.insertRemndrLttotPblancDetail(rd);
		return result;
	}
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveRemndrMdlService(RemndrMdl rm) {
		int result = 0;
		result = Remndrmapper.insertRemndrMdl(rm);
		return result;
	}




	

}
