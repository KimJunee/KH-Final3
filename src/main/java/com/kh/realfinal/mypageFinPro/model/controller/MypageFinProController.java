package com.kh.realfinal.mypageFinPro.model.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.realfinal.member.model.vo.Member;
import com.kh.realfinal.mypageFinPro.model.service.MypageFinProService;
import com.kh.realfinal.mypageFinPro.model.vo.MypageFinance;

@SessionAttributes("loginMember")
@Controller
public class MypageFinProController {
	@Autowired
	private MypageFinProService service;
	
	@RequestMapping("/mypage/finProLikeIns")
	public String saveFinLikeIns(Model model, @ModelAttribute MypageFinance mypageFinance,
			@SessionAttribute(name= "loginMember", required = false) Member loginMember) {
		if(loginMember == null) {
			model.addAttribute("msg", "로그인 후 이용가능합니다.");
			model.addAttribute("location", "/finance/productDetail?id=" + mypageFinance.getPrtId());
			return "common/msg";
		}
		mypageFinance.setUserNo(loginMember.getUser_no());
		
		int result = 0;
		try {
			result = service.saveMypageFin(mypageFinance);			
		} catch (Exception e) {
			result = -1;
			e.printStackTrace();
		}
		if(result > 0) {
			model.addAttribute("msg", "찜 추가에 성공하였습니다.");
			model.addAttribute("location", "/finance/productDetail?id=" + mypageFinance.getPrtId());
		}else {
			model.addAttribute("msg", "찜 추가에 실패하였습니다. 다시 한번 확인해주세요.");
			model.addAttribute("location", "/finance/productDetail?id=" + mypageFinance.getPrtId());
		}		
		return "common/msg";
	}
	
	@RequestMapping("/mypage/finProLikeDe")
	public String saveFinLikeDe(Model model, @ModelAttribute MypageFinance mypageFinance,
			@SessionAttribute(name= "loginMember", required = false) Member loginMember) {
		if(loginMember == null) {
			model.addAttribute("msg", "로그인 후 이용가능합니다.");
			model.addAttribute("location", "/finance/depositDetail?id=" + mypageFinance.getPrtId());
			return "common/msg";
		}
		mypageFinance.setUserNo(loginMember.getUser_no());
		
		int result = 0;
		try {
			result = service.saveMypageFin(mypageFinance);			
		} catch (Exception e) {
			result = -1;
			e.printStackTrace();
		}
		if(result > 0) {
			model.addAttribute("msg", "찜 추가에 성공하였습니다.");
			model.addAttribute("location", "/finance/depositDetail?id=" + mypageFinance.getPrtId());
		}else {
			model.addAttribute("msg", "찜 추가에 실패하였습니다. 다시 한번 확인해주세요.");
			model.addAttribute("location", "/finance/depositDetail?id=" + mypageFinance.getPrtId());
		}		
		return "common/msg";
	}
	
	@RequestMapping("/mypage/finProLikeLease")
	public String saveFinLikeDeLease(Model model, @ModelAttribute MypageFinance mypageFinance,
			@SessionAttribute(name= "loginMember", required = false) Member loginMember) {
		if(loginMember == null) {
			model.addAttribute("msg", "로그인 후 이용가능합니다.");
			model.addAttribute("location", "/finance/leaseLoanDetail?id=" + mypageFinance.getPrtId());
			return "common/msg";
		}
		mypageFinance.setUserNo(loginMember.getUser_no());
		
		int result = 0;
		try {
			result = service.saveMypageFin(mypageFinance);			
		} catch (Exception e) {
			result = -1;
			e.printStackTrace();
		}
		if(result > 0) {
			model.addAttribute("msg", "찜 추가에 성공하였습니다.");
			model.addAttribute("location", "/finance/leaseLoanDetail?id=" + mypageFinance.getPrtId());
		}else {
			model.addAttribute("msg", "찜 추가에 실패하였습니다. 다시 한번 확인해주세요.");
			model.addAttribute("location", "/finance/leaseLoanDetail?id=" + mypageFinance.getPrtId());
		}		
		return "common/msg";
	}
	
	@RequestMapping("/mypage/finProLikeMort")
	public String saveFinLikeDeMort(Model model, @ModelAttribute MypageFinance mypageFinance,
			@SessionAttribute(name= "loginMember", required = false) Member loginMember) {
		if(loginMember == null) {
			model.addAttribute("msg", "로그인 후 이용가능합니다.");
			model.addAttribute("location", "/finance/mortgageDetail?id=" + mypageFinance.getPrtId());
			return "common/msg";
		}
		mypageFinance.setUserNo(loginMember.getUser_no());
		
		int result = 0;
		try {
			result = service.saveMypageFin(mypageFinance);			
		} catch (Exception e) {
			result = -1;
			e.printStackTrace();
		}
		if(result > 0) {
			model.addAttribute("msg", "찜 추가에 성공하였습니다.");
			model.addAttribute("location", "/finance/mortgageDetail?id=" + mypageFinance.getPrtId());
		}else {
			model.addAttribute("msg", "찜 추가에 실패하였습니다. 다시 한번 확인해주세요.");
			model.addAttribute("location", "/finance/mortgageDetail?id=" + mypageFinance.getPrtId());
		}		
		return "common/msg";
	}
	
//	@RequestMapping("/mypage/finPro")
//	public String findFinProLike()
	
	
}
