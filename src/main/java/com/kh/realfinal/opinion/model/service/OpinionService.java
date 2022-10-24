package com.kh.realfinal.opinion.model.service;

import java.util.List;
import java.util.Map;
import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.opinion.model.vo.Opinion;

public interface OpinionService {
	int saveOpinion(Opinion opinion);
	List<Opinion> getOpinionList(PageInfo pageInfo, Map<String, String> param);
	int getOpinionCount(Map<String, String> param);
	Opinion getOpinionOne(int opinionNo);
}