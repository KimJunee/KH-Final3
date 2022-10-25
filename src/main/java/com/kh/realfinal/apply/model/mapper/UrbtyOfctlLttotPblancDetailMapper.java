package com.kh.realfinal.apply.model.mapper;

import java.util.List;
import java.util.Map;

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
	
	
	// 청약 캘린더용-------------------시작
	List<UrbtyOfctlLttotPblancDetail> selectUrbtyList1(Map<String, String> map);
	List<UrbtyOfctlLttotPblancDetail> selectUrbtyList2(Map<String, String> map);
	List<UrbtyOfctlLttotPblancDetail> selectUrbtyList3(Map<String, String> map);
	List<UrbtyOfctlLttotPblancDetail> selectUrbtyList4(Map<String, String> map);
	// 청약 캘린더용-------------------끝
}
