package com.kh.realfinal.mypageFinPro.model.service;

import java.util.List;

import com.kh.realfinal.mypageFinPro.model.vo.MypageFinance;

public interface MypageFinProService {
	int saveMypageFin(MypageFinance mypageFinance);
	List<MypageFinance> getMypageFinList(int userNo);

}
