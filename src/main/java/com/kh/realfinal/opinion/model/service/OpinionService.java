package com.kh.realfinal.opinion.model.service;

import java.util.List;
import java.util.Map;
import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.opinion.model.vo.Opinion;
import com.kh.realfinal.opinion.model.vo.OpinionReply;

public interface OpinionService {
	int saveOpinion(Opinion opinion);
	List<Opinion> getOpinionList(PageInfo pageInfo, Map<String, String> param);
	int getOpinionCount(Map<String, String> param);
	Opinion getOpinionOne(int opinionNo);
	Opinion getSelectOpinionMain1();
	List<Opinion> getSelectOpinionMainSide();
	List<Opinion> getSelectEditorialist();
	List<Opinion> getSelectOpinionForPolitics();
	List<Opinion> getSelectEditorialistAll();
	int saveReply(OpinionReply reply);
	int editReply(OpinionReply reply);
	int deleteReply(int no);
}