package com.kh.realfinal.politics.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CardCutReply {
	private int c_reply_no; // 댓글번호
	private String c_reply_content; // 댓글내용
	private int cardCutNo; // 카드컷뉴스번호(외래키)
	private int c_writer_no; // 댓글쓴이번호
	private String c_reply_writer_id; // 댓글쓴이ID
	private String c_reply_writer_nickName; // 댓글쓴이닉네임
	private Date c_reply_register; // 등록날짜
	private Date c_reply_modify; // 수정날짜
}