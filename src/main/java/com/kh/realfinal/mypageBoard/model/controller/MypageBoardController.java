package com.kh.realfinal.mypageBoard.model.controller;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import com.kh.realfinal.board.model.vo.Board;
import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.member.model.vo.Member;
import com.kh.realfinal.mypageBoard.model.service.MypageBoardService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/MypageBoard")
@Controller
public class MypageBoardController {
	
	@Autowired
	private MypageBoardService service;
	
	// 마이페이지 - 내글목록 가기
	@GetMapping("/myBoard")
	public String goMyBoard() {
		log.info("마이페이지 내 글목록 가기!");
		return "mypage/mypageBoardList";
	}
	
	// 마이페이지 - 내가 쓴 글 목록
	@GetMapping("/mylist")
	public String myBoardList(Model model, @RequestParam Map<String, String> param,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember)  {
		
		int page = 1;
		if(param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {}
		}
		
		param.put("user_no",String.valueOf(loginMember.getUser_no()));
		PageInfo pageInfo = new PageInfo(page, 10, service.getBoardCount(param), 10);
		List<Board> list = service.getBoardList(pageInfo, param);
		
//		for (Board board : list) {
//			System.out.println("boardList : "+board.toString());
//		}
//		
//		System.out.println("나 누구 : " + loginMember);
		
		model.addAttribute("list",list);
		model.addAttribute("board_list_no", param.get("type"));
		model.addAttribute("param",param);
		model.addAttribute("pageInfo",pageInfo);
		return "/mypage/mypageBoardList";
	}
	
	// 마이페이지 - 내 댓글목록
	@GetMapping("/myReply")
	public String goMyReply() {
		log.info("마이페이지 내 댓글목록 가기!");
		return "mypage/mypageReply";
	}
	
	// 마이페이지 - 내가 쓴 댓글 목록
	
}