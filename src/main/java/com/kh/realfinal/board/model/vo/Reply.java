package com.kh.realfinal.board.model.vo;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Reply {
	private int    reply_no;         		//댓글번호
	private String reply_content;    		//댓글내용 
	private int    user_no;          		//사용자번호(외래키)
	private int    board_no;         		//게시글번호(외래키)
	private int	   board_list_no;
	private String board_title;
	private int    board_writer_no;		 	//글쓴이번호
	private String board_writer_id;		 	//글쓴이ID
	private String board_writer_nickName;	//글쓴이닉네임
	private int    reply_writer_no;		 	//댓글쓴이번호
	private String reply_writer_id;			//댓글쓴이ID
	private String reply_writer_nickName;	//댓글쓴이닉네임
	private Date   reply_register;   		//등록날짜
	private Date   reply_modify;	 		//수정날짜
}