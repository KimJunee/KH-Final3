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
	// @Transactional : DB 트랜잭션 관리를 위한 어노테이션. 만일 오류 발생할시 자동으로 롤백을 지원하고, 아니면 커밋
	// (rollbackFor = Exception.class) : 사용하지 않은 경우! 트랜잭션 관리기능이 작동하지 않음!!
	
	// 1. DAO로 만들 때 필요한 선언
//	@Autowired
//	private BoardDao dao;
//	@Autowired
//	private SqlSessionTemplate sqlSession;
	
	// 2. Mapper 활용할때 필요한 선언
	@Autowired
	private ProfileMnaMapper mapper;

	
	// 국회의원 DB INSERT
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveProfileMna(ProfileMna profile) {
		int result = mapper.insertProfileMna(profile);
		return result;
	}

	// 국회의원 인원수 299명
	@Override
	public int getProfileCount(Map<String, String> param) {
		return mapper.selectProfileMnaCount(param);
	}
	
	// 국회의원 프로필 리스트
	@Override
	public List<ProfileMna> getProfileList(PageInfo pageInfo, Map<String, String> param) {
		// paging 처리를 위한 RowBounds 코드 셋팅
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		return mapper.selectProfileMnaList(rowBounds, param);
	}

	// 국회의원 프로필 상세내용
	@Override
	public ProfileMna getProfile(int profileNo) {
		ProfileMna profile = mapper.selectProfileOne(profileNo);
		String newTitle = profile.getMemTitle().replace("\n", "<br>");
		profile.setMemTitle(newTitle);
		return profile;
	}
}
