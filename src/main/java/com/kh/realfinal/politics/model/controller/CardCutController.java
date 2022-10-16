package com.kh.realfinal.politics.model.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.realfinal.politics.api.CardCutRss;
import com.kh.realfinal.politics.model.service.CardCutService;
import com.kh.realfinal.politics.model.vo.CardCut;

@Controller
public class CardCutController {
	
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
		
		if(count > 0) {
			model.addAttribute("msg", "카드뉴스 " +count +"개를 DB에 넣었습니다.");
			model.addAttribute("location", "/");
		}else {
			model.addAttribute("msg", "카드뉴스를 DB에 넣지 못했습니다.");
			model.addAttribute("location", "/");
		}
		return "/common/msg";
		
	}
	
	@RequestMapping("/politics/cardCut")
	public String cardCutMain(Model model) {
		return "/politics/cardCut";
	}
	
	
	@RequestMapping("/politics/cardCut/detail")
	public String cardCutDetail(Model model) {
		return "/politics/cardCutDetail";
	}
	
}
