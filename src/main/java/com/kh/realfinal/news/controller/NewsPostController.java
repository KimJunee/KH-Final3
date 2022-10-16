package com.kh.realfinal.news.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NewsPostController {

	@RequestMapping("/news/post")
	String newsSearch() {
		return "/news/news_post";
	}
}
