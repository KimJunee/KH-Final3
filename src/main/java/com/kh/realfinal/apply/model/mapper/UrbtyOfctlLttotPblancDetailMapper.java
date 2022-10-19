package com.kh.realfinal.apply.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.realfinal.apply.model.vo.UrbtyOfctlLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.UrbtyMdl;

@Mapper
public interface UrbtyOfctlLttotPblancDetailMapper {
	
	// 청약리스트 조회
	List<UrbtyOfctlLttotPblancDetail> UrbtyList(RowBounds rowBounds, Map<String, String> map);
	int UrbtyListCount(Map<String, String> map);
	
	// ---------------------------------- 청약 파싱
	int insertUrbtyOfctlLttotPblancDetail(UrbtyOfctlLttotPblancDetail ud);
	int insertUrbtyMdl(UrbtyMdl um);
}
