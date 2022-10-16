package com.kh.realfinal.news.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NewsSearchController {

	@RequestMapping("/news/search")
	String newsSearch() {
		return "/news/news_search";
	}
}
