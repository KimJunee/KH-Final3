package com.kh.realfinal.mypageFinPro.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.realfinal.mypageFinPro.model.mapper.MypageFinProMapper;
import com.kh.realfinal.mypageFinPro.model.vo.MypageFinance;

@Service
public class MypageFinProServiceImpl implements MypageFinProService{
	
	@Autowired
	private MypageFinProMapper mapper;

	@Override
	public int saveMypageFin(MypageFinance mypageFinance) {
		int result = 0;
		
		result = mapper.insertMypageFin(mypageFinance);
		return result;
	}

	@Override
	public List<MypageFinance> getMypageFinList(int userNo) {
		List<MypageFinance> list = mapper.selectFinLikeList(userNo);
		return list;
	}

}
