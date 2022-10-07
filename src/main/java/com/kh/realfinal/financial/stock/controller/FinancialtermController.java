package com.kh.realfinal.financial.stock.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.realfinal.financial.stock.api.FinancialtermAPI;
import com.kh.realfinal.financial.stock.model.service.FinancialtermService;
import com.kh.realfinal.financial.stock.model.vo.Financialterm;


@Controller
public class FinancialtermController {
	
	@Autowired
	private FinancialtermService service;
		
	
	@RequestMapping("/financialterm/insert.do")
	public String initFinancialtermData(Model model) {
		List<Financialterm> list = FinancialtermAPI.callFinancialtermByXML();
		System.out.println(list.toString());
		int result = 0;
		for(Financialterm ft : list) {
			result = service.saveFinancialterm(ft);
		}
	
		if(result > 0) {
			model.addAttribute("msg", "금융용어를 DB에 성공적으로 넣었습니다.");
			model.addAttribute("location", "/");
		}else {
			model.addAttribute("msg", "금융용어를 DB에 넣지 못했습니다.");
			model.addAttribute("location", "/");
		}
		return "/common/msg";
		
	} 
	
//	public static void main(String[] args) {
//		FinancialtermController controller = new FinancialtermController();
//		controller.initFinancialtermData();
//	}
	
	
}
