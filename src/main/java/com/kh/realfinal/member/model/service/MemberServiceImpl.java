package com.kh.realfinal.member.model.service;

import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.kh.realfinal.member.model.mapper.MemberMapper;
import com.kh.realfinal.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberMapper mapper;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder; // SHA-256 Hash code 알고리즘 활용 객체 (일방향 암호화)
	
	// 로그인
	@Override
	public Member login(String user_id, String user_password) {
		
		Member member = this.findById(user_id);
		if(member == null) { //id로 찾았는데 member가 없을 때
			return null;
		}
		System.out.println(member.getUser_password()); // Hash 코드로 암호화된 비밀번호가 저장되어있음
		System.out.println(passwordEncoder.encode(user_password)); // encode를 통해 평문에서 암호문으로 변경
		System.out.println(passwordEncoder.matches(user_password, member.getUser_password())); 
		System.out.println("in service Impl user_id : " + user_id + " / user_password : " + user_password);
		
		if(member != null && passwordEncoder.matches(user_password, member.getUser_password()) == true) {
			// 인증 성공
			return member;
		}else {
			// 인증 실패
			return null;
		}
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int save(Member member) {
		int result = 0;
		
		if(member.getUser_no() != 0) { 
			String encodePwd = passwordEncoder.encode(member.getUser_password());
			member.setUser_password(encodePwd);
			result = mapper.updateMember(member);
		}else { 
			String encodePwd = passwordEncoder.encode(member.getUser_password());
			member.setUser_password(encodePwd);
			result = mapper.insertMember(member);
		}
		return result;	
		}
	
	@Override
	public boolean validate(String userId) {
		return this.findById(userId) != null;
	}

	@Override
	public Member findById(String user_id) {
		return mapper.selectMember(user_id);
	}

	@SuppressWarnings("unused")
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int delete(int user_no, String user_id ,String user_password) {
		Member member = this.findById(user_id);
		System.out.println("member : " + member);
		System.out.println("userpassword : " + passwordEncoder.encode(user_password));
		System.out.println("member.getUser_password : " + member.getUser_password());
		if(member == null) { //id로 찾았는데 member가 없을때
			return -1;
		}
		if(member != null && passwordEncoder.matches(user_password, member.getUser_password()) == true) {
			// 인증성공하였을때
			System.out.println("인증성공 : " + user_no);
			return mapper.deleteMember(user_no);
		}else {
			//인증실패하였을때
			return -1;
		}
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int updatePwd(Member loginMember, String user_password) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("no", ""+loginMember.getUser_no());
		map.put("newPwd", passwordEncoder.encode(user_password));
		return mapper.updatePwd(map);
	}
}