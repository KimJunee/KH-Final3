package com.kh.realfinal.apply.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.apply.model.vo.UrbtyOfctlLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.UrbtyMdl;

@Mapper
public interface UrbtyOfctlLttotPblancDetailMapper {
	
	// 청약 상세페이지
	UrbtyOfctlLttotPblancDetail selectUrbtyNo(String no);
	UrbtyMdl selectUrbtyMdlNo(String no);
	
	// ---------------------------------- 청약 파싱
	int insertUrbtyOfctlLttotPblancDetail(UrbtyOfctlLttotPblancDetail ud);
	int insertUrbtyMdl(UrbtyMdl um);
}
