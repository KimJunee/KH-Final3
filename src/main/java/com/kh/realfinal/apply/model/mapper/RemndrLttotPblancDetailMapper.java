package com.kh.realfinal.apply.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.apply.model.vo.RemndrLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.RemndrMdl;

@Mapper
public interface RemndrLttotPblancDetailMapper {
	
	// 청약상세페이지
	RemndrLttotPblancDetail selectRemndrNo(String no);
	RemndrMdl selectRemndrMdlNo(String no);
	
	// ---------------------------------- 청약 파싱
	int insertRemndrLttotPblancDetail(RemndrLttotPblancDetail rd);
	int insertRemndrMdl(RemndrMdl rm);

}
