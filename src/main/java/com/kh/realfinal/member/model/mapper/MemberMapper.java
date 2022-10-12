package com.kh.realfinal.member.model.mapper;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import com.kh.realfinal.member.model.vo.Member;

@Mapper
public interface MemberMapper {
	int selectCount();
	List<Member> selectAll();
	Member selectMember(String user_id);
	int insertMember(Member member);
	int updateMember(Member member);
	int updatePwd(Map<String, String> map);
	int deleteMember(@Param("no") int user_no);
}