package com.kh.realfinal.politics.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.realfinal.politics.model.vo.ProfileMna;

@Mapper
public interface ProfileMnaMapper {
	
//	List<ProfileMna> selectProfileMna(RowBounds rowBounds, Map<String, String> map); 
	int selectProfileMnaCount(Map<String, String> map); 
	
	List<ProfileMna> selectProfileMna(RowBounds rowBounds); 
	int selectProfileMnaCount(); 
	
	int insertProfileMna(ProfileMna profile);
}


