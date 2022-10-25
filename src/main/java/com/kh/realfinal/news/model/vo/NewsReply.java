package com.kh.realfinal.news.model.vo;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
	
@Data
@NoArgsConstructor
@AllArgsConstructor
public class NewsReply {
	private int    n_reply_no;         		//댓글번호
	private String n_reply_content;    		//댓글내용 
	private int    user_no;          		//사용자번호(외래키)
	private int    newsNo;         		//오피니언글번호(외래키)
	private int    n_reply_writer_no;		//댓글쓴이번호
	private String n_reply_writer_id;		//댓글쓴이ID
	private String n_reply_writer_nickName;	//댓글쓴이닉네임
	private Date   n_reply_register;   		//등록날짜
	private Date   n_reply_modify;	 		//수정날짜
}