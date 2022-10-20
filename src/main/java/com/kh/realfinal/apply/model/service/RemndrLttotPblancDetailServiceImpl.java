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
	private RemndrLttotPblancDetailMapper Remndrmapper;
	
	// 상세페이지에서 공고번호로 객체 가져오기
	@Override
	public RemndrLttotPblancDetail getSelectRemndrNo(String no) {
		RemndrLttotPblancDetail remndr = Remndrmapper.selectRemndrNo(no);
		return remndr;
	}
	
	@Override
	public RemndrMdl getSelectRemndrMdlNo(String no) {
		RemndrMdl remndrMdl = Remndrmapper.selectRemndrMdlNo(no);
		return remndrMdl;
	}


	
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
