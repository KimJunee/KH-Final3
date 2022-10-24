package com.kh.realfinal.opinion.model.service;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.opinion.model.mapper.OpinionMapper;
import com.kh.realfinal.opinion.model.vo.Opinion;

@Service
public class OponionServiceImpl implements OpinionService{
	
	@Autowired
	private OpinionMapper mapper;

	// 오피니언 DB INSERT
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveOpinion(Opinion opinion) {
		int result = mapper.insertOpinion(opinion);
		return result;
	}

	// 오피니언 목록
	@Override
	public List<Opinion> getOpinionList(PageInfo pageInfo, Map<String, String> param) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());

		return mapper.selectOpinion(rowBounds, param);
	}

	// 갯수
	@Override
	public int getOpinionCount(Map<String, String> param) {
		return mapper.selectOpinionCount(param);
	}
	
	// 오피니언 메인 상단 1개 출력
	@Override
	public Opinion getSelectOpinionMain1() {
		return mapper.selectOpinionMain1();
	}
	
	// 오피니언 메인 사이드 4개 출력
	@Override
	public List<Opinion> getSelectOpinionMainSide() {
		return mapper.selectOpinionMainSide();
	}
	
	// 메인, 오피니언 메인 10개 출력
	@Override
	public List<Opinion> getSelectEditorialist() {
		return mapper.selectEditorialist();
	}
	
	// 정치 사이드 2개 출력
	@Override
	public List<Opinion> getSelectOpinionForPolitics() {
		return mapper.selectOpinionForPolitics();
	}
	
	// 오피니언 상세보기
	public Opinion getOpinionOne(int opinionNo) {
		Opinion opinion = mapper.selectOpinionOne(opinionNo);
		return opinion;
	}
}