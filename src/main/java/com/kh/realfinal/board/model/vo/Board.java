package com.kh.realfinal.board.model.vo;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Board {
	private int    board_no;                //게시글번호
	private int    user_no;                 //사용자번호(외래키)
	private String user_NickName;			//사용자닉네임
	private int writer_no;					//글쓴이번호
	private String writer_id;				//글쓴이ID
	private int    board_list_no;           //게시판 구분 1은 정치, 2는 부동산, 3은 금융, 4는 자유
	private int    board_hit;               //조회수
	private String board_title;             //제목
	private String board_content;           //내용
	private Date   board_register;          //등록일시
	private String board_originalFileName;  //첨부파일원래이름
	private String board_renamedFileName;   //첨부파일변경이름
	private List<Reply> replies;            //댓글리스트 가져오기? 수업코드에 있어서 가져옴
}
