package com.kh.realfinal.apply.model.service;

import java.util.List;

import java.util.Map;

import com.kh.realfinal.apply.model.vo.UrbtyMdl;
import com.kh.realfinal.apply.model.vo.UrbtyOfctlLttotPblancDetail;
import com.kh.realfinal.common.util.PageInfo;

public interface UrbtyOfctlLttotPblancDetailService {
	
//	List<UrbtyOfctlLttotPblancDetail> getUrbtyList(Map<String, String> param, String[] locationType, String[] houseType, String[] APTsupplyType, String[] scheType);
//	
	
	// 청약 파싱
	int saveUrbtyOfctlLttotPblancDetailService(UrbtyOfctlLttotPblancDetail ud);
	int saveUrbtyMdlService(UrbtyMdl um);

}
