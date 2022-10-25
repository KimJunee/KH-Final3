package com.kh.realfinal.politics.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.realfinal.politics.model.vo.ProfileMna;

@Mapper
public interface ProfileMnaMapper {
	// paging 처리를 위한 RowBounds 셋팅 방법
	int insertProfileMna(ProfileMna profile);
	ProfileMna selectProfileOne(int no);
	List<ProfileMna> selectProfileMnaList(RowBounds rowBounds, Map<String, String> map); 
	int selectProfileMnaCount(Map<String, String> map); 
	
}


