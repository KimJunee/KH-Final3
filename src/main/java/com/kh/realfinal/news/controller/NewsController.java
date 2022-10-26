package com.kh.realfinal.news.controller;

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
import com.kh.realfinal.news.api.NewsEconomyRss;
import com.kh.realfinal.news.api.NewsNationalRss;
import com.kh.realfinal.news.api.NewsPoliticsRss;
import com.kh.realfinal.news.api.OpinionRss;
import com.kh.realfinal.news.model.vo.News;
import com.kh.realfinal.news.model.vo.NewsReply;
import com.kh.realfinal.news.service.NewsService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class NewsController {
	
	@Autowired
	private NewsService service;
	
	@Autowired
	private BoardService boardService;

	// 뉴스 DB INSERT
	@RequestMapping("/news/insert.do")
	String newsInsert(Model model) {
		List<News> list = new ArrayList<News>();
		list.addAll(NewsEconomyRss.callNewsEconomyRssByXML());  
		list.addAll(NewsNationalRss.callNewsEconomyRssByXML());  
		list.addAll(NewsPoliticsRss.callNewsEconomyRssByXML());  
		list.addAll(OpinionRss.callNewsRssByXML());  
		int result = 0;
		for(News news : list) {
			result += service.saveNews(news);
		}
		
		if(result > 0) {
			model.addAttribute("msg", "뉴스 정보를 DB에 성공적으로 넣었습니다.");
			model.addAttribute("location", "/");
		}else {
			model.addAttribute("msg", "뉴스 정보를 DB에 넣지 못했습니다.");
			model.addAttribute("location", "/");
		}
		return "/common/msg";	
	}
	
	// 뉴스 메인
	@RequestMapping("/news/main")
	String newsMain(Model model) {
		
		Map<String, String> map = new HashMap<>();
		map.put("category", NewsService.economyStr);
		PageInfo pageInfo = new PageInfo(1, 10, service.getNewsCount(map), 10);
		List<News> economyList = service.getNewsList(pageInfo, map);
				
		map = new HashMap<>();
		map.put("category", NewsService.nationalStr);
		pageInfo = new PageInfo(1, 10, service.getNewsCount(map), 10);
		List<News> nationalList = service.getNewsList(pageInfo, map);
		
		
		map = new HashMap<>();
		map.put("category", NewsService.politicsStr);
		pageInfo = new PageInfo(1, 10, service.getNewsCount(map), 10);
		List<News> politicsList = service.getNewsList(pageInfo, map);
		
		map = new HashMap<>();
		map.put("category", NewsService.opinionStr);
		pageInfo = new PageInfo(1, 10, service.getNewsCount(map), 10);
		List<News> opinionList = service.getNewsList(pageInfo, map);
		
		map = new HashMap<>();
		map.put("sortForDate", "sortForDate");
		pageInfo = new PageInfo(1, 5, service.getNewsCount(map), 7);
		List<News> newList = service.getNewsList(pageInfo, map);
		
		map = new HashMap<>();
		pageInfo = new PageInfo(1, 10, service.getNewsCount(map), 4);
		List<News> hotList = service.getNewsList(pageInfo, map);
		
		System.out.println(newList);
		model.addAttribute("newList", newList);
		model.addAttribute("hotList", hotList);
		model.addAttribute("economyList", economyList);
		model.addAttribute("nationalList", nationalList);
		model.addAttribute("politicsList", politicsList);
		model.addAttribute("opinionList", opinionList);
		model.addAttribute("pageInfo", pageInfo);
		
		return "/news/news_main";
	}
	
	// 뉴스 상세보기
	@RequestMapping("/news/post")
	String newsPost(Model model, int newsNo) {
		News news = service.getNews(newsNo);
		String desc = news.getDescription().replace("<img", "<span");
		List<Board> boardList = boardService.getSideBoard();
		
		news.setDescription(desc);
		model.addAttribute("boardList", boardList);
		model.addAttribute("news", news);
		model.addAttribute("newsReplyList", news.getReplies());
		return "/news/news_post";
	}
	
	// 뉴스 검색
	@RequestMapping("/news/search")
	String newsSearch(Model model, @RequestParam Map<String, String> param, String searchKeyword) {
		int page = 1;
		if(param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {}
		}

		Map<String, String> map = new HashMap<>();
		map.put("titleKeyword", searchKeyword);
		map.put("descriptionKeyword", searchKeyword);
		int totalCount = service.getNewsCount(map);
		PageInfo pageInfo = new PageInfo(page, 10, totalCount, 10);
		List<News> list = service.getNewsList(pageInfo, map);
		
		System.out.println(searchKeyword);
		System.out.println(list);
		
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		return "/news/news_search";
	}
	
	// 댓글 작성
	@PostMapping("/news/reply")
	public String writeReply(Model model, HttpServletRequest request,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute NewsReply reply
			) {
		log.info("뉴스 리플 작성 요청");
		
		reply.setN_reply_writer_no(loginMember.getUser_no());
		log.debug("NewsReply : " + reply);
		int result = service.saveReply(reply);
		
		if(result > 0) {
			model.addAttribute("msg", "리플이 등록 되었습니다.");
		}else {
			model.addAttribute("msg", "리플 작성에 실패하였습니다.");
		}
		model.addAttribute("location", "/news/post?newsNo="+ reply.getNewsNo());
		return "/common/msg";
	}
	
	// 댓글 수정
	@RequestMapping("/news/replyedit")
	@ResponseBody
	public Map<String,Object> editReply(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@RequestBody NewsReply reply
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
	@RequestMapping("/news/replydel")
	@ResponseBody
	public Map<String,Object> deleteReply(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@RequestBody NewsReply reply
			) {
		Map<String,Object> resultMap = new HashMap<String,Object>();
		
		log.debug("댓글 삭제 요청");
		int result = service.deleteReply(reply.getN_reply_no());
		
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