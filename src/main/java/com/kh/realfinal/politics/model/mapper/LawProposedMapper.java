package com.kh.realfinal.politics.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.realfinal.politics.model.vo.LawProposed;

@Mapper
public interface LawProposedMapper {
	int insertLawProposed(LawProposed proposed);
	LawProposed selectLawProposed(int lawNo);
	List<LawProposed> selectLawProposedList(RowBounds rowBounds, Map<String, String> map);
	int selectLawProposedCount(Map<String, String> map);
	
}





