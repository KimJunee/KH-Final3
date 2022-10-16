package com.kh.realfinal.politics.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.politics.model.vo.ProfileMna;

@Mapper
public interface ProfileMnaMapper {
	int insertProfileMna(ProfileMna profile);
}


