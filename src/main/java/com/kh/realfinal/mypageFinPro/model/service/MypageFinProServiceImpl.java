package com.kh.realfinal.mypageFinPro.model.service;

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

}
