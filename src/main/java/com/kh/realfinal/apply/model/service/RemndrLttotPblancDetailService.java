package com.kh.realfinal.apply.model.service;

import com.kh.realfinal.apply.model.vo.RemndrLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.RemndrMdl;

public interface RemndrLttotPblancDetailService {
	
	// 청약상세페이지
	RemndrLttotPblancDetail getSelectRemndrNo(String no);
	RemndrMdl getSelectRemndrMdlNo(String no);
	
	
	// 청약파싱
	int saveRemndrLttotPblancDetailService(RemndrLttotPblancDetail rd);
	int saveRemndrMdlService(RemndrMdl rm);
}
