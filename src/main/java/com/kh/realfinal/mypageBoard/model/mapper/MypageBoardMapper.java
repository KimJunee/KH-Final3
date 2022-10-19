package com.kh.realfinal.mypageBoard.model.mapper;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;
import com.kh.realfinal.board.model.vo.Board;
import com.kh.realfinal.board.model.vo.Reply;

@Mapper
public interface MypageBoardMapper {
	List<Board> selectMypageBoardList(RowBounds rowBounds, Map<String, String> map); //마이 페이지 내 게시글 글 목록
	int selectMypageBoardCount(Map<String, String> map); //나의 게시글의 갯수를 구하는놈!(페이징 처리를 위해 필요함)
	List<Reply> selectMypageReplyList(RowBounds rowBounds, Map<String, String> searchMap);
	int selectMypageReplyCount(Map<String, String> searchMap);
}