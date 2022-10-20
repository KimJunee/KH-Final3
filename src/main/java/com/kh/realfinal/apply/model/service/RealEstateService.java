package com.kh.realfinal.apply.model.service;

import java.util.List;



import java.util.Map;

import com.kh.realfinal.apply.model.vo.AptLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.AptLttotPblancMdl;
import com.kh.realfinal.apply.model.vo.RealEstateList;
import com.kh.realfinal.common.util.PageInfo;

public interface RealEstateService {

	// 청약상세조회 페이지
	List<RealEstateList> getRealBoardList(PageInfo pageInfo, Map<String, String> param, String[] locationType, String[] houseType, String[] APTsupplyType, String[] scheType);
	int getRealBoardListCount(Map<String, String> param, String[] locationType, String[] houseType, String[] APTsupplyType, String[] scheType);

	
	// 청약상세 페이지 - apt
	AptLttotPblancDetail getSelectAptNo(String no);
	AptLttotPblancMdl getSelectAptMdlNo(String no);


}
