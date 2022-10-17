package com.kh.realfinal.apply.model.service;

import java.util.List;
import java.util.Map;

import com.kh.realfinal.apply.model.vo.RemndrLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.RemndrMdl;
import com.kh.realfinal.common.util.PageInfo;

public interface RemndrLttotPblancDetailService {
	
	// 청약리스트 검색 결과 개수
//	int getListCount(Map<String, String> param);
	
	
	// 청약리스트 조회
//	List<RemndrLttotPblancDetail> getRemndrList(PageInfo pageInfo);
//	List<RemndrLttotPblancDetail> getRemndrList();
	
	// 청약 파싱
	int saveRemndrLttotPblancDetailService(RemndrLttotPblancDetail rd);
	int saveRemndrMdlService(RemndrMdl rm);
}
