package com.kh.realfinal.news.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OpinionController {

	@RequestMapping("/news/opinion")
	String newsSearch() {
		return "/news/opinion";
	}
}
