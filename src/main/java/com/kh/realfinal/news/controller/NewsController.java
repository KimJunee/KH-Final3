package com.kh.realfinal.news.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.news.api.NewsEconomyRss;
import com.kh.realfinal.news.api.NewsNationalRss;
import com.kh.realfinal.news.api.NewsPoliticsRss;
import com.kh.realfinal.news.api.OpinionRss;
import com.kh.realfinal.news.model.vo.News;
import com.kh.realfinal.news.service.NewsService;

@Controller
public class NewsController {
	
	@Autowired
	private NewsService service;

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
	
	@RequestMapping("/news/main")
	String newsMain(Model model) {
		
		//NewsService.economyStr
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
		pageInfo = new PageInfo(1, 6, service.getNewsCount(map), 8);
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
	
	@RequestMapping("/news/post")
	String newsPost(Model model, int newsNo) {
		News news = service.getNews(newsNo);
		String desc = news.getDescription().replace("<img", "<span");
		news.setDescription(desc);
		model.addAttribute("news", news);
		return "/news/news_post";
	}
	
	@RequestMapping("/news/search")
	String newsSearch(Model model, String searchKeyword) {

		Map<String, String> map = new HashMap<>();
		map.put("titleKeyword", searchKeyword);
		map.put("descriptionKeyword", searchKeyword);
		PageInfo pageInfo = new PageInfo(1, 10, service.getNewsCount(map), 10);
		List<News> list = service.getNewsList(pageInfo, map);
		
		System.out.println(searchKeyword);
		System.out.println(list);
		
		model.addAttribute("list", list);
		return "/news/news_search";
	}
}