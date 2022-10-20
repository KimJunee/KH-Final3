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
	private UrbtyOfctlLttotPblancDetailMapper urbtymapper;
	
	// 상세페이지에서 공고번호로 객체 가져오기
	@Override
	public UrbtyOfctlLttotPblancDetail getSelectUrbtyNo(String no) {
		UrbtyOfctlLttotPblancDetail urbty = urbtymapper.selectUrbtyNo(no);
		return urbty;
	}

	@Override
	public UrbtyMdl getSelectUrbtyMdlNo(String no) {
		UrbtyMdl urbtyMdl = urbtymapper.selectUrbtyMdlNo(no);
		return urbtyMdl;
	}
	
	// ------------------------------------- 데이터 파싱
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveUrbtyOfctlLttotPblancDetailService(UrbtyOfctlLttotPblancDetail ud) {
		int result = 0;
		result = urbtymapper.insertUrbtyOfctlLttotPblancDetail(ud);
		return result;
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveUrbtyMdlService(UrbtyMdl um) {
		int result = 0;
		result = urbtymapper.insertUrbtyMdl(um);
		return result;
	}



}
