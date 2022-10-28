package com.kh.realfinal.mypageFinPro.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.realfinal.mypageFinPro.model.vo.MypageFinance;

@Mapper
public interface MypageFinProMapper {
	int insertMypageFin(MypageFinance mypageFinance);
	List<MypageFinance> selectFinLikeList(RowBounds rowBounds,  Map<String, String> map);
	int selectFinLikeCount(Map<String, String> map);
	int deleteFinLike(Map<String, String> map);
	
}
