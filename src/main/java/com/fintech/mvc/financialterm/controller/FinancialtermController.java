package com.fintech.mvc.financialterm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.financialterm.api.FinancialtermAPI;
import com.fintech.mvc.financialterm.model.service.FinancialtermService;
import com.fintech.mvc.financialterm.model.vo.Financialterm;


@Controller
public class FinancialtermController {
	
	@Autowired
	private FinancialtermService service;
	
	public void initFinancialtermData() {
		List<Financialterm> list = FinancialtermAPI.callFinancialtermByXML();
		for(Financialterm ft : list) {
			service.saveFinancialterm(ft);
		}
		System.out.println("¿Ï·á");
	} 
	
	
}
