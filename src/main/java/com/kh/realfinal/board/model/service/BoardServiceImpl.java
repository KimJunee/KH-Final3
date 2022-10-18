package com.kh.realfinal.board.model.service;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import com.kh.realfinal.board.model.mapper.BoardMapper;
import com.kh.realfinal.board.model.vo.Board;
import com.kh.realfinal.board.model.vo.Reply;
import com.kh.realfinal.common.util.PageInfo;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardMapper mapper;

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveBoard(Board board) {
		int result = 0;
		System.out.println(board.toString());
		if(board.getBoard_no() == 0) {
			result = mapper.insertBoard(board);
		}else {
			result = mapper.updateBoard(board);
		}
		return result;
	}

	@Override
	public int saveReply(Reply reply) {
		return mapper.insertReply(reply);
	}

	@Override
	public String saveFile(MultipartFile upfile, String savePath) {
		try {
			System.out.println("savePath : "+savePath);
			File folder = new File(savePath);
			if(folder.exists() == false) {
				folder.mkdirs();
			}
			
			String board_originalFileName = upfile.getOriginalFilename();
			String board_renamedFileName = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd_HHmmssSSS"))
					+ board_originalFileName.substring(board_originalFileName.lastIndexOf("."));
			String reNamePath = savePath + "/" + board_renamedFileName;
		
		
			upfile.transferTo(new File(reNamePath));
			return board_renamedFileName;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public int getBoardCount(Map<String, String> param) {
		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		
		searchMap.put("board_list_no", param.get("type"));
		
		if(searchValue != null && searchValue.length() > 0) {
			String type = param.get("sdarchType");
			if(type.equals("board_title")) {
				searchMap.put("titleKeyword", searchValue);
			} else if(type.equals("board_content")) {
				searchMap.put("contentKeyword", searchValue);
			} else if(type.equals("user_NickName")) {
				searchMap.put("NickNameKeyword", searchValue);
			}
		}
		return mapper.selectBoardCount(searchMap);
	}

	@Override
	public List<Board> getBoardList(PageInfo pageInfo, Map<String, String> param) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		
		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		searchMap.put("board_list_no", param.get("type"));
		
		if(searchValue != null && searchValue.length() > 0) {
			String type = param.get("searchType");
			if(type.equals("board_title")) {
				searchMap.put("titleKeyword", searchValue);
			} else if(type.equals("board_content")) {
				searchMap.put("contentKeyword", searchValue);
			} else if(type.equals("user_NickName")) {
				searchMap.put("NickNameKeyword", searchValue);
			} 
		}
		return mapper.selectBoardList(rowBounds, searchMap);
	}
	
	@Override
	public List<Board> getBoardListMain() {
		return mapper.selectBoardListMain();
	}

	@Override
	@Transactional(rollbackFor =  Exception.class)
	public Board findByNo(int boardNo) {
		Board board = mapper.selectBoardByNo(boardNo);
		board.setBoard_hit(board.getBoard_hit() + 1); // 조회수 늘리는 코드
		mapper.updateHit(board);
		return board;
	}

	@Override
	public void deleteFile(String filePath) {
		System.out.println(filePath);
		File file = new File(filePath);
		if(file.exists()) {
			file.delete();
		}
	}

	@Override
	@Transactional(rollbackFor =  Exception.class)
	public int deleteBoard(int no, String rootPath) {
		Board board = mapper.selectBoardByNo(no);
		deleteFile(rootPath+ "\\" + board.getBoard_renamedFileName());
		return mapper.deleteBoard(no);
	}

	@Override
	@Transactional(rollbackFor =  Exception.class)
	public int deleteReply(int no) {
		return mapper.deleteReply(no);
	}
}