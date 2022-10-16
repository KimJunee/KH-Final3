package com.kh.realfinal.politics.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;

import com.kh.realfinal.board.model.vo.Board;
import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.politics.model.vo.ProfileMna;

public interface ProfileMnaService {

	int saveProfileMna(ProfileMna profile);
//	public List<Board> getProfileList(PageInfo pageInfo, Map<String, String> param);
	public List<ProfileMna> getProfileList(PageInfo pageInfo);
	public int getProfileCount();

}
