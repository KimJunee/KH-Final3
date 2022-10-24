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
	
	public Opinion selectOpinionMain1();			// 오피니언 메인 상단 1개 출력
	public List<Opinion> selectOpinionMainSide();		// 오피니언 메인 사이드 4개 출력
	public List<Opinion> selectEditorialist();			// 메인, 오피니언 메인 10개 출력
	public List<Opinion> selectOpinionForPolitics();	// 정치 사이드 2개 출력
}