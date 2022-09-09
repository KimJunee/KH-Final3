package com.kh.realfinal.financialterm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.realfinal.financialterm.api.FinancialtermAPI;
import com.kh.realfinal.financialterm.model.service.FinancialtermService;
import com.kh.realfinal.financialterm.model.vo.Financialterm;


@Controller
public class FinancialtermController {
	
	@Autowired
	private FinancialtermService service;
		
	
	@RequestMapping("/financialterm/insert.do")
	public void initFinancialtermData() {
		List<Financialterm> list = FinancialtermAPI.callFinancialtermByXML();
		System.out.println(list.toString());
		for(Financialterm ft : list) {
			System.out.println(ft == null);
			System.out.println("체크포인트1");
//			System.out.println(service.saveFinancialterm(ft));
			int result = service.saveFinancialterm(ft);
			System.out.println(result);
		}
		System.out.println("완료");
	} 
	
//	public static void main(String[] args) {
//		FinancialtermController controller = new FinancialtermController();
//		controller.initFinancialtermData();
//	}
	
	
}
