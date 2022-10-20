package com.kh.realfinal.board.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.kh.realfinal.board.model.vo.Board;
import com.kh.realfinal.board.model.vo.Reply;

@Mapper
public interface BoardMapper {
	List<Board> selectBoardList(RowBounds rowBounds, Map<String, String> map);//전체게시글 글 목록
	int selectBoardCount(Map<String, String> map); //전체 게시글의 갯수를 구하는놈!(페이징처리를 위해 필요함)
	
	List<Board> selectPolBoardList(RowBounds rowBounds, Map<String, String> map);//정치 게시글 글 목록
	int selectPolBoardCount(Map<String, String> map); //정치 게시글의 갯수를 구하는놈!(페이징처리를 위해 필요함)
	
	List<Board> selectRealesBoardList(RowBounds rowBounds, Map<String, String> map);//부동산 게시글 글 목록
	int selectRealesBoardCount(Map<String, String> map); //부동산 게시글의 갯수를 구하는놈!(페이징처리를 위해 필요함)
	
	List<Board> selectFinBoardList(RowBounds rowBounds, Map<String, String> map);//금융 게시글 글 목록
	int selectFinBoardCount(Map<String, String> map); //금융 게시글의 갯수를 구하는놈!(페이징처리를 위해 필요함)
	
	List<Board> selectFreeBoardList(RowBounds rowBounds, Map<String, String> map);//자유 게시글 글 목록
	int selectFreeBoardCount(Map<String, String> map); //자유 게시글의 갯수를 구하는놈!(페이징처리를 위해 필요함)
	
	List<Board> selectMyBoardList(RowBounds rowBounds, Map<String, String> map); //마이 페이지 내 게시글 글 목록
	int selectMyBoardCount(Map<String, String> map); //나의 게시글의 갯수를 구하는놈!(페이징 처리를 위해 필요함)
	
	List<Reply> selectMyReplyList(RowBounds rowBounds, Map<String, String> map); //마이페이지 내 댓글 목록
	int selectMyReplyCount(Map<String, String> map); //나의 댓글의 갯수를 구하는놈!(페이징을위해 필요함)
	
	Board selectBoardByNo(int boardNo); //게시글 누르면 해당 게시글 상세기 나오게! 그리고 댓글도 같이 나옴
	
	int insertBoard(Board board); //게시글insert
	int insertReply(Reply reply); //댓글 insert
	int updateBoard(Board board); //게시글 update
	int updateReply(Reply reply); //댓글 update?
	int updateHit(Board board);   //조회수 update
	int deleteBoard(int no);      //게시글삭제
	int deleteReply(int no);	  //댓글삭제
	List<Board> selectBoardListMain(); //전체클 페이징 없이 들고오는놈
	public List<Board> sideBoardForEstate(Map<String, Object> param);	// 부동산메인 - 부동산게시글 출력
	public List<Board> sideBoardForPolitics(Map<String, Object> param);	// 정치 국회의원현황 - 정치게시글 출력
	public List<Board> sideBoard();	// 메인, 커뮤니티상세 - 인기게시글 출력
}