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

	@Override
	public int getOpinionCount(Map<String, String> param) {
		return mapper.selectOpinionCount(param);
	}
	
	public Opinion getOpinionOne(int opinionNo) {
		Opinion opinion = mapper.selectOpinionOne(opinionNo);
		return opinion;
	}
}