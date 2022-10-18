package com.kh.realfinal.apply.model.service;

import java.util.List;
import java.util.Map;

import com.kh.realfinal.apply.model.vo.RemndrLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.RemndrMdl;
import com.kh.realfinal.common.util.PageInfo;

public interface RemndrLttotPblancDetailService {
	
	// 청약 파싱
	int saveRemndrLttotPblancDetailService(RemndrLttotPblancDetail rd);
	int saveRemndrMdlService(RemndrMdl rm);
}
