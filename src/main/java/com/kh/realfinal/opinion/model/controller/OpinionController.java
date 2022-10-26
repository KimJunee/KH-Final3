package com.kh.realfinal.opinion.model.controller;

import java.text.ParseException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import com.kh.realfinal.board.model.service.BoardService;
import com.kh.realfinal.board.model.vo.Board;
import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.member.model.vo.Member;
import com.kh.realfinal.opinion.api.OpinionRss;
import com.kh.realfinal.opinion.model.service.OpinionService;
import com.kh.realfinal.opinion.model.vo.Opinion;
import com.kh.realfinal.opinion.model.vo.OpinionReply;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class OpinionController {
	
	@Autowired
	private OpinionService service;
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("/opinion/insertOpinion")
	public String initOpinionData(Model model) {
		List<Opinion> list = OpinionRss.callOpinionListByXML();
		
		int result = 0;
		
		for(Opinion opnion : list) {
			result = service.saveOpinion(opnion);
		}
		
		if (result > 0) {
			model.addAttribute("msg", "오피니언 -> DB 저장 성공");
			model.addAttribute("location", "/");
		} else {
			model.addAttribute("msg", "오피니언 -> DB 저장 실패!!!!");
			model.addAttribute("location", "/");
		}
		return "/common/msg";
	}
	
	// 페이징처리
	@RequestMapping("/opinion")
	public String opinionList(Model model, @RequestParam Map<String, String> param) throws ParseException {  
		int page = 1;
		if(param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
				System.out.println("page : " + page);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		Opinion topOpinion = service.getSelectOpinionMain1();
		List<Opinion> sideList = service.getSelectOpinionMainSide();
		List<Opinion> editoria = service.getSelectEditorialist();

		String str = topOpinion.getContent();
		str = str.replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", "");
		topOpinion.setContent(str);

		for(Opinion item : sideList) {
			str = item.getContent();
			str = str.replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", "");
			item.setContent(str);
		}
		
		for(Opinion item : editoria) {
			str = item.getContent();
			str = str.replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", "");
			item.setContent(str);
		}


		PageInfo pageInfoTop = new PageInfo(page, 10, service.getOpinionCount(param), 10);
		List<Opinion> topList = service.getOpinionList(pageInfoTop, param);
		for(Opinion item : topList) {
			str = item.getContent();
			str = str.replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", "");
			item.setContent(str);
		}

		int totalSize = service.getOpinionCount(param);
		PageInfo pageInfo = new PageInfo(page, 10, totalSize, 5);
		List<Opinion> list = service.getOpinionList(pageInfo, param);
		
		for(Opinion item : list) {
			str = item.getContent();
			str = str.replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", "");
			item.setContent(str);
		}
		
		model.addAttribute("editoria", editoria);
		model.addAttribute("sideList", sideList);
		model.addAttribute("topOpinion", topOpinion);
		model.addAttribute("topList", topList);
		model.addAttribute("list", list);
		model.addAttribute("totalSize", totalSize);
		model.addAttribute("size", list.size());
		model.addAttribute("param",param);
		model.addAttribute("pageInfo",pageInfo);
		return "/news/opinion";
	} 
	
	// 오피니언 상세보기
	@RequestMapping("/opinion/opinionDetail")
	public String opinionDetail(Model model, @RequestParam Map<String, String> param) {
		int opinionNo = Integer.parseInt(param.get("opinionNo"));
		Opinion opinion = service.getOpinionOne(opinionNo);
		List<Board> sideList = boardService.getSideBoard();
		
		if(opinion.getReplies().size() != 0) {
			System.out.println(opinion.getReplies().get(0).toString());
		}
		
		model.addAttribute("opinion", opinion);
		model.addAttribute("param", param);
		model.addAttribute("sideList", sideList);
		model.addAttribute("opinionReplyList", opinion.getReplies());

		return "/news/opinionDetail";
	}
	
	// 댓글 작성
	@PostMapping("/opinion/reply")
	public String writeReply(Model model, HttpServletRequest request,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute OpinionReply reply
			) {
		log.info("오피니언 리플 작성 요청");
		
		reply.setO_reply_writer_no(loginMember.getUser_no());
		log.debug("OpinionReply : " + reply);
		int result = service.saveReply(reply);
		
		if(result > 0) {
			model.addAttribute("msg", "리플이 등록 되었습니다.");
		}else {
			model.addAttribute("msg", "리플 작성에 실패하였습니다.");
		}
		model.addAttribute("location", "/opinion/opinionDetail?opinionNo="+ reply.getOpinionNo());
		return "/common/msg";
	}
	
	// 댓글 수정
	@RequestMapping("/opinion/replyedit")
	@ResponseBody
	public Map<String,Object> editReply(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@RequestBody OpinionReply reply
			) {
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		
		log.debug("댓글 수정 요청");
		int result = service.editReply(reply);
		
		if(result > 0) {
			resultMap.put("msg", "댓글 삭제에 성공하였습니다.");
			resultMap.put("result", "success");
		}else {
			resultMap.put("msg", "댓글 삭제 실패하였습니다.");
			resultMap.put("result", "fail");
		}
		return resultMap;
	}
	
	// 댓글 삭제
	@RequestMapping("/opinion/replydel")
	@ResponseBody
	public Map<String,Object> deleteReply(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@RequestBody OpinionReply reply
			) {
		Map<String,Object> resultMap = new HashMap<String,Object>();
		
		log.debug("댓글 삭제 요청");
		int result = service.deleteReply(reply.getO_reply_no());
		
		if(result > 0) {
			resultMap.put("msg", "댓글 삭제에 성공하였습니다.");
			resultMap.put("result", "success");
		}else {
			resultMap.put("msg", "댓글 삭제 실패하였습니다.");
			resultMap.put("result", "fail");
		}
		return resultMap;
	}
}