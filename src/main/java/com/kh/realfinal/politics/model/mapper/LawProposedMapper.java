package com.kh.realfinal.politics.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.realfinal.politics.model.vo.LawProposed;

@Mapper
public interface LawProposedMapper {
	// paging 처리를 위한 RowBounds 셋팅 방법
	int insertLawProposed(LawProposed proposed); // 대표발의법안 INSERT
	LawProposed selectLawProposed(int lawNo); // 대표발의법안 list
	List<LawProposed> selectLawProposedList(RowBounds rowBounds, Map<String, String> map); // 대표발의법안 하단 검색 list
	int selectLawProposedCount(Map<String, String> map); // 대표발의법안 
	
}





