package com.kh.realfinal.politics.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
}
