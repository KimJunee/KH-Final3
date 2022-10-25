package com.kh.realfinal.apply.model.mapper;

import java.util.List;
import java.util.Map;

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
	
	
	// 청약 캘린더용-------------------시작
	List<RemndrLttotPblancDetail> selectRemndrList1(Map<String, String> map);
	List<RemndrLttotPblancDetail> selectRemndrList2(Map<String, String> map);
	// 청약 캘린더용-------------------끝
}
