package com.kh.realfinal.apply.model.service;

import com.kh.realfinal.apply.model.vo.UrbtyMdl;
import com.kh.realfinal.apply.model.vo.UrbtyOfctlLttotPblancDetail;

public interface UrbtyOfctlLttotPblancDetailService {
	
	// 청약상세페이지
	UrbtyOfctlLttotPblancDetail getSelectUrbtyNo(String no);
	UrbtyMdl getSelectUrbtyMdlNo(String no);
	
	// 청약 파싱
	int saveUrbtyOfctlLttotPblancDetailService(UrbtyOfctlLttotPblancDetail ud);
	int saveUrbtyMdlService(UrbtyMdl um);

}
