package com.kh.realfinal.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Member {
	private int    user_no;	
	private String user_id;	
	private String user_name;
	private String user_nickname;
	private String user_phone;	
	private String user_password;
	private String user_email;
	private String user_status;
}