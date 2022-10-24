package com.kh.realfinal.opinion.model.mapper;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;
import com.kh.realfinal.opinion.model.vo.Opinion;

@Mapper
public interface OpinionMapper {
	int insertOpinion(Opinion opinion);

	List<Opinion> selectOpinion(RowBounds rowBounds, Map<String, String> param);
	int selectOpinionCount(Map<String, String> param);
	Opinion selectOpinionOne(int opinionNo);
}