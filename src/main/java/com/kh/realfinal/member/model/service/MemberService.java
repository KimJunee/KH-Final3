package com.kh.realfinal.member.model.service;

import com.kh.realfinal.member.model.vo.Member;

public interface MemberService {
	Member login(String user_id, String user_password);
	int save(Member member);
	Member findById(String user_id);
	int delete(int user_no, String user_id ,String user_password);
	
}
