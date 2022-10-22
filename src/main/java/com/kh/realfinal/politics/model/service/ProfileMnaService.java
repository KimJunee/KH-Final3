package com.kh.realfinal.politics.model.service;

import java.util.List;
import java.util.Map;

import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.politics.model.vo.ProfileMna;

public interface ProfileMnaService {

	int saveProfileMna(ProfileMna profile);
	
	public List<ProfileMna> getProfileList(PageInfo pageInfo, Map<String, String> param);
	public int getProfileCount(Map<String, String> param);
	public ProfileMna getProfile(int profileNo);

}
