package com.kh.realfinal.financialterm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.realfinal.financialterm.api.FinancialtermAPI;
import com.kh.realfinal.financialterm.model.service.FinancialtermService;
import com.kh.realfinal.financialterm.model.vo.Financialterm;


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
//			System.out.println(ft == null);
//			System.out.println("체크포인트1");
//			System.out.println(service.saveFinancialterm(ft));
			result = service.saveFinancialterm(ft);
//			System.out.println(result);
		}
	
		if(result > 0) {
			model.addAttribute("msg", "금융용어를 DB에 정상적으로 넣었습니다.");
			model.addAttribute("location", "/");
		}else {
			model.addAttribute("msg", "금융용어를 DB에 넣는걸 실패했습니다.");
			model.addAttribute("location", "/");
		}
		return "/common/msg";
		
	} 
	
//	public static void main(String[] args) {
//		FinancialtermController controller = new FinancialtermController();
//		controller.initFinancialtermData();
//	}
	
	
}
