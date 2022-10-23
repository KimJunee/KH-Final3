package com.kh.realfinal.mypageFinPro.model.service;

import java.util.List;
import java.util.Map;

import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.mypageFinPro.model.vo.MypageFinance;

public interface MypageFinProService {
	int saveMypageFin(MypageFinance mypageFinance);
	List<MypageFinance> getMypageFinList(PageInfo pageInfo, Map<String, String> param);
	int getMypageFinCount(Map<String, String> param);
	int deleteFinLike(int prtId);
}
