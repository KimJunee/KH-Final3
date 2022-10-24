package com.kh.realfinal.politics.model.controller;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.politics.api.CardCutRss;
import com.kh.realfinal.politics.model.service.CardCutService;
import com.kh.realfinal.politics.model.vo.CardCut;

@Controller
public class CardCutController { //
	
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
		if(list.size() != 0) {
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
	
	// 페이징 처리 카드컷
	@RequestMapping("/politics/cardCut")
	public String cardCutList(Model model, @RequestParam Map<String, String> param) throws ParseException {  
		int page = 1;
		if(param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
				System.out.println("page : " + page);
			} catch (Exception e) {}
		}
		
		
		PageInfo pageInfoTop = new PageInfo(page, 3, CardCutService.getCardCutCount(param), 3);
		List<CardCut> topList = CardCutService.getCardCutList(pageInfoTop, param);
 
		int totalSize = CardCutService.getCardCutCount(param);
		PageInfo pageInfo = new PageInfo(page, 9, totalSize, 9);
		List<CardCut> list = CardCutService.getCardCutList(pageInfo, param);
		
		
//		System.out.println(list.get(0).getImages());
//		System.out.println(list.get(0).getContent());

		
		model.addAttribute("topList", topList);
		model.addAttribute("list", list);
		model.addAttribute("totalSize", totalSize);
		model.addAttribute("size", list.size());
		model.addAttribute("param",param);
		model.addAttribute("pageInfo",pageInfo);
		return "/politics/cardCut";
	} 
	
	
	@RequestMapping("/politics/cardCutDetail")
	public String cardCutDetail(Model model, @RequestParam Map<String, String> param) {
		int cardCutNo = Integer.parseInt(param.get("cardCutNo"));
		CardCut cardCut = CardCutService.getCardCutContent(cardCutNo);
		System.out.println(cardCut);

		model.addAttribute("cardCut", cardCut);
		model.addAttribute("param", param);

		return "/politics/cardCutDetail";
	}
	
}
