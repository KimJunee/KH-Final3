package com.kh.realfinal.board.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Reply {
	private int reply_no;         //댓글번호
	private String reply_content; //댓글내용 
	private Date reply_register;  //등록날짜
	private int user_no;          //사용자번호(외래키)
	private int board_no;         //게시글번호(외래키)
}
