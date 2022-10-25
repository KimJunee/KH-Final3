package com.kh.realfinal.politics.model.controller;

//import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.text.ParseException;
import java.util.ArrayList;
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
import com.kh.realfinal.politics.api.CardCutRss;
import com.kh.realfinal.politics.model.service.CardCutService;
import com.kh.realfinal.politics.model.vo.CardCut;
import com.kh.realfinal.politics.model.vo.CardCutReply;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CardCutController {
	
	@Autowired
	private BoardService boardService;
	private final int RealEstate = 1;
	
	@Autowired
	CardCutService CardCutService;

	@RequestMapping("/politics/cardCut/insert.do")
	public String initCardCutData(Model model) {
		
		List<CardCut> list = new ArrayList<CardCut>();
		for(int i = 1; i< 10; i++) {
			List<CardCut> templist = CardCutRss.callWeeklyNewsListByXML();
			list.addAll(templist);
		}
		
		int count = 0;
		if(list.size() != 0) {
		for(int i = 0; i <list.size(); i++) {
			CardCut card = list.get(i);
			try {
				int result = CardCutService.saveCardCut(card);
				if(result > 0) {
					count += result; 
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		}
		if(count > 0) {
			model.addAttribute("msg", "카드뉴스 " +count +"개를 DB에 넣었습니다.");
			model.addAttribute("location", "/");
		}else {
			model.addAttribute("msg", "카드뉴스를 DB에 넣지 못했습니다.");
			model.addAttribute("location", "/");
		}
		return "/common/msg";
		
	}
	
	// 페이징 처리 카드컷
	@RequestMapping("/politics/cardCut")
	public String cardCutList(Model model, @RequestParam Map<String, String> param) throws ParseException {  
		// 인기정치게시글
		Map<String, Object> paramBoard = new HashMap<String,Object>();
		paramBoard.put("board_list_no",RealEstate);
		List<Board> listBoard = boardService.getSideBoardForPolitics(paramBoard);
		// 인기정치게시글 끝

		int page = 1;
		if(param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
				System.out.println("page : " + page);
			} catch (Exception e) {}
		}
		
		
		PageInfo pageInfoTop = new PageInfo(page, 3, CardCutService.getCardCutCount(param), 3);
		List<CardCut> topList = CardCutService.getCardCutList(pageInfoTop, param);
 
		int totalSize = CardCutService.getCardCutCount(param);
		PageInfo pageInfo = new PageInfo(page, 9, totalSize, 9);
		List<CardCut> list = CardCutService.getCardCutList(pageInfo, param);
		
		
//		System.out.println(list.get(0).getImages());
//		System.out.println(list.get(0).getContent());

		model.addAttribute("politicsList", listBoard); // 인기정치게시글
		model.addAttribute("topList", topList);
		model.addAttribute("list", list);
		model.addAttribute("totalSize", totalSize);
		model.addAttribute("size", list.size());
		model.addAttribute("param",param);
		model.addAttribute("pageInfo",pageInfo);
		return "/politics/cardCut";
	} 
	
	
	@RequestMapping("/politics/cardCutDetail")
	public String cardCutDetail(Model model, @RequestParam Map<String, String> param,
			 @RequestParam("cardCutNo") int cardCutNo, HttpServletRequest request) {
		if(param.get("cardCutNo") != null) {
			cardCutNo = Integer.parseInt(param.get("cardCutNo"));			
		}
		
		CardCut cardCut = CardCutService.getCardCutContent(cardCutNo);

		if(cardCut == null) {
			return "redirect:error";
		}
		
		String rootPath = request.getSession().getServletContext().getRealPath("resources");
		String savePath = rootPath + "\\upload\\cardCut\\";
		 
		System.out.println(cardCut.getReplyCnt());
		System.out.println(cardCut.getReplies());
		System.out.println( cardCut.getReplies().size() );
		model.addAttribute("cardCut", cardCut);
		model.addAttribute("replyList", cardCut.getReplies());
		model.addAttribute("param", param);
		model.addAttribute("param", savePath);

		return "/politics/cardCutDetail";
	}
	
	// 댓글 작성
	@PostMapping("/cCreply")
	public String writeCcReply(Model model, HttpServletRequest request,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute CardCutReply cCreply
			) {
		log.info("리플 작성 요청");
		
		cCreply.setC_writer_no(loginMember.getUser_no());
		log.debug("cCreply : " + cCreply);
		int result = CardCutService.saveCcReply(cCreply);
		
		if(result > 0) {
			model.addAttribute("msg", "리플이 등록 되었습니다.");
		}else {
			model.addAttribute("msg", "리플 작성에 실패하였습니다.");
		}
		model.addAttribute("location", "/politics/cardCutDetail?cardCutNo="+ cCreply.getCardCutNo());
		return "/common/msg";
	}
	
	// 댓글 수정
	@RequestMapping("/cCreplyedit")
	@ResponseBody
	public Map<String,Object> editCcReply(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@RequestBody CardCutReply cCreply
			) {
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		
		log.debug("댓글 수정 요청");
		int result = CardCutService.editCcReply(cCreply);
		
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
		@RequestMapping("/cCreplydel")
		@ResponseBody
		public Map<String,Object> deleteCcReply(Model model, 
				@SessionAttribute(name = "loginMember", required = false) Member loginMember,
				@RequestBody CardCutReply cCreply
				) {
			Map<String,Object> resultMap = new HashMap<String,Object>();
			
			log.debug("댓글 삭제 요청");
			int result = CardCutService.deleteCcReply(cCreply.getCardCutNo());
			
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
