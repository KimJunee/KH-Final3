package com.kh.realfinal.member.model.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.member.model.mapper.MemberMapper;
import com.kh.realfinal.member.model.vo.Member;

public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberMapper mapper;
	
	@Override
	public Member login(String user_id, String user_password) {
		Member member = this.findById(user_id);
		
		if(member == null) { //id로 찾았는데 member가 없을때
			return null;
		}
		if(member != null && user_password == member.getUser_password()) {
			// 인증성공하였을때
			return member;
		}else {
			//인증실패하였을때
			return null;
		}
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int save(Member member) {
		int result = 0;
		
		if(member.getUser_no() != 0) {
			result = mapper.updateMember(member);
		}else {
			member.setUser_password(member.getUser_password());
			result = mapper.insertMember(member);
		}
		
		return result;	
		}

	@Override
	public Member findById(String user_id) {
		return mapper.selectMember(user_id);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int delete(int user_no, String user_password) {
		return mapper.deleteMember(user_no, user_password);
	}

}
