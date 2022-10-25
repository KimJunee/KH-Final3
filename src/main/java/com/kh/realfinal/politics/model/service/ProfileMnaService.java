package com.kh.realfinal.politics.model.service;

import java.util.List;
import java.util.Map;

import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.politics.model.vo.ProfileMna;

public interface ProfileMnaService {

	int saveProfileMna(ProfileMna profile); // 국회의원 DB INSERT
	public int getProfileCount(Map<String, String> param); // 국회의원 인원수 299명
	public List<ProfileMna> getProfileList(PageInfo pageInfo, Map<String, String> param); // 국회의원 프로필 리스트
	public ProfileMna getProfile(int profileNo); // 국회의원 프로필 상세내용

}
