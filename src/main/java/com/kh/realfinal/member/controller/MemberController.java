package com.kh.realfinal.member.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kh.realfinal.member.model.service.MemberService;
import com.kh.realfinal.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Slf4j // log용도
@SessionAttributes("loginMember") // loingMember를 model에서 취급할때 Session으로 처리하는 파라메터
@Controller
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder; // SHA-256 Hash code 알고리즘 활용 객체 (일방향 암호화)
	
	// 로그인
	@PostMapping("/logIn")
	public String login(Model model, String user_id, String user_password) {
		log.info("id : " + user_id + ", pw : " + user_password);
		Member loginMember = service.login(user_id, user_password);
		
		if(loginMember != null) {
			model.addAttribute("loginMember", loginMember);
			return "main/main";
		}else {
			model.addAttribute("msg", "아이디나 패스워드가 잘못되었습니다.");
			model.addAttribute("location", "/mypage/signIn");
			return "common/msg";
		}
	}
	
	// 로그인 페이지 가기
	@RequestMapping("/mypage/signIn")
	public String  goLogin(Model model) {
		return "mypage/signIn";
	}
	
	// 로그아웃
	@RequestMapping("/member/logout")
	public String logout(SessionStatus status) {
		log.info("status : " + status.isComplete());
		status.setComplete(); // 세션을 종료하는 코드
		log.info("status : " + status.isComplete());
		return "main/main";
	}
	
	@RequestMapping("/mypage/signUp")
	public String enrollPage() {
		log.info("가입 페이지 요청");
		return "mypage/signUp";
	}
	
	// 회원가입
	@PostMapping("/member/enroll")
	public ModelAndView enroll(ModelAndView model, @ModelAttribute Member member) {
		log.info("회원 가입, member : " + member);
		int result = 0;
		try {
			result = service.save(member);
		} catch (Exception e) {
			result = -1;
			e.printStackTrace();
		}
		if(result > 0) {
			model.addObject("msg", "회원가입에 성공하였습니다.");
			model.addObject("location", "/mypage/signIn");
		}else {
			model.addObject("msg", "회원가입에 실패하였습니다. 다시 한번 확인해주세요.");
			model.addObject("location", "/mypage/signUp");
		}
		model.setViewName("common/msg");
		return model;
	}
	
	// 아이디 중복확인
	@GetMapping("/member/idCheck")
	public ResponseEntity<Map<String,Object>> idCheck(String user_id){
		log.info("아이디 중복 확인, user id : "+ user_id);
		
		boolean result = service.validate(user_id);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("validate", result);
		
		return new ResponseEntity<Map<String,Object>>(map, HttpStatus.OK);
	}
	
	// 마이페이지 회원정보확인
	@GetMapping("/member/view")
	public String view() {
		log.info("회원 정보 페이지 요청");
		return "mypage/mypagePersonalInfo";
	}
	
	// 회원정보수정
	@GetMapping("/member/update")
	public String update(Model model,
				@ModelAttribute Member member,
				@SessionAttribute(name= "loginMember", required = false) Member loginMember
			) {
		System.out.println(loginMember);
		System.out.println(member);
		if(loginMember == null || loginMember.getUser_id().equals(member.getUser_id()) == false) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/main.do");
			return "common/msg";
		}
		
		member.setUser_no(loginMember.getUser_no());
		int result = service.save(member);
		
		if(result > 0 ) {
			model.addAttribute("loginMember", service.findById(member.getUser_id()));
			model.addAttribute("msg", "회원정보를 수정하였습니다.");
			model.addAttribute("location", "/member/view");
		}else {
			model.addAttribute("msg", "회원정보 수정을 실패하였습니다.");
			model.addAttribute("location", "/member/view");
		}
		return "common/msg";
	}
	
	// 회원탈퇴
	@GetMapping("/member/delete")
	public String delete(Model model, SessionStatus status, String user_password,
			@SessionAttribute(name= "loginMember", required = false) Member loginMember) {
		int result = service.delete(loginMember.getUser_no(), loginMember.getUser_id(), user_password);
		
		if(result > 0 ) {
			log.info("status : " + status.isComplete());
			status.setComplete(); // 세션을 종료하는 코드
			log.info("status : " + status.isComplete());
			model.addAttribute("msg", "정상적으로 탈퇴 되었습니다.");
			model.addAttribute("location", "/main.do");
		}else {
			model.addAttribute("msg", "회원 탈퇴에 실패하였습니다.");
			model.addAttribute("location", "/member/view");
		}
		return "common/msg";
	}
	
	@GetMapping("/member/updatePwd")
	public String updatePwd() {
		return "/member/updatePwd";
	}
	
	@PostMapping("/member/updatePwd")
	public String updatePwd(Model model,
			@SessionAttribute(name= "loginMember", required = false) Member loginMember,
			String userPwd) {
		log.info("update pw : " + userPwd);
		
		int result = service.updatePwd(loginMember, userPwd);
		
		if(result > 0 ) {
			model.addAttribute("msg", "정상적으로 수정되었습니다.");
		}else {
			model.addAttribute("msg", "비밀번호 변경에 실패하였습니다.");
		}
		model.addAttribute("script", "self.close()");
		return "common/msg";
	}
}