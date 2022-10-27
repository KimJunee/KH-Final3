package com.kh.realfinal.member.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.realfinal.member.model.service.KakaoService;
import com.kh.realfinal.member.model.service.MemberService;
import com.kh.realfinal.member.model.vo.Member;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;


@Controller
@SessionAttributes("loginMember") // loingMember를 model에서 취급할때 Session으로 처리하는 파라메터
@Slf4j
@AllArgsConstructor
public class KakaoController {
	
	@Autowired
    private KakaoService kakaoService;
	
	@Autowired
    private MemberService memberService;
	
	@GetMapping("/kakao/callback")
	public String kakaoLogin(Model model,String code) throws Exception{
		// code는 카카오 서버로부터 받은 인가코드
		System.out.println("code : " + code);
		System.out.println("카카오로그인 실행");
		
		String access_Token = kakaoService.getAccessToken(code);
		System.out.println("access_Token : " + access_Token);
		Member userInfo = kakaoService.getUserInfo(access_Token);
		System.out.println("###uNo#### : " + userInfo.getUser_no());
		System.out.println("###nickname#### : " + userInfo.getUser_name());
		System.out.println("###email#### : " + userInfo.getUser_email());
		
		
		
		model.addAttribute("loginMember", userInfo);
		model.addAttribute("msg", "카카오 로그인이 완료 되었습니다.");
		model.addAttribute("location", "/main.do");
		
		return "/common/msg";
	}
	

//    @GetMapping("/kakao/callback")
//    public String redirectkakao(Model model, @RequestParam String code, HttpSession session) throws IOException {
//        System.out.println("code:: " + code);
//
//        // 접속토큰 get
//        String kakaoToken = kakaoService.getReturnAccessToken(code);
//
//        // 접속자 정보 get
//        Map<String, Object> result = kakaoService.getUserInfo(kakaoToken);
//        log.info("result:: " + result);
//        String snsId = (String) result.get("id");
//        String userName = (String) result.get("nickname");
//        String email = (String) result.get("email");
//        String userpw = snsId;
//
//        // 분기
//        Member member = new Member();
//        // 일치하는 snsId 없을 시 회원가입
//        System.out.println(memberService.kakaoLogin(snsId));
//        if (memberService.kakaoLogin(snsId) == null) {
//            log.warn("카카오로 회원가입");
//            member.setUser_id(email);
//            member.setUser_password(userpw);
//            member.setUser_name(userName);
//            member.setSns_id(snsId);
//            member.setUser_email(email);
//            Member loginMember = memberService.kakaoJoin(member);
//            model.addAttribute("msg", "카카오 회원가입후 로그인이 되었습니다.");
//            model.addAttribute("loginMember", loginMember);
//    		return "main/main";
//        }
//
//        // 일치하는 snsId가 있으면 멤버객체에 담음.
//        log.warn("카카오로 로그인");
//        String userid = memberService.findUserIdBy2(snsId);
//        Member loginMember = memberService.findById(userid);
//        log.warn("member:: " + loginMember);
//            /*Security Authentication에 붙이는 과정*/
////        CustomUser user = new CustomUser(vo);
////        log.warn("user : " + user);
////        List<GrantedAuthority> roles = CustomUser.getList(vo);
////        Authentication auth = new UsernamePasswordAuthenticationToken(user, null, roles);
////        log.warn("auth : " + auth);
////        SecurityContextHolder.getContext().setAuthentication(auth);
//
//        /* 로그아웃 처리 시, 사용할 토큰 값 */
//        model.addAttribute("msg", "카카오로그인이 되었습니다.");
//        session.setAttribute("kakaoToken", kakaoToken);
//        model.addAttribute("loginMember", loginMember);
//		return "main/main";
//
//    }

}