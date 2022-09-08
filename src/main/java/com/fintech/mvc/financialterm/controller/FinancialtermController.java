package com.fintech.mvc.financialterm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.fintech.mvc.financialterm.api.FinancialtermAPI;
import com.fintech.mvc.financialterm.model.service.FinancialtermService;
import com.fintech.mvc.financialterm.model.service.FinancialtermServiceImpl;
import com.fintech.mvc.financialterm.model.vo.Financialterm;


@Controller
public class FinancialtermController {
	
	@Autowired
	private FinancialtermService service;
		
	
	
	public void initFinancialtermData() {
		List<Financialterm> list = FinancialtermAPI.callFinancialtermByXML();
		System.out.println(list.toString());
		for(Financialterm ft : list) {
			System.out.println(ft == null);
			System.out.println("체크포인트1");
			int result = service.saveFinancialterm(ft);
			System.out.println(result);
		}
		System.out.println("완료");
	} 
	
	public static void main(String[] args) {
		FinancialtermController controller = new FinancialtermController();
		controller.initFinancialtermData();
	}
	
	
}
