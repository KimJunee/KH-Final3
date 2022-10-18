package com.kh.realfinal.mypageBoard.model.service;

import java.util.List;
import java.util.Map;
import com.kh.realfinal.board.model.vo.Board;
import com.kh.realfinal.common.util.PageInfo;

public interface MypageBoardService {

	public int getBoardCount(Map<String, String> param);
	List<Board> getBoardList(PageInfo pageInfo, Map<String, String> param);
}