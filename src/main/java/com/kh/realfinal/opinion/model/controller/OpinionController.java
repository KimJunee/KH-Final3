package com.kh.realfinal.opinion.model.controller;

import java.text.ParseException;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.kh.realfinal.common.util.PageInfo;
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
	
	// 페이징처리
	@RequestMapping("/opinion")
	public String opinionList(Model model, @RequestParam Map<String, String> param) throws ParseException {  
		int page = 1;
		if(param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
				System.out.println("page : " + page);
			} catch (Exception e) {}
		}
		
		PageInfo pageInfoTop = new PageInfo(page, 3, service.getOpinionCount(param), 3);
		List<Opinion> topList = service.getOpinionList(pageInfoTop, param);
 
		int totalSize = service.getOpinionCount(param);
		PageInfo pageInfo = new PageInfo(page, 9, totalSize, 9);
		List<Opinion> list = service.getOpinionList(pageInfo, param);
		
		System.out.println(list.get(0).toString());
		model.addAttribute("topList", topList);
		model.addAttribute("list", list);
		model.addAttribute("totalSize", totalSize);
		model.addAttribute("size", list.size());
		model.addAttribute("param",param);
		model.addAttribute("pageInfo",pageInfo);
		return "/news/opinion";
	} 
	
	@RequestMapping("/opinion/opinionDetail")
	public String opinionDetail(Model model, @RequestParam Map<String, String> param) {
		int opinionNo = Integer.parseInt(param.get("opinionNo"));
		Opinion opinion = service.getOpinionOne(opinionNo);
		System.out.println(opinion);

		model.addAttribute("Opinion", opinion);
		model.addAttribute("param", param);

		return "/politics/cardCutDetail";
	}
}