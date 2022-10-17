package com.kh.realfinal.apply.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.realfinal.apply.model.vo.RemndrLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.RemndrMdl;

@Mapper
public interface RemndrLttotPblancDetailMapper {
	
	// 청약리스트 조회
	List<RemndrLttotPblancDetail> RemndrList(RowBounds rowBounds, Map<String, String> map);
	int RemndrListCount(Map<String, String> map);

	// 청약리스트 검색 결과 개수
//	int selectListCount(Map<String, String> map);

	
	
	// ---------------------------------- 청약 파싱
	int insertRemndrLttotPblancDetail(RemndrLttotPblancDetail rd);
	int insertRemndrMdl(RemndrMdl rm);

}
