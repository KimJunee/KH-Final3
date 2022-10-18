package com.kh.realfinal.apply.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.apply.model.mapper.ApplyInfoApiMapper;
import com.kh.realfinal.apply.model.vo.ApplyNotice;
import com.kh.realfinal.apply.model.vo.ApplyNoticeAttach;
import com.kh.realfinal.apply.model.vo.AptLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.AptLttotPblancMdl;

@Service
public class ApplyInfoApiServiceImpl implements ApplyInfoApiService {

	@Autowired
	private ApplyInfoApiMapper mapper;
	
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

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveApplyNoticeService(ApplyNotice an) {
		int result = 0;
		result = mapper.insertApplyNotice(an);
		
		return result;
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveApplyNoticeAttachService(ApplyNoticeAttach ana) {
		int result = 0;
		result = mapper.insertApplyNoticeAttach(ana);
		
		return result;
	}

}
