package com.kh.realfinal.apply.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.apply.model.vo.UrbtyOfctlLttotPblancDetail;
import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.apply.model.vo.UrbtyMdl;

@Mapper
public interface UrbtyOfctlLttotPblancDetailMapper {
	
	// 청약 상세페이지
	
	
//	List<UrbtyOfctlLttotPblancDetail> UrbtyList(PageInfo pageInfo, Map<String, String> param, String[] locationType, String[] houseType, String[] APTsupplyType, String[] scheType);
//	int UrbtyListCount(Map<String, String> map);
	
	// ---------------------------------- 청약 파싱
	int insertUrbtyOfctlLttotPblancDetail(UrbtyOfctlLttotPblancDetail ud);
	int insertUrbtyMdl(UrbtyMdl um);
}
