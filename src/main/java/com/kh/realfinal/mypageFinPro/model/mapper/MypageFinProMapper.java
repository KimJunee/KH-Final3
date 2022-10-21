package com.kh.realfinal.mypageFinPro.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.mypageFinPro.model.vo.MypageFinance;

@Mapper
public interface MypageFinProMapper {
	int insertMypageFin(MypageFinance mypageFinance);
	List<MypageFinance> selectFinLikeList(int userNo);
	
}
