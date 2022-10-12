package com.kh.realfinal.member.model.service;

import com.kh.realfinal.member.model.vo.Member;

public interface MemberService {
	Member login(String user_id, String user_password);
	int save(Member member);
	boolean validate(String user_id);
	Member findById(String user_id);
	int delete(int user_no, String user_id ,String user_password);
	int updatePwd(Member loginMember, String user_password);
}
