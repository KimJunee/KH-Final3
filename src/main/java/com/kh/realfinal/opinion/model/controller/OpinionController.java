package com.kh.realfinal.opinion.model.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.realfinal.opinion.api.OpinionRss;
import com.kh.realfinal.opinion.model.service.OpinionService;
import com.kh.realfinal.opinion.model.vo.Opinion;

@Controller
public class OpinionController {
	
	@Autowired
	private OpinionService service;
	
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
	

}
