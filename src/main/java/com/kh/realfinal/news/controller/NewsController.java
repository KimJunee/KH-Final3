package com.kh.realfinal.news.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NewsController {

	@RequestMapping("/news/main")
	String newsMain() {
		return "/news/news_main";
	}
}

