package com.kh.realfinal.politics.model.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.politics.model.mapper.ProfileMnaMapper;
import com.kh.realfinal.politics.model.vo.ProfileMna;

@Service
public class ProfileMnaServiceImpl implements ProfileMnaService  {
	
	@Autowired
	private ProfileMnaMapper mapper;
	 
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveProfileMna(ProfileMna profile) {
		int result = mapper.insertProfileMna(profile);
		return result;
	}

	@Override
	public List<ProfileMna> getProfileList(PageInfo pageInfo) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		return mapper.selectProfileMna(rowBounds);
	}

	@Override
	public int getProfileCount() {
		return mapper.selectProfileMnaCount();
	}

	@Override
	public List<ProfileMna> getProfileList(PageInfo pageInfo, Map<String, String> param) {
		return null;
	}
}
