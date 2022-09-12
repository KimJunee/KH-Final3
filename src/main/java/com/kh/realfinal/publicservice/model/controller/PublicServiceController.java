package com.kh.realfinal.publicservice.model.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.realfinal.publicservice.api.PublicServiceAPI;
import com.kh.realfinal.publicservice.model.service.PublicServiceService;
import com.kh.realfinal.publicservice.model.vo.PublicService;

@Controller
public class PublicServiceController {
	@Autowired
	private PublicServiceService service;
	
	@RequestMapping("/publicService/insert.do")
	public String initPublicServieData(Model model) {
		List<PublicService> list = PublicServiceAPI.callPublicServiceByJSON();
		
		int result = 0;
		for(PublicService ps : list) {
			result = service.savePublicService(ps);
		}
		
		if(result > 0) {
			model.addAttribute("msg", "공공서비스 DB 저장성공");
			model.addAttribute("location", "/");
		}else {
			model.addAttribute("msg", "공공서비스 DB 저장 실패!!!!!!!");
			model.addAttribute("location", "/");
		}
		return "/common/msg";
	}

}
