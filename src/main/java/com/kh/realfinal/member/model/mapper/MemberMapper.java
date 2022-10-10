package com.kh.realfinal.member.model.mapper;



import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.member.model.vo.Member;

@Mapper
public interface MemberMapper {
	Member selectMember(String user_id);
	int insertMember(Member member);
	int updateMember(Member member);
	int deleteMember(int user_no);
}
