package com.kh.realfinal.politics.model.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.realfinal.politics.api.LawProposedAPI;
import com.kh.realfinal.politics.model.service.LawProposedService;
import com.kh.realfinal.politics.model.vo.LawProposed;

@Controller
public class LawProposedController {
	
	@Autowired
	LawProposedService lawProposedService;

	@RequestMapping("/politics/lawProposed/insert.do")
	public String initLawProposedData(Model model) {
		
		List<LawProposed> list = new ArrayList<LawProposed>();
		for(int i = 1; i< 18; i++) {
			List<LawProposed> templist = LawProposedAPI.callLawProposedByXML(i);
			list.addAll(templist);
		}
		
		int count = 0;
		for(int i = 0; i <list.size(); i++) {
			LawProposed law = list.get(i);
			try {
				int result = lawProposedService.saveLawProposed(law);
				if(result > 0) {
					count += result; 
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		if(count > 0) {
			model.addAttribute("msg", "법안 정보 " +count +"개를 DB에 넣었습니다.");
			model.addAttribute("location", "/");
		}else {
			model.addAttribute("msg", "법안 정보를 DB에 넣지 못했습니다.");
			model.addAttribute("location", "/");
		}
		return "/common/msg";
		
	}
	
	
	
	
}
